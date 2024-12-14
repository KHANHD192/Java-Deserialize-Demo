package controller;
import  java.io.*;
import jakarta.servlet.ServletException;
import  jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import dao.UserDao;
import model.User;
import util.Error_custom;
import util.*;
import java.util.UUID;

@WebServlet(name = "LoginController" ,value="/login")
public class LoginController extends HttpServlet {

    //handle request GET
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/views/sign-in.jsp").forward(request,response);
    }

    //handle request POST
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = MD5.md5(request.getParameter("password"));
        UserDao userDao = new UserDao();
        User user = userDao.login(username,password);
        if(user != null) {
            //generate token
            String token = UUID.randomUUID().toString();
            Cookie cookie = new Cookie("token",token);
            response.addCookie(cookie);
            userDao.saveToken(user.getUser_id(),token);
            String contextPath = request.getContextPath();
            response.sendRedirect(contextPath + "/index");

        }else{
            //hanle error
            Error_custom errors = new Error_custom("Username or Password is incorrect");
            request.setAttribute("errors",errors);
            request.getRequestDispatcher("/views/sign-in.jsp").forward(request, response);
        }



    }


}
