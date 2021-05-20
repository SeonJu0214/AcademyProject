package com.robo.aca.admin.login.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.robo.aca.admin.login.model.AdminLoginDTO;

@Repository
public class AdminLoginAjaxDAOImpl implements AdminLoginAjaxDAO {
	@Inject
	SqlSession sqlSession;
	
	private static final String NAMESPACE = "com.robo.aca.admin.adminLoginAjaxMapper";

	// 관리자 ID / 비밀번호 조회 ( INDEX PAGE )
	@Override
	public AdminLoginDTO adminInforLookup() {
		return sqlSession.selectOne(NAMESPACE + ".adminInforLookup");
	}
}