/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import model.Products;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductsDAO extends DBContext {

    PreparedStatement stm;
    ResultSet rs;
    List<Products> list = new ArrayList<>();

    public List<Products> getAll() {
        try {
            String strSelect = "select * from Products";
            stm = connection.prepareStatement(strSelect);
            rs = stm.executeQuery();
            while (rs.next()) {
                Products em = new Products(rs.getInt("Id"), rs.getString("Name"));
                list.add(em);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public static void main(String[] args) {
        ProductsDAO objP = new ProductsDAO();
        List<Products> list = objP.getAll();
        System.out.println(list.get(0).getName());
    }
}
