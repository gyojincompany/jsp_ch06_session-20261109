<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그 아웃</title>
</head>
<body>
	<%
		//session.removeAttribute("sessionId"); //세션에 저장된 id값이 삭제->로그아웃->id값만 골라서 지우기
		session.invalidate(); //모든 세션 정보 삭제->로그아웃
	%>
	
	<a href="board.jsp">게시판 글쓰기</a>
</body>
</html>