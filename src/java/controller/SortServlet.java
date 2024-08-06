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
// /sort
public class SortServlet extends HttpServlet {

   @Override
protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("sortBy");
        
        // Gọi DAO để lấy danh sách sản phẩm đã được sắp xếp
        ProductDAO pd = new ProductDAO();
        List<Product> sList = new ArrayList<>();
        switch (action) {
            case "nameAZ" -> sList = pd.sortAtoZ();
            case "nameZA" -> sList = pd.sortZtoA();
            case "priceLowToHigh" -> sList = pd.sortLowToHigh();
            case "priceHighToLow" -> sList = pd.sortHighToLow();
            case "popularity" -> sList = pd.sortProductsByPopularity();
            default -> {
                // Xử lý mặc định nếu không có sắp xếp được chọn
                sList = pd.getAllProduct(); 
            }
        }
        
        // Chuyển danh sách sản phẩm đã được sắp xếp lên giao diện người dùng để hiển thị
        request.setAttribute("ListProduct", sList);
        request.getRequestDispatcher("Shop.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
    }
}
