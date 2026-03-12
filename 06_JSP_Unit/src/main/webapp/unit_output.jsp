<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">


.bg-a{
background-color: #dfa9f3;
}
.bg-b{
background-color: #dfa9f3;
}
.bg-c{
background-color: #dfa9f3;
}
.bg-d{
background-color: #dfa9f3;
}
.a{
color: red;
}
.b{
color: green;
}
.c{
color: gold;
}
.d{
color: pink;
}


</style>
</head>
<body>

<%

double n = Double.parseDouble(request.getParameter("num"));
String unit = request.getParameter("unit");
String cc = "d";
double result =  n * 0.6213;
String convertUnit = "mi/h";
if (unit.equals("cm")) { 
	result = n * 0.3937; 
	convertUnit = "inch";
	cc = "a";
} else if (unit.equals("㎡")) {
		result = n * 0.3025; 
		convertUnit = "평";
		cc = "b";
} else if (unit.equals("°C")) {
		result = n * 1.8 + 32; 
		convertUnit = "°F";
		cc = "c";
 	} 
%> 

div class="bg-<%=cc%>">
		<div>변환결과</div>
		<div><%=n %> <span class="<%=cc%>"><%=unit %></span></div>
		<div>↓</div>
		<div><%=String.format("%.1f", result) %> <span class="<%=cc%>"><%=convertUnit %></span></div>
		<div> <button onclick="location.href='NewFile.html'">돌아가기</button> </div>
	</div>



</body>
</html>