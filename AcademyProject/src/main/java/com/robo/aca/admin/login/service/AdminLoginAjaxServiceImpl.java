package com.robo.aca.admin.login.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.robo.aca.admin.login.dao.AdminLoginAjaxDAO;
import com.robo.aca.admin.login.model.AdminLoginDTO;

@Service
public class AdminLoginAjaxServiceImpl implements AdminLoginAjaxService {
	@Inject
	AdminLoginAjaxDAO adminLoginAjaxDAO;
	
	// 관리자 ID / 비밀번호 조회 ( INDEX PAGE )
	@Override
	public AdminLoginDTO adminInforLookup() {
		return adminLoginAjaxDAO.adminInforLookup();
	}
}