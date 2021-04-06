<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한국사 정리</title>

<style>
	.Form input{
		width : 1200px;
	}
	
	body * {
		font-size : 12px;
	}
</style>



</head>
<body>

<div style="margin-top:4em; margin-bottom:4em;">
		<form method="POST" action="/add">
			<div>
				<div class="Form">
					<label>연도</label> <input type="text" name="SUM_YEAR" autofocus>
				<br>
					<label>왕 이름</label> <input type="text" name="KING">
				<br>
					<label>제목</label> <input type="text" name="SUM_TITLE">
				<br>
					<label>내용</label> <input type="text" name="SUM_CONTENT">
				<br>
					<label>주요인물</label> <input type="text" name="SUM_PERSON">
				<br>
					<label>결과</label> <input type="text" name="SUM_RESULT">
				</div>
				<div style="padding-left:200px;">
					<input type="submit" value="등록" style="width:900px;">
				</div>
			</div>
		</form>
	</div>

	<table border="1" class="table table-lg table-hover" id="list"
		style="text-align: center; margin-bottom:5em;">
		<thead>
			<tr>
				<th>연도</th>
				<th>왕 이름</th>
				<th>제목</th>
				<th>주요인물</th>
				<th>내용</th>
				<th>결과</th>
				<th>관리</th>
			</tr>
		</thead>
		<tbody>

			<c:if test="${list.size() < 1}">
				<tr>
					<td colspan="7">등록 된 내용이 없습니다.</td>
				</tr>
			</c:if>

			<c:forEach var="item" items="${list }">
				<tr>
					<td style="display:none">${item.SUM_NO }</td>
					<td>${item.SUM_YEAR }</td>
					<td>${item.KING }</td>
					<td>${item.SUM_TITLE }</td>
					<td>${item.SUM_PERSON }</td>
					<td>${item.SUM_CONTENT }</td>
					<td>${item.SUM_RESULT }</td>
					<td><a href="${item.SUM_NO }/delete"
						class="btn btn-danger btn-sm">삭제</a> <a
						href="${item.SUM_NO }/selectItem" class="btn btn-warning btn-sm">변경</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	



	
</body>
</html>