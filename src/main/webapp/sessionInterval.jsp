<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 유효 시간</title>
</head>
<body>
	<%
		int s_time = session.getMaxInactiveInterval(); 
		//현재 세션의 유효시간을 가져오기(초 단위)->기본값 : 30분(1800초)
		System.out.println(s_time);
		session.setMaxInactiveInterval(60*10); //초단위
		//세션의 유효시간을 기본값 30분에서 다른 값으로 변경->10분으로 변경
		s_time = session.getMaxInactiveInterval();
		System.out.println(s_time);
	%>
</body>
</html>