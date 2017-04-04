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
        <title>Movie Reader</title>
        <link rel="stylesheet" type="text/css" href="formatting.css"/>
    </head>
    
    <% String table = (String) request.getAttribute("table"); %>
    
    <body>
        <div class="wrap">
            
        <%@ include file="includes/header.jsp" %>
        <%@ include file="includes/menu.jsp" %>
       
        <div class="main">
            
        <h1>Jake's Movies</h1>
        <hr>
        <%= table %>
        </div>
        
        <%@ include file="includes/footer.jsp" %>
        
        </div>
        
        </body>
</html>
