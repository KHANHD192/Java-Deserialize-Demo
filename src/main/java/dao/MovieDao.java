package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.sql.Connection;
import conf.Database;
import model.Movie;


public class MovieDao {
    private  Connection  connection ;


    public MovieDao() throws SQLException, ClassNotFoundException {
        this.connection = Database.getConnection();
        assert connection != null;
    }


    public  List<Movie> findAll() throws SQLException, ClassNotFoundException {
        String query = "SELECT * FROM `movies`";
        Statement stmt = connection.createStatement();
         ResultSet resultSet =  stmt.executeQuery(query);
        List<Movie> movies = new ArrayList<Movie>();
        while (resultSet.next()) {
            //get data
            Integer movieID = resultSet.getInt("movie_id");
            String title = resultSet.getString("title");
            String poster = resultSet.getString("poster_url");
            String description = resultSet.getString("description");
            Date releaseDate = resultSet.getDate("release_date");
            String duration =  resultSet.getString("duration");

            //tao object
            Movie movie = new Movie(movieID,title,poster,releaseDate,true,description,duration);
            //add object
                movies.add(movie);
        }
        return movies;
    }
    public Movie findById(Integer movieID) throws SQLException, ClassNotFoundException {
        String query = "SELECT * FROM `movies` WHERE `movie_id`="+movieID;
        Statement stmt = connection.createStatement();
        ResultSet resultSet =  stmt.executeQuery(query);
        while (resultSet.next()) {
            Integer id = resultSet.getInt("movie_id");
            String title = resultSet.getString("title");
            String poster = resultSet.getString("poster_url");
            String description = resultSet.getString("description");
            Date releaseDate = resultSet.getDate("release_date");
            String duration =  resultSet.getString("duration");
            Movie movie = new Movie(id,title,poster,releaseDate,true,description,duration);
            return movie;
        }
        return null;
    }



}
