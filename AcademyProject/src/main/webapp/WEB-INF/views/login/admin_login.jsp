<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<%@include file="../include/head.jsp"%>
<title>INDEX</title>
<style type="text/css">
body, html {
	height: 100%;
	margin: 0;
}

.back-img {
	background-image:
		url("<spring:url value='/resources/img/back_img.jpg'/>");
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	height: 100%;
	filter: blur(8px);
	-webkit-filter: blur(8px);
}

.center-text-box {
	width: 1000px;
	height: 450px;
	left: 50%;
	top: 50%;
	position: absolute;
	text-align: center;
	transform: translate(-50%, -50%);
}

.center-text-box::after {
	width: 100%;
	height: 100%;
	content: "";
	background-color: white;
	position: absolute;
	top: 0;
	left: 0;
	z-index: -1;
	opacity: 0.8;
	border-radius: 10px;
}

.text-box-img {
	width: 250px;
	height: 250px;
	margin-top: 50px;
	margin-bottom: 50px;
}

.text-box-academy-name {
	margin-bottom: 20px;
	height: 30px;
}

.stripe {
	border: 0.1px solid #ABABAB;
	width: 0.1px;
	height: 450px;
	margin: auto;
}

.login-box {
	margin-top: 50px;
	margin-bottom: 50px;
	margin-right: 15px;
	height: 250px;
}

.infor-tag {
	margin-top: 5px;
}

.login-input {
	margin-left: 20px;
	margin-right: 20px;
}

#login-btn {
	margin-top: 5px;
	width: 100%;
}

#forgetInforTag {
	margin-bottom: 20px;
	height: 30px;
	text-align: left;
	margin-left: 20px;
}

#forgetInforTag a {
	color: #808080;
	text-decoration: none;
}

#forgetInforMsg {
	text-align: left;
	margin-left: 20px;
}
</style>
</head>
<body>
	<!-- 배경 이미지 -->
	<div class="back-img"></div>

	<!-- 가운데 텍스트 상자 -->
	<div class="center-text-box">
		<div class="container-fluid">
			<div class="row">
			<div class="col-sm-4">
				<div class="text-center">
					<img alt="rogo" class="text-box-img"
						src="<spring:url value='/resources/img/settings.png'/>"> <br>
					<h4 class="text-box-academy-name">학원 이름</h4>
				</div>
			</div>

			<div class="col-sm-1">
				<div class="stripe"></div>
			</div>

			<div class="col-sm-7">
				<div class="login-box">
					<h4>학원 관리 프로그램</h4>
					<p class="infor-tag">✧ 학생 및 직원 관리 솔루션 ✧</p>
					<br>
					<div class="login-input">
						<div class="form-group">
							<!-- ID -->
							<input type="text" class="form-control" id="admin_id"
								placeholder="관리자 아이디" name="admin_id" autocomplete="off">
						</div>
						<div class="form-group">
							<!-- 비밀번호 -->
							<input type="password" class="form-control" id="admin_pwd"
								placeholder="관리자 비밀번호" name="admin_pwd" autocomplete="off"
								onkeyup="enterkey();">
						</div>
						<!-- 로그인 입력 창 END -->

						<!-- 로그인 버튼 -->
						<button type="submit" class="btn btn-outline-secondary"
							id="login-btn">LOGIN</button>
						<div id="loginCheckMsg" class="msg"></div>
					</div>
				</div>
				<p id="forgetInforTag">
					<a href="javascript:void(0);"> 🔑 아이디 / 비밀번호를 잊으셨나요?</a>
				</p>
				<div id="forgetInforMsg"></div>
			</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
		$(document).ready(function(){
			$("#login-btn").click(function(){
				location.href = '${root}board/main_board';
			});
		});
	</script>
</body>
</html>