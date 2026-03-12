<%@page import="jdk.internal.org.jline.terminal.TerminalBuilder.SystemOutput"%>
<%@page import="jdk.internal.misc.FileSystemOption"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

/* ===== 폰트 변경 자리 ===== */
@import url('https://fonts.googleapis.com/css2?family=Press+Start+2P&display=swap');

body {
    background-color: #ffdeeb;
    background-image: radial-gradient(#ff8fb1 1px, transparent 1px);
    background-size: 20px 20px; /* 도트 배경 */
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

/* 다마고치 본체 느낌의 카드 */
form, .result-box {
    background: #ffffff;
    padding: 30px;
    border: 5px solid #000; /* 두꺼운 검정 테두리 */
    box-shadow: 10px 10px 0px #ff8fb1; /* 딱딱하게 떨어지는 그림자 */
    width: 380px;
    position: relative;
}

/* 제목: 게임 퀘스트 느낌 */
.title {
    font-family: 'Press Start 2P', cursive; /* 픽셀 폰트 */
    font-size: 14px;
    background: #000;
    color: #fff;
    padding: 10px;
    margin: -30px -30px 20px -30px;
    text-align: center;
}

/* 입력창: 투박한 레트로 스타일 */
input {
    width: 100%;
    box-sizing: border-box;
    padding: 12px;
    margin-top: 5px;
    border: 3px solid #000;
    background: #fff;
    font-size: 16px;
    outline: none;
}

input:focus {
    background: #ffffd1; /* 포커스 시 노란색으로 반전 */
}

/* 버튼: 누르면 쏙 들어가는 8비트 스타일 */
button {
    width: 100%;
    margin-top: 20px;
    padding: 15px;
    border: 3px solid #000;
    background: #ff8fb1;
    color: #000;
    font-weight: bold;
    font-size: 18px;
    cursor: pointer;
    box-shadow: 5px 5px 0px #000;
    transition: 0.1s;
}

button:hover {
    background: #ff76a0;
    transform: translate(-2px, -2px);
    box-shadow: 7px 7px 0px #000;
}

button:active {
    transform: translate(3px, 3px); /* 버튼이 실제로 꽉 눌리는 느낌 */
    box-shadow: 0px 0px 0px #000;
}

/* 결과 텍스트 애니메이션 */
.result-val {
    font-size: 24px;
    color: #ff1493;
    text-shadow: 2px 2px #ffdeeb;
    animation: blink 1s infinite;
}

@keyframes blink {
    50% { opacity: 0.7; }
}

</style>

</head>
<body>

<%

String path = request.getServletContext().getRealPath("uploadFile");
System.out.println(path);

MultipartRequest mr = new MultipartRequest(request, path, 
		1024 * 1024 * 20, // 20mb 최대 허용 용량
		"utf-8", // req.setCharactor ("utf-8") 그거
		new DefaultFileRenamePolicy()
		);

String n = mr.getParameter("name");
double h = Double.parseDouble(mr.getParameter("height"));
double hh = h/100;
double w = Double.parseDouble(mr.getParameter("weight"));

String imgF = mr.getFilesystemName("imgFile"); // 서버상 올라간 파일명


double result = w / (hh * hh);

String judge = "";
if (result < 18.5) {
	judge = "저체중";
} else if (result <= 22.9) {
    judge = "정상";
} else if (result <= 24.9) {
    judge = "과체중 (비만 전 단계)";
} else if (result <= 29.9) {
    judge = "1단계 비만";
} else if (result <= 34.9) {
    judge = "2단계 비만";
} else if (result >= 35.0) {
    judge = "3단계 비만 (고도비만)";
}

%>

<div class="result-box">
<div class="title">BMI 결과</div>

<div>
	<img id ="img" style= "width: 200px" src="uploadFile/<%= imgF %>">
</div>

<div>이름 <%= n %></div>
<div>키 (CM) <%= h %></div>
<div>체중 (KG) <%= w %></div>
<div>BMI <%=String.format("%.1f", result) %></div>
<div>결과 <%= judge %></div>
<div><button onclick="location.href='bmi.html'">다시하기</button></div>
</div>

</body>
</html>