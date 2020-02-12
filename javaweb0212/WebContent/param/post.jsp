<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터 처리</title>
</head>
<body>
	<%
		//파라미터 인코딩 설정
		request.setCharacterEncoding("utf-8");
	
		String pw = request.getParameter("pw");
		String words = request.getParameter("words");
	%>
	<p>비밀번호:<%=pw %></p>
	<p>하고싶은 이야기:<%=words %></p>


</body>
</html>