<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script> -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.Form input{
		width : 1200px;
	}
</style>
<!-- <script type="text/javascript">

$(function() {
	$("#updateSubmit").click(function(){
		const form = $("#updateForm");
		form.submit();
	});
});

</script> -->
</head>
<body>
<h1>수정하기</h1>
	<div>
		<form method="POST" action="/update">
			<div>
				<div class="Form">
				<label>순번</label> <input type="text" name="SUM_NO" value="${selectItem.SUM_NO }" readonly>
				<br>
					<label>연도</label> <input type="text" name="SUM_YEAR" value="${selectItem.SUM_YEAR }" autofocus>
					<br>
					<label>왕 이름</label> <input type="text" name="KING" value="${selectItem.KING }" >
				<br>
					<label>제목</label> <input type="text" name="SUM_TITLE" value="${selectItem.SUM_TITLE }">
				<br>
					<label>내용</label> <input type="text" name="SUM_CONTENT" value="${selectItem.SUM_CONTENT }">
				<br>
					<label>주요인물</label> <input type="text" name="SUM_PERSON" value="${selectItem.SUM_PERSON }">
				<br>
					<label>결과</label> <input type="text" name="SUM_RESULT" value="${selectItem.SUM_RESULT }">
				</div>
				<div style="padding-left:200px;">
					<input type="submit" value="수정" style="width:900px;">
				</div>
			</div>
		</form>
	
	</div>
</body>
</html>