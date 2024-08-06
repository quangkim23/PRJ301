/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dao.*;
import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.util.*;
import entity.*;
/**
 *
 * @author quang
 */

 //search product url: /search
public class SearchServlet extends HttpServlet {

 protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String xSearch = request.getParameter("txt");
        if(xSearch == null || xSearch.trim().isEmpty()){
            response.sendRedirect("shop");
            return;
        }
        ProductDAO p = new ProductDAO();
        List<Product> sName = p.searchByName(xSearch);
        request.setAttribute("ListProduct", sName);
        request.getRequestDispatcher("Shop.jsp").forward(request, response);
    } 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }
}
