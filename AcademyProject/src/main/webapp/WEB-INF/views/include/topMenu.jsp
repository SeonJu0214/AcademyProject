<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<%@include file="head.jsp"%>
<title>TOP MENU</title>
<style type="text/css">
.header {
	overflow: hidden;
	background-color: white;
	height: 50px;
}

.header a {
	font-size: 15px;
	margin-top: 14px;
	color: black;
	text-decoration: none;
}

.academy-name {
	margin-left: 30px;
	float: left;
}

.logout {
	margin-left: 20px;
	margin-right: 30px;
	float: right;
}

.admin-id-infor {
	float: right;
}

#navbar {
	overflow: hidden;
	background-color: #333;
}

#navbar a {
	float: left;
	display: block;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 30px;
	text-decoration: none;
	font-size: 17px;
}

#navbar a.active {
	background-color: #04AA6D;
	color: white;
}
</style>
</head>
<body>
	<!-- 상단 학원 정보 및 회원 정보, 로그아웃 메뉴 출력 -->
	<div class="header">
		<a class="academy-name">학원 이름</a>
		<a class="logout" href="${root}admin/adminLogout">LOGOUT</a>
		<a class="admin-id-infor">${admin_id}님 환영합니다  ٩(*•̀ᴗ•́*)و</a>
	</div>

	<!-- Main Menu 출력 -->
	<div id="navbar">
		<a href="${root}schedule/main_board">HOME</a>
		<a>원생 관리</a>
		<a>강좌 관리</a>
		<a>상담 관리</a>
		<a>수납 관리</a>
		<a>교재/교재처 관리</a>
		<a>도서 관리</a>
		<a>출결 관리</a>
		<a>수업 시간표</a>
		<a>직원 관리</a>
		<a>홈페이지 관리</a>
	</div>
</body>
</html>