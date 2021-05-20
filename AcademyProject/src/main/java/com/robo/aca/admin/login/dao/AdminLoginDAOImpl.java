package com.robo.aca.admin.login.dao;

import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class AdminLoginDAOImpl implements AdminLoginDAO {
	@Inject
	SqlSession sqlSession;
	
	private static final String NAMESPACE = "com.robo.aca.admin.adminLoginMapper";

	// 관리자 로그인 처리 ( INDEX PAGE )
	@Override
	public String adminLogin(Map<String, Object> login) {
		return sqlSession.selectOne(NAMESPACE + ".adminLogin", login);
	}
}