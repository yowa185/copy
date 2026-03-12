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
	// 1. 값 받기
	
	// 중복 코드 찾기 > java로 쓸 수 있는 한 다 쓰기 > 나머지 코드 쓰기
	
	int n = Integer.parseInt(request.getParameter("num"));
	
	String result = "";
	String color = null;
	
	if(n % 2 == 1) {  
		result = "홀"; 
		color = "tomato";
	}	else {
		result = "짝"; 
		color = "green";
	}
	
	%>
	
	<h1 style = "color: <%=color%>"><%= result %></h1>
		
		

</body>
</html>