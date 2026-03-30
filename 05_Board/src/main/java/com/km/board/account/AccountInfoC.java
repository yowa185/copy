package com.km.board.account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AccountInfoC", value = "/user-info")
public class AccountInfoC extends HttpServlet {


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // id 조회하는 일 x - 이미 세션에 있으나까

        if(AccountDAO.ADAO.loginCheck(request)) {
            request.setAttribute("content", "jsp/account/mypage.jsp");
        } else {
            request.getRequestDispatcher("home.jsp").forward(request, response);
        }
        request.getRequestDispatcher("index.jsp").forward(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

    }

    public void destroy() {
    }
}