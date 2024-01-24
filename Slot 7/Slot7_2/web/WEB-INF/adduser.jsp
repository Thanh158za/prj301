<%-- 
    Document   : adduser
    Created on : Jan 24, 2024, 10:52:51 PM
    Author     : Nhat Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.javatpoint.dao.UserDao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="u" class="com.javatpoint.bean.User"></jsp:useBean> 
        <jsp:setProperty property="*" name="u"/> 
        <% 
        int i=UserDao.save(u); 
        if(i>0){ 
        response.sendRedirect("adduser-success.jsp"); 
        }else{ 
        response.sendRedirect("adduser-error.jsp"); 
        } 
        %>
    </body>
</html>
