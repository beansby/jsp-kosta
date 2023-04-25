<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String address = request.getParameter("address");
	session.setAttribute("address", address);
	//downcasting : object -> string
	String tel = (String)session.getAttribute("tel"); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="Session2.jsp">
	<input type="tel" name="tel">
	<input type="submit" value="전송">
</form>
<h1><%= tel %></h1>
<h1><%= address %></h1>

</body>
</html>