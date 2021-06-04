package com.robo.aca.admin.login.controller;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.robo.aca.admin.login.model.AdminLoginDTO;
import com.robo.aca.admin.login.service.AdminLoginService;

@Controller
@SessionAttributes("admin_id")
public class AdminLoginController {
	@Inject
	AdminLoginService adminLoginService;
	
	private static final Logger logger = LoggerFactory.getLogger(AdminLoginController.class);
	
	@PostMapping(value = "/admin/adminLogin")
	public String adminLogin(@ModelAttribute("adminLoginDTO") @Valid AdminLoginDTO adminLoginDTO,
			Errors errors, Model model, HttpSession session) throws Exception {	
		// 유효성 체크 ( validation )
		if(errors.hasErrors()) {
			logger.info("로그인 실패 (유효성 검사 :: 에러 발생)");

			model.addAttribute("adminLoginDTO", adminLoginDTO);
			
			// 유효성 통과 못한 필드와 메시지를 핸들링
			Map<String, String> validatorResult = adminLoginService.validateHandling(errors);
			for (String key : validatorResult.keySet()) {
                model.addAttribute(key, validatorResult.get(key));
            }
		return "index";
		} else {
			Map<String, Object> login = new HashMap<String, Object>();
			login.put("admin_id", adminLoginDTO.getAdmin_id());
			login.put("admin_pwd", adminLoginDTO.getAdmin_pwd());
			
			String admin_id = adminLoginService.adminLogin(login);
			
			if(admin_id == null) {
				logger.info("로그인 실패!! >>");
				
				 model.addAttribute("message", "가입하지 않은 아이디이거나, 잘못된 비밀번호입니다.");
				
				return "index";
			} else {
				logger.info("로그인 완료 >>");
				
				// 세션 부여
				session.setAttribute("admin_id", admin_id);
				return "main_board";
			}
		}
	}
	
	// 로그아웃 처리
	@GetMapping("/admin/adminLogout")
	public String adminLogout(HttpSession session) {
		adminLoginService.adminLogout(session);
		logger.info("로그아웃 처리 완료.");
		
		return "redirect:/index";
	}
}