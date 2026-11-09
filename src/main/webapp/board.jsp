<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글쓰기</title>
</head>
<body>
	<%
		//로그인 여부를 확인 -> 로그인한 유저의 아이디 추출
		//다운캐스팅->getAttribute 가 반환하는 값의 타입이 Object 이므로 형변환해야함
		String loginId = (String) session.getAttribute("sessionId"); //세션에서 세션아이디값 가져오기
		
		//loginId 값이 null이면 로그인안 한 상태
		if(loginId == null) { //참->로그인하지 않은 상태로 이 페이지를 방문
			System.out.println("로그인하지 않은 유저는 글쓰기 불가!");
			//자바에서 자바스크립트 경고창 띄우기
			out.println("<script>");
			out.println("alert('로그인이 필요한 서비스입니다.');");
			//경고창의 확인을 클릭하면 login.jsp로 이동
			out.println("location.href='login.jsp';");
			out.println("</script>");
			//response.sendRedirect("login.jsp");
		}
	
	%>
	<h2>게시판 글쓰기</h2>
	<hr>
	<h3><%= loginId %>님 글쓰기가 가능합니다!</h3>
</body>
</html>