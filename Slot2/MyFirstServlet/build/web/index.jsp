<%-- 
    Document   : index
    Created on : Jan 4, 2024, 10:44:29 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Tyne" content="text/html; charset=UTF-8">
        <title>Welcome to MyFirstServlet example page</title>
    </head>
    <body>
        <h1>A Welcome Web Application</h1>


<!--        <form method="POST" action="WelcomeServlet">
                    <label for="name" title="Enter the name">Name: </label>
                    <input type="text" id="txtName" name="txtName"/><br><br>|
                    <input type="submit" value="Submit"/>
                </form>-->

        <form method="POST" action="WelcomeServlet">
            <label for="name">User name: </label>
            <input type="text" name="txtName"/><br><br>
            <label for="pass">Password: </label>
            <input type="password" name="pass"/><br><br>
            <input type="submit" value="Submit"/>
        </form>
    </body>
</html>
