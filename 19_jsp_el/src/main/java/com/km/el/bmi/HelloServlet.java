package com.km.el.bmi;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet("/bmi")
public class HelloServlet extends HttpServlet {

    // 1. doPost 메서드를 추가하거나 수정합니다.
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 🌟 여기가 핵심!
        // POST로 요청이 들어와도 아래에 짜놓은 "판단 로직(doGet)"을 그대로 써라!
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("utf-8");

        // 💡 파라미터(height)가 없으면? 아직 입력을 안 했다는 뜻! -> 입력창으로 보냄
        if (request.getParameter("height") == null) {
            request.getRequestDispatcher("bmi/index.jsp").forward(request, response);
        }
        // 💡 파라미터가 있으면? 계산해달라는 뜻! -> 모델 일 시키고 결과창으로 보냄
        else {
            BmiModel.bmi(request);
            request.getRequestDispatcher("bmi/bmi_output.jsp").forward(request, response);
        }
    }

    public void destroy() {

    }
}