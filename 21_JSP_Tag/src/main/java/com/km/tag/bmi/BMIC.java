package com.km.tag.bmi;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name="bmic", value="/bmi-menu")
public class BMIC extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    // 공통 로직 처리 메서드
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        // 1. 파라미터 확인 (입력값이 있는지?)
        String height = request.getParameter("height");

        if (height == null) {
            // [상황 A] 처음 접속했을 때 -> 입력 폼을 중간에 끼워넣음
            request.setAttribute("contentPage", "bmi/index.jsp");
        } else {
            // [상황 B] 계산 버튼 눌렀을 때 -> 결과 페이지를 중간에 끼워넣음
            BmiModel.bmi(request);
            request.setAttribute("contentPage", "bmi/bmi_output.jsp");
        }

        // 🌟 2. 제일 중요한 부분: 무조건 'main.jsp'로 보낸다!
        // 그래야 header, nav, footer가 유지되고 CSS가 적용됩니다.
        request.getRequestDispatcher("main.jsp").forward(request, response);

    }

    public void destroy() {

    }
}