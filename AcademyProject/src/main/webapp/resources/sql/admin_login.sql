-- admin_login table ( 관리자 로그인 정보 테이블 )

CREATE TABLE `admin_login` (
  `admin_id` varchar(30) NOT NULL,		-- 관리자 ID ( PK )
  `admin_pwd` varchar(150) NOT NULL,	-- 관리자 비밀번호
  `admin_auth` int NOT NULL,			-- 관리자 권한 여부
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;