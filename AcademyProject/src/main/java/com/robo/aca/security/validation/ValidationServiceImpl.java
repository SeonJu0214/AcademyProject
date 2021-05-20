package com.robo.aca.security.validation;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.validation.FieldError;

@Service
public class ValidationServiceImpl implements ValidationService {
	// 유효성 체크 ( validation )
    public Map<String, String> validateHandling(Errors errors) {
        Map<String, String> validatorResult = new HashMap<String, String>();

        for (FieldError error : errors.getFieldErrors()) {
            String validKeyName = String.format("valid_%s", error.getField());
            validatorResult.put(validKeyName, error.getDefaultMessage());
        }
        return validatorResult;
    }
}