package controller;

import com.sun.tools.jconsole.JConsoleContext;
import dao.MovieDao;
import dao.OrderDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import model.Movie;
import model.Order;
import model.Ticket;
import model.User;

import java.io.*;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "movieCheckoutController", value = "/movie-checkout")
public class movieCheckoutController  extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
           req.getRequestDispatcher("/views/movie-checkout.jsp").forward(req, resp);
    }


    protected  void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Đọc JSON từ request body
        ObjectMapper objectMapper = new ObjectMapper();

        JsonNode jsonNode = objectMapper.readTree(req.getInputStream());
        JsonNode seats = jsonNode.get("Seats");
        String movieID = jsonNode.get("MovieId").asText();
        List<String> seatsList = new ArrayList<>();
        if (seats.isArray()) {
            for (JsonNode nameNode : seats) {
                // Lấy giá trị String từ JsonNode
                String name = nameNode.asText();
                seatsList.add(name);
            }
        }
        try {
            MovieDao movieDao = new MovieDao();
            Movie movie = movieDao.findById(Integer.valueOf(movieID));
            //hard code for fast review
            Ticket ticket =  new Ticket(movie,"20h:20-12-2024","Beta",seatsList);

            resp.setContentType("application/json");
            resp.setCharacterEncoding("UTF-8");

            //create response json
            ObjectMapper objectmapper = new ObjectMapper();

            JsonNode result = objectmapper.createObjectNode()
                            .put("status","success");


            //create order
            System.out.println(req);
            User user = (User) req.getAttribute("user");
            Order order = new Order(user,ticket);
            OrderDao orderDao = new OrderDao();
            if(orderDao.exitsOrder(order)){
                orderDao.updateOrder(order);
            }else {
                orderDao.saveOrder(order);
            }
                resp.getWriter().write(objectMapper.writeValueAsString(result));
//            System.out.println(ticket);
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
//
        }


    }
}
