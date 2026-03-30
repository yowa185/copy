package com.km.board.movie;

import com.km.board.account.AccountDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/detail-movie")
public class MovieDetailC extends HttpServlet {


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        // 클릭한 그거 하나 조회하는 일
//        MovieDAO.getMovie(request);
        MovieDAO.MDAO.getMovie(request);

        // 어디로??
        request.setAttribute("content", "jsp/movie/movie_detail.jsp");
        request.getRequestDispatcher("index.jsp").forward(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // 등록하는 일
//        MovieDAO.addMovie(request);
        MovieDAO.MDAO.addMovie(request);
        AccountDAO.ADAO.loginCheck(request);

        // 어디로??
        response.sendRedirect("movie");

    }

    public void destroy() {
    }
}