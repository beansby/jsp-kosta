<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="vo.Account" %>
<%
	Account acc = new Account();
	acc.setId("10001");
	acc.setName("홍길동");
	acc.setBalance(100000);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="Header.jsp" %>

<table border="1">
	<tr>
		<th> 아이디 </th><td><%= acc.getId() %></td>
	</tr>
	<tr>
		<th> 이름 </th><td><%= acc.getName() %></td>
	</tr>
	<tr>
		<th> 잔액 </th><td><%= acc.getBalance() %></td>
	</tr>
	
</table>

<%@ include file="Footer.jsp" %>
</body>
</html>