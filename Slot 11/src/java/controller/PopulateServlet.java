/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Address;
import model.Person;
import model.PhoneNumber;

/**
 *
 * @author Nhat Anh
 */
public class PopulateServlet extends HttpServlet {
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PopulateServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PopulateServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        Person p = new Person();
        p.setName("Sam Dalton");
        p.setAge(26);
        Address a = new Address();
        a.setLine1("221b Baker Street");
        a.setTown("London");
        a.setCounty("Greater London");
        a.setPostcode("NW1 1AA");
        ArrayList al = new ArrayList();
        PhoneNumber ph = new PhoneNumber();
        ph.setStd("01895");
        ph.setStd("678901");
        al.add(ph);
        ph = new PhoneNumber();
        ph.setStd("0208");
        ph.setStd("8654789");
        al.add(ph);
        a.setPhoneNumbers(al);
        p.setAddress(a);
        request.setAttribute("person", p);
        RequestDispatcher rd = request.getRequestDispatcher("complexBean.jsp");
        rd.forward(request, response);
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
