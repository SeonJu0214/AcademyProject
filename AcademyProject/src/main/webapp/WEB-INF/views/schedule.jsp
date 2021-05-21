<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>SCHEDULE</title>
<style type="text/css">
#scheduleTable td {
	width: 40px;
}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-12" style="margin-top: 20px;">
				<table class="table table-bordered" style="text-align: center;">
					<colgroup>
						<%
							for (int i = 0; i <= 7; i++) {
						%>
						<col style="width: 14%">
						<%
							}
						%>
					</colgroup>
					<tr style="background-color: #F7F7F7;">
						<th>월요일</th>
						<th>화요일</th>
						<th>수요일</th>
						<th>목요일</th>
						<th>금요일</th>
						<th>토요일</th>
						<th>일요일</th>
					</tr>
					<tr>
						<td>
							<table class="table table-hover" style="text-align: center;"
								id="scheduleTable">
								<colgroup>
									<col style="width: 50%">
									<col style="width: 50%">
								</colgroup>
								<tr style="background-color: yellow;">
									<th colspan="2">강좌명
									</th>
								</tr>
								<tr>
									<td colspan="2">강의 장소</td>
								</tr>
								<tr>
									<td colspan="2">강의 시간</td>
								</tr>
								<tr>
									<td colspan="2">강사 이름</td>
								</tr>
								<tr>
									<td colspan="2">강사 번호</td>
								</tr>
								<tr>
									<td colspan="2">수강 인원</td>
								</tr>
							</table>
						</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>