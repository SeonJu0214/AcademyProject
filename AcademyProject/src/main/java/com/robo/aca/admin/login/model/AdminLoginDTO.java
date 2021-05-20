package com.robo.aca.admin.login.model;

import javax.validation.constraints.NotBlank;

import org.springframework.validation.annotation.Validated;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Validated
public class AdminLoginDTO {
	// [ 관리자 ID ( PK ) ]
	@NotBlank(message = "아이디를 입력해주세요.")
	private String admin_id;
	
	// [ 관리자 비밀번호 ]
	@NotBlank(message = "비밀번호를 입력해주세요.")
	private String admin_pwd;
	
	// [ 관리자 권한 여부 : 0이면 권한 없음, 1이면 권한 있음 ]
	private int admin_auth;
}