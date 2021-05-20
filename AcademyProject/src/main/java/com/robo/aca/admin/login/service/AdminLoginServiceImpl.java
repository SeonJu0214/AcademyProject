package com.robo.aca.admin.login.service;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.validation.FieldError;

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
	
	public Map<String, String> validateHandling(Errors errors) {
        Map<String, String> validatorResult = new HashMap<String, String>();

        for (FieldError error : errors.getFieldErrors()) {
            String validKeyName = String.format("valid_%s", error.getField());
            validatorResult.put(validKeyName, error.getDefaultMessage());
        }
        return validatorResult;
    }
}