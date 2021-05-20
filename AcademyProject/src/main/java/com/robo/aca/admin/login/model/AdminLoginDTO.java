package com.robo.aca.admin.login.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AdminLoginDTO {
	// [ 관리자 ID ( PK ) ]
	private String admin_id;
	
	// [ 관리자 비밀번호 ]
	private String admin_pwd;
	
	// [ 관리자 권한 여부 : 0이면 권한 없음, 1이면 권한 있음 ]
	private int admin_auth;
}