package com.robo.aca.admin.login.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.validation.Errors;

public interface AdminLoginService {
	// 관리자 로그인 처리 ( INDEX PAGE )
	public String adminLogin(Map<String, Object> login) throws Exception;
	
	public Map<String, String> validateHandling(Errors errors);
	
	// 관리자 로그아웃 처리 ( TOP MENU )
	public void adminLogout(HttpSession session);
}