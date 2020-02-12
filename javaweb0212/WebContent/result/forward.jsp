<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//요청 페이지에서 전달한 파라미터 읽기
		String first = request.getParameter("first");
		String second = request.getParameter("second");
		
		int s1 = 0;
		int s2 = 0;
		try{
			s1 = Integer.parseInt(first);
			s2 = Integer.parseInt(second);
		}catch(Exception e){}
		
		int result = s1 + s2;
		
		//포워딩을 하는 경우 데이터 저장
		request.setAttribute("result", result);
		
		//포워딩 하기
		RequestDispatcher dispatcher = request.getRequestDispatcher("forwardresult.jsp");
		dispatcher.forward(request, response);
	%>
	
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