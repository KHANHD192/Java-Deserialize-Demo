package controller;

import com.sun.tools.jconsole.JConsoleContext;
import dao.MovieDao;
import dao.OrderDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import model.*;

import java.io.*;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

@WebServlet(name = "movieCheckoutController", value = "/movie-checkout")
public class movieCheckoutController  extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

           Cookie[] cookies = req.getCookies();
            if(cookies!=null){
                for(Cookie cookie : cookies){
                    if(cookie.getName().equals("User_order")){
                        String value = cookie.getValue();
                        byte[] decodedValue = Base64.getDecoder().decode(value);
                        ByteArrayInputStream bais = new ByteArrayInputStream(decodedValue);
                        ObjectInputStream ois = new ObjectInputStream(bais);

                        try {
                            Order order = (Order) ois.readObject();
                            req.setAttribute("order",order);
                        } catch (ClassNotFoundException e) {
                            throw new RuntimeException(e);
                        }

                    }
                }
            }

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
            User user = (User) req.getAttribute("user");
            Order order = new Order(user,ticket);
            OrderDao orderDao = new OrderDao();
            String serializeData ;
            if(orderDao.exitsOrder(order)){
                serializeData =  orderDao.updateOrder(order);
            }else {
                serializeData = orderDao.saveOrder(order);
            }
                Cookie cookie = new Cookie("User_order",serializeData);
                cookie.setMaxAge(60 * 60 * 24); // 1 ngày (tính bằng giây)
                resp.addCookie(cookie);



            resp.getWriter().write(objectMapper.writeValueAsString(result));
//            System.out.println(ticket);
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
//
        }


    }
}
