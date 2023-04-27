<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="vo.Account" %>
<%
	request.setCharacterEncoding("utf-8");	//필수
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	Integer balance = Integer.parseInt(request.getParameter("money"));
	String type = request.getParameter("type");
	String grade = request.getParameter("grade");
	
	Account acc = new Account(id,name,balance,type,grade);
	session.setAttribute(id, acc); //(key, value) -> 객체로 저장
	
	request.setAttribute("message", "계좌가 개설되었습니다.");
	pageContext.forward("main.jsp?page=message.jsp");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>