package com.km.board.movie;

import com.km.board.account.AccountDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/update")
public class MovieUpC extends HttpServlet {


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
       // 그 영화 하나 정보 가져오기
//        getMovie(request);
        MovieDAO.MDAO.getMovie(request);
        AccountDAO.ADAO.loginCheck(request);

        // 수정하러 어디로??
        request.setAttribute("content", "jsp/movie/movie_up.jsp");
        request.getRequestDispatcher("index.jsp").forward(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // 수정하는 일
//        MovieDAO.upMovie(request);
        MovieDAO.MDAO.upMovie(request);


        // 어디로??
//        MovieDAO.getMovie(request);
//        request.setAttribute("content", "jsp/movie/movie_detail.jsp");
//        request.getRequestDispatcher("index.jsp").forward(request, response);
        response.sendRedirect("detail-movie?no=" + request.getParameter("no"));

    }

    public void destroy() {
    }
}