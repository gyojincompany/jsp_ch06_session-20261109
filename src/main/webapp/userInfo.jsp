<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 페이지</title>
</head>
<body>
	<%	
		//세션에 저장된 로그인한 유저의 아이디 가져오기
		String sid = (String) session.getAttribute("sessionId");
	
		if(sid != null) { //로그인 여부 확인->참이면 로그인한 상태
	%>
			<h1><%= sid %>님은 로그인 상태입니다.</h1>
	<%	
		} else {
	%>
			<h1>로그인 하지 않은 상태입니다.</h1>
			<h1>로그인 화면으로 이동하세요.</h1>
			<a href="login.jsp">로그인으로 바로가기</a>
	<%
		}
	%>	
</body>
</html>