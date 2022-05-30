<%-- 
    Document   : student
    Created on : May 22, 2022, 4:51:42 PM
    Author     : THAI
--%>

<%@page import="org.apache.catalina.User"%>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Page</title>
    </head>
    <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            if (loginUser != null) {
        %>
        <h1>Hello Student: <%= loginUser.getFullName()%></h1>
        <%
            }
        %>

</html>
