<%-- 
    Document   : hoadon
    Created on : Jan 30, 2024, 9:20:29 AM
    Author     : Nhat Anh
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" errorPage="loi.jsp"%>
<%@page import=" model.Giohang"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.MonHang"%>
<%@page import="model.SanPham"%>
<%@page import="dao.XulyDB"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
        <link rel="stylesheet" href="css/hoadon.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <table border="1" width="70%">
                <tr><th>MSSP</th>
                    <th>Ten san Phẩm</th>
                    <th>Số lượng</th>
                    <th>Đơn giá</th></tr>
                        <%
                        Giohang cart=(Giohang)session.getAttribute("gio"); 
 
                        if(cart!=null){
                        XulyDB db=new XulyDB();
                        ArrayList<MonHang> ds=cart.getGH();
                        for(MonHang mh:ds){
                        SanPham sp=db.getSanPham(mh.getMsMH());
                        %>
                <tr>
                    <td><%= mh.getMsMH()%></td>
                    <td><%= sp.getTenSP()%></td>
                    <td><%= mh.getSoluong()%></td>
                    <td><%= mh.getDongia()%></td>
                </tr>
                <%
                }
                %>
            </table>
            <h2 align="right">Tổng tiền:<%=cart.Tongtien() %></h2>
            <%} %>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
