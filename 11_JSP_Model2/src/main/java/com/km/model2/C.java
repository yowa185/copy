package com.km.model2;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// c (Controller) - 교통정리만 함
// 상황판단해서 필요한 쪽으로 보냄

// 웹사이트의 집입점이 됨 (= 실행을 여기서 하라)

@WebServlet("/C")
public class C extends HttpServlet {
       
	// 주소를 쳐서 접속하거나 클릭해서 들어가는 경우 = Get 요청
	// 어떤 사이트를 처음 들어가는 경우 = Get 요청
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("test11");
		response.sendRedirect("v1.html");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 비즈니스 로직 처리 완료
		M.calc(request);
		
		// 어디로??
		 RequestDispatcher rd = request.getRequestDispatcher("v2.jsp");
		 rd.forward(request, response);
		
	
	
	}

}
