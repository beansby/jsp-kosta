<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%!
	String name = "hong";
	//class 내부 method 정의 가능 
	int sum(int x, int y){
		return x+y;
	}
%>

<%
	String name = "song";
	//method 내부 method 선언 불가 
	/* int sum(int x, int y){
		return x+y;
	} */
%>
</head>
<body>

<%= this.name %> <br>
<%= name %>	<br>
<%= sum(10,20) %>
</body>
</html>