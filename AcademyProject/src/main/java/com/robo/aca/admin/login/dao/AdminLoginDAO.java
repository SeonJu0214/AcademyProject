package com.robo.aca.admin.login.dao;

import java.util.Map;

public interface AdminLoginDAO {
	// 관리자 로그인 처리 ( INDEX PAGE )
	public String adminLogin(Map<String, Object> login);
}