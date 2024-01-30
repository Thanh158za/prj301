/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.Date;

/**
 *
 * @author Nhat Anh
 */
public class Session extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Session</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Session at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        Date createTime = new Date(session.getCreationTime());
        Date lastAccessTime = new Date(session.getLastAccessedTime());
        String title = "Welcome Back to geeksforgeeks";
        Integer visitCount = new Integer(0);
        String visitCountKey = new String("visitCount");
        String userIDKey = new String("userID");
        String userID = new String("GFG");

        // Check if this is new comer on your web page.
        if (session.isNew()) {
            title = "Welcome to GeeksForGeeks";
            session.setAttribute(userIDKey, userID);
        } else {
            visitCount = (Integer) session.getAttribute(
                    visitCountKey);
            visitCount = visitCount + 1;
            userID
                    = (String) session.getAttribute(userIDKey);
        }
        session.setAttribute(visitCountKey, visitCount);

        // Set response content type
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String docType
                = "<!doctype html public \"-//w3c//dtd html 4.0 "
                + "transitional//en\">\n";

        out.println(
                docType + "<html>\n"
                + "<head><title>" + title + "</title></head>\n"
                + "<body bgcolor = \"#f0f0f0\">\n"
                + "<h1 align = \"center\">" + title + "</h1>\n"
                + "<h2 align = \"center\">Gfg Session Information</h2>\n"
                + "<table border = \"1\" align = \"center\">\n"
                + "<tr bgcolor = \"#949494\">\n"
                + "  <th>Session info</th><th>value</th>"
                + "</tr>\n"
                + "<tr>\n"
                + "  <td>id</td>\n"
                + "  <td>" + session.getId() + "</td>"
                + "</tr>\n"
                + "<tr>\n"
                + "  <td>Creation Time</td>\n"
                + "  <td>" + createTime + "  </td>"
                + "</tr>\n"
                + "<tr>\n"
                + "  <td>Time of Last Access</td>\n"
                + "  <td>" + lastAccessTime + "</td>"
                + "</tr>\n"
                + "<tr>\n"
                + "  <td>User ID</td>\n"
                + "  <td>" + userID + "</td>"
                + "</tr>\n"
                + "<tr>\n"
                + "  <td>Number of visits</td>\n"
                + "  <td>" + visitCount + "</td>"
                + "</tr>\n"
                + "</table>\n"
                + "</body>"
                + "</html>");
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
