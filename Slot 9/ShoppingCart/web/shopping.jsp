<%-- 
    Document   : shopping
    Created on : Jan 30, 2024, 9:13:20 AM
    Author     : Nhat Anh
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" errorPage="loi.jsp"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="dao.XulyDB"%>
<%@page import=" model.Giohang"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.MonHang"%>
<%@page import=" model.SanPham"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mua hàng qua mạng</title>
        <link rel="stylesheet" href="css/shopping.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
    </head>
    <body>
        <div>
        <form action="xuly.jsp" method="post">
            Chọn sản phẩm:<select name="ms">
                <%
                XulyDB db=new XulyDB();
                ResultSet rs=db.getAllProducts();
                while(rs.next()){
                %>
                <option label='<%=rs.getString("tensp") %>' 
                        value='<%=rs.getString("mssp") %>'>
                    <%
                    }
                    %>
            </select>
            Số lượng:<input type="text" name="sl"/>
            <input type="submit" value="Mua Hàng" name="mua"/>
            <input type="submit" value="In Hóa đơn" name="in"/> 
            <hr/>
            <h1>CHI TIẾT GIỎ HÀNG</h1>
            <table border="1" width="70%">
                <tr><th>MSSP</th>
                    <th>Ten san Phẩm</th>
                    <th>Số lượng</th>
                    <th>Đơn giá</th></tr>
                        <%
                        Giohang cart=(Giohang)session.getAttribute("gio"); 
                        if(cart!=null){
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
        </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
