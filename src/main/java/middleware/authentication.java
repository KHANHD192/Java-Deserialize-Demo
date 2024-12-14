package middleware;

import dao.UserDao;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import dao.UserDao.*;
import model.User;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Arrays;
@WebFilter("/*")
public class authentication implements Filter {
    private UserDao userDao;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        userDao = new UserDao();
    }
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;

       String url =httpRequest.getRequestURI();
        if (url.endsWith("/login") || url.endsWith("/register") || url.startsWith("/demo3_war_exploded/asset")) {
            chain.doFilter(request, response);
            return;
        }
       //check token exits
        String token  = null ;
        Cookie[] cookies = httpRequest.getCookies();
        if(cookies != null){
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("token")) {
                    token = cookie.getValue();
                    break;
                }
            }
        }

        try {
            if(token != null && isVaildToken(token)){
                User user = getUserfromToken(token);

                //save info to request object
                httpRequest.setAttribute("user", user);
                chain.doFilter(request, response);
            }else{
                httpResponse.sendRedirect(httpRequest.getContextPath() + "/login");
            }
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    private boolean isVaildToken(String token) throws SQLException, ClassNotFoundException {
        return userDao.isVaildToken(token);
    }
    private User getUserfromToken(String token) throws SQLException, ClassNotFoundException {
        return userDao.getUserFromToken(token);
    }
}
