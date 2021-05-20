<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<%@include file="../include/head.jsp"%>
<title>INDEX</title>
<style type="text/css">
body, html {
	height: 100%;
	margin: 0;
}

.background-image {
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

.rogo-image {
	width: 250px;
	height: 250px;
	margin-top: 50px;
	margin-bottom: 50px;
}

.academy-name {
	margin-bottom: 20px;
	height: 30px;
}

.stripe {
	border: 0.1px solid #ABABAB;
	width: 0.1px;
	height: 450px;
	margin: auto;
}

.login {
	margin-top: 50px;
	margin-bottom: 50px;
	margin-right: 15px;
	height: 250px;
}

.login-title-infor-tag {
	margin-top: 5px;
}

.login-input {
	margin-left: 20px;
	margin-right: 20px;
}

.login-button button {
	margin-top: 5px;
	width: 100%;
}

.forget-infor-tag {
	margin-bottom: 20px;
	height: 30px;
	text-align: left;
	margin-left: 20px;
}

.forget-infor-tag a {
	color: #808080;
	text-decoration: none;
}

.forget-infor-msg {
	text-align: left;
	margin-left: 20px;
}
</style>
</head>
<body>
	<!-- 배경 이미지 -->
	<div class="background-image"></div>

	<!-- 가운데 텍스트 상자 -->
	<div class="center-text-box">
		<!-- 텍스트 상자 구간 나누기 -->
		<div class="container-fluid">
			<div class="row">
			<!-- 구간 1) 로고 이미지 및 학원 이름 ( 4칸 ) -->
			<div class="col-sm-4">
				<div class="text-center">
					<img class="rogo-image" alt="rogo"
						src="<spring:url value='/resources/img/settings.png'/>">
					<br>
					<h4 class="academy-name">학원 이름</h4>
				</div>
			</div>
			<!-- 구간 1) END -->

			<!-- 구간 2) 구분선 ( 1칸 ) -->
			<div class="col-sm-1">
				<div class="stripe"></div>
			</div>
			<!-- 구간 2) END -->

			<!-- 구간 3) 로그인 입력창 및 조회 ( 7칸 ) -->
			<div class="col-sm-7">
				<div class="login">
					<h4>학원 관리 프로그램</h4>
					<p class="login-title-infor-tag">✧ 학생 및 직원 관리 솔루션 ✧</p>
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
						<div class="login-button">
						<button type="submit" class="btn btn-outline-secondary"
							id="loginButton">LOGIN</button>
						</div>
						<div class="common-msg" id="loginCheckMsg"></div>
					</div>
				</div>
				<p class="forget-infor-tag" id="forgetInforTag">
					<a href="javascript:void(0);"> 🔑 아이디 / 비밀번호를 잊으셨나요?</a>
				</p>
				<div class="forget-infor-msg" id="forgetInforMsg"></div>
			</div>
			<!-- 구간 3) END -->
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
		$(document).ready(function(){
			$("#loginButton").click(function(){
				location.href = '${root}board/main_board';
			});
		});
	</script>
</body>
</html>