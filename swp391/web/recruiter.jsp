<%-- 
    Document   : recruiter
    Created on : May 23, 2022, 4:30:48 PM
    Author     : THAI
--%>

<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>recruiter Page</title>
    </head>
    <body>
        <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            if (loginUser != null) {
        %>
        <h1>Hello Recruiter: <%= loginUser.getFullName()%></h1>
        <%
            }
        %>

    </body>
</html>
