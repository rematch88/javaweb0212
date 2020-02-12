<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터 만들기</title>
</head>
<body>
	<!-- 링크에 파라미터 만들기 : 직접 파라미터 입력 -->
	<a href="./process.jsp?query=한국&name=박문석">대한민국</a><br/>
	<!-- form을 이용한 파라미터 만들기 -->
	<h1>GET 방식 전송</h1>
	<form method="get" action="get.jsp">
		이름:<input type="text" name="name"/><br/>
		취미:<input type="checkbox" name="hobby" value="game"/>게임
		<input type="checkbox" name="hobby" value="reading"/>독서
		<input type="checkbox" name="hobby" value="billiard"/>당구
		<br/>
		나이:<select name="age">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
		</select>
		<br/>
		<input type="submit" value="전송"/>	
	</form>
	<h1>POST 방식 전송</h1>
	<form method="post" action="post.jsp">
		비밀번호:<input type="password" name="pw"/><br/>
		하고싶은 이야기:<textarea name="words" rows="5" cols="20"></textarea>
		<br/>
		<input type="submit" value="전송"/>
	</form>
	
</body>
</html>