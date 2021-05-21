<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>SCHEDULE</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-12" style="margin-top: 20px;">
				<div class="card">
					<div class="card-body">
						<table class="table table-bordered">
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
								<th>월요일</th>
								<th>화요일</th>
								<th>수요일</th>
								<th>목요일</th>
								<th>금요일</th>
								<th>토요일</th>
								<th>일요일</th>
							</tr>
							<tr>
								<td>John</td>
								<td>Doe</td>
								<td>john@example.com</td>
								<td>John</td>
								<td>Doe</td>
								<td>john@example.com</td>
								<td>john@example.com</td>
							</tr>
							<tr>
								<td>John</td>
								<td>Doe</td>
								<td>john@example.com</td>
								<td>John</td>
								<td>Doe</td>
								<td>john@example.com</td>
								<td>john@example.com</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>