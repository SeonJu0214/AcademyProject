package com.robo.aca.admin.login.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.robo.aca.admin.login.model.AdminLoginDTO;
import com.robo.aca.admin.login.service.AdminLoginAjaxService;

@Controller
public class AdminLoginAjaxController {
	@Inject
	AdminLoginAjaxService adminLoginAjaxService;
	
	// 관리자 ID / 비밀번호 조회 ( INDEX PAGE )
	@ResponseBody
	@RequestMapping(value = "/admin/adminInforLookup", method = RequestMethod.POST)
	public AdminLoginDTO adminInforLookup() {
		AdminLoginDTO adminLoginDTO = adminLoginAjaxService.adminInforLookup();
		
		return adminLoginDTO;
	}
}