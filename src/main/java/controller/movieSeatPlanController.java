package controller;

import dao.MovieDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Movie;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name ="movieSeatPlanController" , value = "/movie-seat-plan")
public class movieSeatPlanController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer movieId = Integer.valueOf(req.getParameter("movieID"));
        try {
            MovieDao moviedao = new MovieDao();
            Movie movie = moviedao.findById(movieId);
//            System.out.println(movie);
            req.setAttribute("movie", movie);
            req.getRequestDispatcher("/views/movie-seat-plan.jsp").forward(req, resp);
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

    }
}
