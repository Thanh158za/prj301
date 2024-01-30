/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Nhat Anh
 */
public class ConnectDBFactory {

    private static Connection con;

    public static Connection CreateSqlConnection() throws Exception {
        String user = "sa";
        String pass = "123";
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String dburl = "jdbc:sqlserver://localhost\\SQLEXPRESS:1433;databaseName=qlsp";
        con = DriverManager.getConnection(dburl, user, pass);
        return con;
    }
}
