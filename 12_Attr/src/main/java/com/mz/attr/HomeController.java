package com.mz.attr;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/HomeController")
public class HomeController extends HttpServlet {
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("input.html").forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// 1. 갚 받기
		// 2. 비즈니스 로직 처리하기
		Model.getExchange(request);
		
		// 어디로?
		request.getRequestDispatcher("output2.jsp").forward(request, response);
		
		
		
		
		
		
		
	
	}

}
