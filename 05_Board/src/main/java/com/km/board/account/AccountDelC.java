package com.km.board.account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AccountDelC", value = "/user-delete")
public class AccountDelC extends HttpServlet {


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        // 유저 지우는 일
        AccountDAO.ADAO.deleteUser(request);

        // 어디로??
        AccountDAO.ADAO.loginCheck(request);

        request.setAttribute("content", "home.jsp");
        request.getRequestDispatcher("index.jsp").forward(request, response);


    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        if(AccountDAO.ADAO.deleteUser(request)) {
            // 성공했을 때
            response.sendRedirect("main");
        } else {
            // 아닐땐
            response.sendRedirect("user-info");
        }
    }

    public void destroy() {
    }
}