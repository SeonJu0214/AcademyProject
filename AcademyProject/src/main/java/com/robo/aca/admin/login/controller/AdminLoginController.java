package com.robo.aca.admin.login.controller;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.robo.aca.admin.login.model.AdminLoginDTO;
import com.robo.aca.admin.login.service.AdminLoginService;

@Controller
public class AdminLoginController {
	@Inject
	AdminLoginService adminLoginService;
	
	private static final Logger logger = LoggerFactory.getLogger(AdminLoginController.class);
	
	@PostMapping(value = "/admin/adminLogin")
	public String adminLogin(@ModelAttribute("adminLoginDTO") AdminLoginDTO adminLoginDTO, HttpSession session) {		
		Map<String, Object> login = new HashMap<String, Object>();
		login.put("admin_id", adminLoginDTO.getAdmin_id());
		login.put("admin_pwd", adminLoginDTO.getAdmin_pwd());
		
		String admin_id = adminLoginService.adminLogin(login);
		
		if(admin_id == null) {
			logger.info("로그인 실패!! >>");
			
			return "redirect:/index";
		} else {
			logger.info("로그인 완료 >>");
			
			// 세션 부여
			session.setAttribute("admin_id", admin_id);
			return "main_board";
		}
	}
}