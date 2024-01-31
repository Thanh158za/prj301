<%-- 
    Document   : xuly
    Created on : Jan 30, 2024, 9:16:55 AM
    Author     : Nhat Anh
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" errorPage="loi.jsp"%>

<%@page import=" model.Giohang"%>
<%@page import="dao.XulyDB"%>
<%@page import=" model.SanPham"%>
<%@page import=" model.MonHang"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        Giohang cart=(Giohang)session.getAttribute("gio");
        if(request.getParameter("mua")!=null){
        String mssp=request.getParameter("ms");
        int soluong=Integer.parseInt(request.getParameter("sl"));
        if(cart==null)
        cart=new Giohang();
        XulyDB db=new XulyDB();
        SanPham sp=db.getSanPham(mssp);//l;ay 1 sp
        MonHang mh=new MonHang(sp.getMsSP(),soluong,sp.getDongia());
        //them vào giỏ
        cart.ThemHang(mh);

        session.setAttribute("gio",cart);

        response.sendRedirect("shopping.jsp");
        }
        else if(request.getParameter("in")!=null){
        response.sendRedirect("hoadon.jsp"); 
        }
        %>
    </body>
</html>
