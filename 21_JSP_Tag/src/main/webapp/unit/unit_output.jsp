<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="bg- ${unit.colorC}">
		<div>변환결과</div>
		<div> ${unit.num} <span class="${unit.colorC}"></span></div>
		<div>↓</div>
		<div> ${unit.result} <span class="${unit.colorC}"> ${unit.convertedUnit}</span></div>
		<div><button onclick="history.back()">처음으로</button></div>
	</div>

</body>
</html>