<%-- 
    Document   : error
    Created on : May 22, 2022, 4:31:07 PM
    Author     : THAI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ERROR Page</title>
    </head>
    <body>
        <h1>Error: <%= session.getAttribute("ERROR_MESSAGE") %> </h1>
    </body>
</html>
