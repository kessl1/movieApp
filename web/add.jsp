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
    </head>
    <body>
        <h1>Add A New Movie</h1>
        
        <form name="addForm" action="addMovie" method="get">
            
            <label>Movie Title:</label>
            <input type="text" name="title" value=""/>
            <br>
            <label>Studio:</label>
            <input type="text" name="studio" value=""/>
            <br>
            <label>Year:</label>
            <input type="text" name="year" value=""/>
            <br>
            <label>Genre:</label>
            <input type="text" name="genre" value=""/>
            <br>
            <label>Lead:</label>
            <input type="text" name="lead" value=""/>
            <br>
            <input type="submit" name="submit" value="Submit">
        </form>
    </body>
</html>
