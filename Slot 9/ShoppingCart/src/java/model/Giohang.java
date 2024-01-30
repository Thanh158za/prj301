/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author Nhat Anh
 */
public class Giohang {

    private ArrayList<MonHang> cart;

    public Giohang() {
        cart = new ArrayList<MonHang>();
    }

    public void ThemHang(MonHang mh) {
        //Nếu món hàng đã có trong giỏ
        //thì cập nhập lại số lượng
        if (cart.contains(mh)) {
            MonHang hang = cart.get(cart.indexOf(mh));
            hang.setSoluong(hang.getSoluong() + mh.getSoluong());
        } else {//còn không thì thêm mới
            cart.add(mh);
        }
    }

    public double Tongtien() {
        double tien = 0;
        for (MonHang mh : cart) {
            tien += mh.getDongia() * mh.getSoluong();
        }
        return tien;
    }

    public ArrayList<MonHang> getGH() {
        return cart;
    }
}
