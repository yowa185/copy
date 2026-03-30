<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>

    <link rel="stylesheet" href="css/bmi.css">

</head>
<body>

<form action="bmi-menu" method="post">

    <div><h1>BMI 검사</h1></div> <hr>
    <div><h2>이름 </h2><input name = "name"></div>
    <div><h2>키 (CM) </h2><input name = "height"></div>
    <div><h2>체중 (KG) </h2><input name = "weight"></div>
    <div><button><h2>계산</h2></button></div>

</form>

</body>
</html>