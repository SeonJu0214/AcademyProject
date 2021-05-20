package com.robo.aca.admin.login.service;

import java.util.Map;

public interface AdminLoginService {
	// 관리자 로그인 처리 ( INDEX PAGE )
	public String adminLogin(Map<String, Object> login) throws Exception;
}