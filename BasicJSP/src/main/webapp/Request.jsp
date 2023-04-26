<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String test = request.getParameter("test");	//url 직접 입력 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 
	<%= test %>
</h1>
<a href="Request.jsp?address=서울시"> 주소 </a>
<form action="Request.jsp" method="get">
	주소:
	<!-- 수동 설정 필요 : 이전 페이지 -> 다음 페이지 -->
	<input type="hidden" name="test" value=<%= test %>/>
	<input type="text" name="address"/>
	<input type="submit" value="호출"/>
</form>

</body>
</html>