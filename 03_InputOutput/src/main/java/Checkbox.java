

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Checkbox")
public class Checkbox extends HttpServlet {
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
			// 1. 값 추출
		
		String[] vals = request.getParameterValues("chk");
		for (String s : vals) {
			System.out.println(s);
		}
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
