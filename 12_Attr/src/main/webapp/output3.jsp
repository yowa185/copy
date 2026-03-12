<%@page import="com.mz.attr.Result"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>'

p :  <%= request.getAttribute("p") %>
m :  <%= request.getAttribute("m") %>
rr : <%= request.getAttribute("rr") %>



	<hr>
	
	<%= request.getParameter("howmuch") %> 원 부족하세요!
	<hr>
	
	<%= request.getParameter("asd") %> 원이 모자라요!
	<hr>
	
	<%= request.getAttribute("asdasd") %>
	
	
	<div>
	</div>
	

	

</body>
</html>