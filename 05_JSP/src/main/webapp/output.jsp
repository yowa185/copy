<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<%!
	
	// 메서드 쓰는 문법: <%! 
	
	public int getMok(int a, int b){
		return a / b;}
	%>

	
	<%
// 1. 값을 먼저 받기
// php와 작업 양상 동일 -> 이후 실무에서도 사용 가능
		
		int x =  Integer.parseInt( request.getParameter("xx"));
		int y =  Integer.parseInt( request.getParameter("yy"));
		
		int hap = x + y;
		int cha = x - y;
		int gob = x * y;
		int mok = x / y;
		int mok2 = getMok(x, y);
		
	%> 
	
	<!-- 현재 상태에서 총 합이 10이 넘을 때만 결과 화면에 나오게 -->
	
	<%
		if(hap > 10) 
			
		{
			
			
		
	%>
	
	<div style="background-color: ivory; border: 4px solid green">
	
	<h1> <%= x %> + <%=y %> = <%= hap %> </h1>
	<h1> <%= x %> - <%=y %> = <%= cha %> </h1>
	<h1> <%= x %> * <%=y %> = <%= gob %> </h1>
	<h1> <%= x %> / <%=y %> = <%= mok %> </h1>
	
	<h1><%=mok2 %></h1>
	<h1><%=getMok(x, y) %></h1>
	
	</div>
	
	<!-- html을 java 코드에 담기 위해 -->
	<% } %>
	

</body>
</html>