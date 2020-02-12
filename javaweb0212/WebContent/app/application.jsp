<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application 객체</title>
</head>
<body>
	<%
		//초기화 파라미터 읽기
		String url = application.getInitParameter("dburl");
		out.println("<h3>초기화 파라미터 url:" + url + "</h3>");
		//프로젝트 내의 경로의 절대 경로를 확인
		//파일을 업로드 할 때나 특정 디렉토리에 파일을 생성할 대는 절대 경로가 필요
		//현재 프로젝트가 실행되고 있는 디렉토리를 확인하고자 할 때 사용해도 됩니다.
		String path = application.getRealPath("/app");
		out.println("<h3>app의 절대경로:" + path + "</h3>");
	%>
</body>
</html>