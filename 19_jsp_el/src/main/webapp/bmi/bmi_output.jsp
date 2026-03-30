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

<div class="result-box">
<div class="title">BMI 결과</div>


<div>이름: ${bmiVO.name} </div>
<div>키 (CM): ${bmiVO.height} </div>
<div>체중 (KG): ${bmiVO.weight} </div>
<div>BMI: ${String.format("%.2f", bmiVO.result)}</div>
<div>결과:  ${bmiVO.judge} </div>
<div><a href="index.jsp">처음으로</a></div>
</div>

</body>
</html>