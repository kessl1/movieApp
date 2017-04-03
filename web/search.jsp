<%-- 
    Document   : search
    Created on : Apr 2, 2017, 11:22:17 PM
    Author     : Jake
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="formatting.css"/>
        <title>Search Page</title>
    </head>
    <body>
        <h1>Search Movies</h1>
        
        <form name="searchForm" action="search" method="get">
            
            <input type="text" name="searchVal" value="" />
            
            <br>
            
            <input type="submit" name="submit" value="Search" />
            
        </form>
    </body>
</html>
