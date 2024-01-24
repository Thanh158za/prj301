<%-- 
    Document   : userform
    Created on : Jan 24, 2024, 10:52:11 PM
    Author     : Nhat Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="viewusers.jsp">View All Records</a><br/> 
        <h1>Add New User</h1> 
        <form action="adduser.jsp" method="post"> 
            <table> 
                <tr><td>Name:</td><td><input type="text" name="name"/></td></tr> 
                <tr><td>Password:</td><td> 
                        <input type="password" name="password"/></td></tr> 
                <tr><td>Email:</td><td><input type="email" name="email"/></td></tr> 
                <tr><td>Sex:</td><td> 
                        <input type="radio" name="sex" value="male"/>Male 
                        <input type="radio" name="sex" value="female"/>Female </td></tr> 
                <tr><td>Country:</td><td> 
                        <select name="country" style="width:155px"> 
                            <option>India</option> 
                            <option>Pakistan</option> 
                            <option>Afghanistan</option> 
                            <option>Berma</option> 
                            <option>Other</option> 
                        </select> 
                    </td></tr> 
                <tr><td colspan="2"><input type="submit" value="Add User"/></td></tr>
            </table> 
        </form> 
    </body>
</html>
