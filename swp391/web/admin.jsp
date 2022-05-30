<%-- 
    Document   : admin
    Created on : May 22, 2022, 4:46:54 PM
    Author     : THAI
--%>

<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    </head>
    <body>
        <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            if (loginUser != null) {
        %>
        <h1>Hello Admin: <%= loginUser.getFullName()%></h1>
        <%
            }
        %>

    </body>
</html>
