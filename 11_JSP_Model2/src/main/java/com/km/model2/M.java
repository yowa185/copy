package com.km.model2;

import javax.servlet.http.HttpServletRequest;

//  (Model) - 비즈니스 로직을 정리하는 공간
// 계산, 일, db 접속 등을 이곳에서
public class M {
	
	
	public static void calc(HttpServletRequest request) {
		
		// 1. 값 받기
		int a = Integer.parseInt(request.getParameter("a"));
		int b = Integer.parseInt(request.getParameter("b"));
		
		int c = a+b;
		request.setAttribute("ccc", c);
		
	}

}
