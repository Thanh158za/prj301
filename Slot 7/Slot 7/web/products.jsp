<%-- 
    Document   : products
    Created on : Jan 23, 2024, 8:30:50 AM
    Author     : Nhat Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="p" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <table border="1px" width="40%">
            <tr>
                <th>ID</th>
                <th>NAME</th>
            </tr>
            <p:forEach items="${requestScope.list}" var="p">
                <p:set var="id" value="${p.id}"/>
                <tr>
                    <td>${id}</td>
                    <td>${p.name}</td>
                </p:forEach>
        </table>
        <center/>
    </body>
</html>
