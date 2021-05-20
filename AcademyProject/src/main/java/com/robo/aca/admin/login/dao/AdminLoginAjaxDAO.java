package com.robo.aca.admin.login.dao;

import com.robo.aca.admin.login.model.AdminLoginDTO;

public interface AdminLoginAjaxDAO {
	// 관리자 ID / 비밀번호 조회 ( INDEX PAGE )
	public AdminLoginDTO adminInforLookup();
}