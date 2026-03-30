package com.km.el.age;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet("/age")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("age/index.jsp").forward(request, response);



    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        Model.calcAge(request);
        request.getRequestDispatcher("age/output.jsp").forward(request, response);
    }

    public void destroy() {
    }
}