<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<h1>계산 결과</h1>
	
	<div>
		<div> 상품 가격 : ${rr.price}</div>
		<div> 지불한 돈 : ${rr.money}</div>
		<div> 잔돈 	  : ${rr.ex}</div>
		<div> 멘트	  : ${rr.say}</div>
	
	</div>
	
	<hr>
	
	${param.p} <br>
	${param.m}
	

</body>
</html>