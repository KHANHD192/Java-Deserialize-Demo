package dao;

import java.io.Serializable;
import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import conf.Database;
import model.Movie;


public class TheaterDao implements Serializable {

    public void getResult(String location)throws SQLException{
        String url = "jdbc:mysql://localhost:3306/moviesystem";
        String username = "root";
        String password = "";
        Connection    conn = DriverManager.getConnection(url, username, password);
        // 3. Tạo Statement và thực hiện truy vấn
        Statement   stmt = conn.createStatement();
        String query = "Select location from `theaters` where `location` like '%"+location+"%'";
        ResultSet resultSet =  stmt.executeQuery(query);
        if(resultSet.next()){
            String Lc = resultSet.getString("location");
            System.out.println(Lc);
        }
        //feature may be constructed in future
        // development
    }
}
