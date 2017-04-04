<%-- 
    Document   : updateForm
    Created on : Apr 2, 2017, 8:26:17 PM
    Author     : Jake
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Movies"%>
<% Movies movie = (Movies) request.getAttribute("movie"); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update A Movie</title>
        <link rel="stylesheet" type="text/css" href="formatting.css"/>
    </head>
    <body>
        <div class="wrap">
            
        <%@ include file="includes/header.jsp" %>
        <%@ include file="includes/menu.jsp" %>
       
        <div class="main">
        <h1>Update A Movie Record</h1>
        <hr>
        <form name="updateForm" action="updateMovie" method="get">
          <table class="update">
            <tbody>
                <tr>
                 <td>Movie ID:</td>
                 <td><input type="text" name="id" value="<%= movie.getMovieID() %>" readonly/></td><br>
                </tr>
                
                <tr>
                 <td>Movie Title:</td>
                 <td><input type="text" name="title" value="<%= movie.getTitle() %>"/></td><br>
                </tr>
            
                <tr>
                <td>Studio:</td>
                <td><input type="text" name="studio" value="<%= movie.getStudio() %>"/></td><br>
                </tr>
                    
                <tr>
                  <td>Year:</td>
                  <td><input type="text" name="year" value="<%= movie.getYear() %>"/></td><br>
                </tr>
                
                <tr>  
                 <td>Genre:</td>
                 <td><input type="text" name="genre" value="<%= movie.getGenre() %>"/></td><br>
                </tr>
            
                <tr>
            <td>Lead:</td>
            <td><input type="text" name="lead" value="<%= movie.getLead() %>"/></td><br>
                </tr>
                <br>
            <input type="submit" name="submit" value="Update">
            </tbody>
          </table>
        </form>
        </div>
        
        <%@ include file="includes/footer.jsp" %>
        
        </div>
    </body>
</html>
