<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 로그인</title>
</head>
<body>
	<h1>회원 로그인</h1>
	<hr>
	<form action="loginok.jsp">
		아이디 : <input type="text" name="mid"><br><br>
		비밀번호 : <input type="password" name="mpw"><br><br>
		<input type="submit" value="로그인">
	</form>
	<hr>
	<a href="board.jsp">게시판 글쓰기 바로가기</a><br><br>
	<a href="userInfo.jsp">회원 정보 바로가기</a><br><br>
</body>
</html>