<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<%@include file="include/head.jsp"%>
<title>INDEX</title>
</head>
<body>
	<c:if test="${login_infor == null}">
		<%@include file="login/admin_login.jsp"%>
	</c:if>
	
	<c:if test="${login_infor != null}">
		<%@include file="main_board.jsp"%>
	</c:if>
</body>
</html>