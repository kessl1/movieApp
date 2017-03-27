<%-- 
    Document   : add
    Created on : Mar 26, 2017, 9:17:22 PM
    Author     : Jake
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add A New Movie</title>
        <link rel="stylesheet" type="text/css" href="formatting.css"/>
    </head>
    <body>
        <h1>Add A New Movie</h1>
        <hr>
        
        <form name="addForm" action="addMovie" method="get">
          <table>
            <tbody>
                <tr>
                 <td>Movie Title:</td>
                 <td><input type="text" name="title" value=""/></td><br>
                </tr>
            
                <tr>
                <td>Studio:</td>
                <td><input type="text" name="studio" value=""/></td><br>
                </tr>
                    
                <tr>
                  <td>Year:</td>
                  <td><input type="text" name="year" value=""/></td><br>
                </tr>
                
                <tr>  
                 <td>Genre:</td>
                 <td><input type="text" name="genre" value=""/></td><br>
                </tr>
            
                <tr>
            <td>Lead:</td>
            <td><input type="text" name="lead" value=""/></td><br>
                </tr>
                <br>
            <input type="submit" name="submit" value="Submit">
            </tbody>
          </table>
        </form>
    </body>
</html>
