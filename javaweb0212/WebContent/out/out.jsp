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
		out.println("<h2>out을 이용한 출력</h2>");
		out.println("<p>나이<select name='age'>");
		
		for(int i=1; i<100; i=i+1){
			out.println("<option value=" + i + ">" + i +"</option>");
		}
		
		out.println("</select></p>");
	%>
	
	<div id="disp"></div>
	<script>
		//스크립트는 소스보기를 하면 코드 확인 가능 - 보안이 취약
		//java 코드는 소스보기를 하면 결과만 보이지 소스 코드가 보이지 않음 - 보안이 스크립트보다 우수
		var disp = document.getElementById("disp");
		var html = "<select name='year'>";
		
		for(var i=1900; i<2021; i=i+1){
			html = html + "<option value=" + i + ">" + i + "</option>";
		}
		html = html + "</select>";
		disp.innerHTML = html;
	</script>
</body>
</html>