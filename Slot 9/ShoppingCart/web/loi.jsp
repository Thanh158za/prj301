<%-- 
    Document   : loi
    Created on : Jan 30, 2024, 9:24:42 AM
    Author     : Nhat Anh
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang lỗi</title>
    </head>
    <body>
        <<h2>Bạn đã nhập liệu sai!</h2>
        <hr/>
        <%= exception.toString() %>
    </body>
</html>
