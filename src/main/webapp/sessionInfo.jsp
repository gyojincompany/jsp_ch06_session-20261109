<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션의 모든 정보</title>
</head>
<body>	
	<h2>세션의 모든 정보 확인</h2>
	<hr>
	<%
		Enumeration<String> sessionAllInfo = session.getAttributeNames(); //세션의 모든 정보 불러오기
		
		while(sessionAllInfo.hasMoreElements()) {
			//세션의 이름 추출
			String sessionName = sessionAllInfo.nextElement().toString();
			//세션의 값 추출
			String sessionValue = session.getAttribute(sessionName).toString();
			//String sessionValue = (String)session.getAttribute(sessionName);
			
			System.out.println("session의 이름 : " + sessionName);
			System.out.println("session의 값 : " + sessionValue);
		}
		
		String jsessionid = session.getId();//jsessionid 값을 가져오기
		System.out.println("jsessionId의 값 : " + jsessionid);
	
	%>
</body>
</html>