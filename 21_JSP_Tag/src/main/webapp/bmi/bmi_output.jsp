<%@page import="jdk.internal.org.jline.terminal.TerminalBuilder.SystemOutput"%>
<%@page import="jdk.internal.misc.FileSystemOption"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <link rel="stylesheet" href="css/bmi.css">

</head>
<body>

<div class="result-box">
<div class="title">BMI 결과</div>


<div>이름: ${bmiVO.name} </div>
<div>키 (CM): ${bmiVO.height} </div>
<div>체중 (KG): ${bmiVO.weight} </div>
<div>BMI: ${String.format("%.2f", bmiVO.result)}</div>
<div>결과:  ${bmiVO.judge} </div>
<div><button><a href="index.jsp">처음으로</a></button></div>
</div>

</body>
</html>