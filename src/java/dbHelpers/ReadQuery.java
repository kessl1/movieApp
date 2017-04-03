/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dbHelpers;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Movies;

/**
 *
 * @author Jake
 */
public class ReadQuery {
    private Connection conn;
    private ResultSet results;
    
    public ReadQuery(){
        Properties props = new Properties();
        InputStream instr = getClass().getResourceAsStream("dbConn.properties");
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String driver = props.getProperty("driver.name");
        String url = props.getProperty("server.name");
        String username = props.getProperty("user.name");
        String passwd = props.getProperty("user.password");
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection(url, username, passwd);
        } catch (SQLException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    public void doRead(){
        try {
            String query = "Select * from MOVIES";
            
            PreparedStatement ps = conn.prepareStatement(query);
            this.results = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public String getHTMLtable(){
        String table = "";
        table += "<table>";
        
        try {
                table += "<tr>";
                table += "<th>MovieID</th>";
                table += "<th>Title</th>";
                table += "<th>Studio</th>";
                table += "<th>Year</th>";
                table += "<th>Genre</th>";
                table += "<th>Lead</th>";
                table += "<th>Edit</th>";
                table += "</tr>";
                
            while(this.results.next()){
                Movies movie = new Movies();
                movie.setMovieID(this.results.getInt("movieID"));
                movie.setTitle(this.results.getString("title"));
                movie.setStudio(this.results.getString("studio"));
                movie.setYear(this.results.getInt("year"));
                movie.setGenre(this.results.getString("genre"));
                movie.setLead(this.results.getString("lead"));
                
                table += "<tr>";
                table += "<td>";
                table+=movie.getMovieID();
                table += "</td>";
                
                table += "<td>";
                table+=movie.getTitle();
                table += "</td>";
                
                table += "<td>";
                table+=movie.getStudio();
                table += "</td>";
                
                table += "<td>";
                table+=movie.getYear();
                table += "</td>";
                
                table += "<td>";
                table+=movie.getGenre();
                table += "</td>";
                
                table += "<td>";
                table+=movie.getLead();
                table += "</td>";
                
                table += "<td>";
                
                table+= "<a href=update?movieID=" + movie.getMovieID()+ "> Update </a>" + "<a href=delete?movieID="+ movie.getMovieID()+ "> Delete </a>";
                
                table += "</tr>";
            }
        } catch (SQLException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        table+= "</table>";
        
        return table;
    }
    
}
