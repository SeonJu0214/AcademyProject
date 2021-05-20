package com.robo.aca.admin.login.service;

import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.robo.aca.admin.login.dao.AdminLoginDAO;

@Service
public class AdminLoginServiceImpl implements AdminLoginService {
	@Inject
	AdminLoginDAO adminLoginDAO;

	// 관리자 로그인 처리 ( INDEX PAGE )
	@Override
	public String adminLogin(Map<String, Object> login) throws Exception{
		return adminLoginDAO.adminLogin(login);
	}
}