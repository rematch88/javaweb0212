<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forwarding과 Redirect의 차이</title>
</head>
<body>
	<h3>결과 페이지로 포워딩</h3>
	<form action="forward.jsp">
		수1:<input type="text" size="10" name="first"/><br/>
		수2:<input type="text" size="10" name="second"/><br/>
		<input type="submit" value="더하기" />
	</form>
	
	<h3>결과 페이지로 리다이렉트</h3>
		<form action="redirect.jsp">
		수1:<input type="text" size="10" name="first"/><br/>
		수2:<input type="text" size="10" name="second"/><br/>
		<input type="submit" value="더하기" />
	</form>
	
	<%@ page import = "java.io.*, java.sql.*" %>
	<%
		//오늘 날자를 문자열로 생성
		long d = System.currentTimeMillis();
		//java.sql.Date는 날짜만 저장하고 toString을 호출하면 날짜만 문자열로 리턴합니다.
		Date today = new Date(d);
		String filename = today.toString();
			
	
		//파일에 기록할 수 있는 객체를 생성
		//파일이 없으면 생성하고 있으면 뒤에 이어붙이도록 생성
		PrintWriter pw = new PrintWriter(
				new FileOutputStream("C:\\Users\\admin\\Documents\\"+filename+".long", true));
		//접속한 IP 주소 가져오기
		String ip = request.getRemoteAddr();
		//요청한 URL 가져오기
		String requestURI = request.getRequestURI();
		//루트 경로
		String contextPath = request.getContextPath();
		//전체 요정 경로에서 루트 경로 가져오기
		String url = requestURI.substring(contextPath.length() + 1);
		
		//파일에 기록
		pw.println(ip + "-" + url);
		pw.flush();
		
		pw.close();	
	%>
	
</body>
</html>