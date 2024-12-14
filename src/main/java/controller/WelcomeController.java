package controller;

import dao.MovieDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Movie;

import java.io.*;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "WelcomeController" , value ="/index")
public class WelcomeController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //getdata
        try {
            MovieDao movieDao = new MovieDao();
            List<Movie> movies = movieDao.findAll();
//            System.out.println(movies);
            req.setAttribute("movies", movies);
            //forward
            req.getRequestDispatcher("/views/index.jsp").forward(req, resp);
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }


    }
}
