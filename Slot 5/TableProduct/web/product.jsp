<%-- 
    Document   : product
    Created on : Jan 16, 2024, 8:45:29 AM
    Author     : Nhat Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <style>
            body {
                padding: 20px;
            }
        </style>
    </head>
    <body>
        <div class="container">
        <h1 class="mt-5">HÓA ĐƠN BÁN HÀNG</h1>
        <table class="table table-bordered mt-4">
             <thead class="thead-dark">
            <tr>
                <th>STT</th>
                <th>MÃ MH</th>
                <th>Tên MH</th>
                <th>Thành Tiền</th>
                <th>Ảnh sản phẩm</th>
            </tr>
             </thead>
            <tbody>
            <% 
                for(int i = 1; i <= 5; i++) {
            %>
            <tr>
                <td><%= i %></td>
                <td>MH<%= i %></td>
                <td>SP<%= i %></td>
                <td><%= i * 1000000 %></td>
                <td><img src="image/image<%= i %>.jpg" alt="Product Image" width="125" height="100"></td>
            </tr>
            <% } %>
            
            <tbody>
        </table>
        </div>    
<!--        add boostrap -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHq1gEj8h8WQOXg3pLJo4o5O+2g9n5U6fja4y4gx2A4DqzRcd8QCqbq5f" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
