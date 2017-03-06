<%-- 
    Document   : read
    Created on : Mar 5, 2017, 10:27:37 PM
    Author     : Jake
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSPPage</title>
    </head>
    
    <% String table = (String) request.getAttribute("table"); %>
    
    <body>
        <h1>Jake's Movies</h1>
        <%= table %>
    </body>
</html>
