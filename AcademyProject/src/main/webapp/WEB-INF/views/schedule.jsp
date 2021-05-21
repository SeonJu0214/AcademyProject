<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>SCHEDULE</title>
<style type="text/css">
.list-group a {
	height: 50px;
}

th {
	height: 60px;
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
					<tr>
						<th class="align-middle"><a style="background-color: yellow;">
							&nbsp;&nbsp;&nbsp;&nbsp;</a>&nbsp;온라인
						</th>
						<th class="align-middle"><a style="background-color: green;">
							&nbsp;&nbsp;&nbsp;&nbsp;</a>&nbsp;오프라인
						</th>
						<th colspan="3" class="align-middle">수업 시간표</th>
						<th colspan="2" class="align-middle"></th>
					</tr>
					<tr>
						<td colspan="7"></td>
					</tr>
					<tr style="background-color: #F7F7F7;">
						<th class="align-middle">월요일</th>
						<th class="align-middle">화요일</th>
						<th class="align-middle">수요일</th>
						<th class="align-middle">목요일</th>
						<th class="align-middle">금요일</th>
						<th class="align-middle">토요일</th>
						<th class="align-middle">일요일</th>
					</tr>
					<tr>
						<td>
							<div class="list-group" style="margin-bottom: 20px;">
								<a href="#" class="list-group-item list-group-item-action">강좌명</a>
								<a href="#" class="list-group-item list-group-item-action">강의 장소</a>
								<a href="#" class="list-group-item list-group-item-action">강의 시간</a>
								<a href="#" class="list-group-item list-group-item-action">강사 이름</a>
								<a href="#" class="list-group-item list-group-item-action">강사 번호</a>
								<a href="#" class="list-group-item list-group-item-action">수강 인원</a>
							</div>
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