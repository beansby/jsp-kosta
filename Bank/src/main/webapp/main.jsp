<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String contentPage = request.getParameter("page");
	if(contentPage == null) {
		contentPage = "makeAccount.jsp";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Korea Bank </title>
<style>
	* {
		margin: 0 auto;
	}
</style>
</head>

<body>
<!-- main.jsp 가 계속 호출되면서 가운데 들어올 페이지가 변화 ? -->
	<table style="width:800px; height:400px">
		<thead>
			<tr>
				<td> <% pageContext.include("header.jsp"); %> </td>
			</tr>
			
		</thead>
		<tbody>
			<tr>
				<td> <% pageContext.include(contentPage); %></td>
			</tr>
		</tbody>
		
			<tr>
			
				<td></td>
			</tr>
	</table>
</body>

</html>