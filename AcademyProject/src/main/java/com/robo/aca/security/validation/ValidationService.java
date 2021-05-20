package com.robo.aca.security.validation;

import java.util.Map;

import org.springframework.validation.Errors;

public interface ValidationService {
	// 유효성 체크 ( validation )
	public Map<String, String> validateHandling(Errors errors);
}