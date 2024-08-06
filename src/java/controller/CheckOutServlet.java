/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import entity.*;
import java.io.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import java.util.*;

/**
 *
 * @author quang
 */
///checkout
public class CheckOutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         response.setContentType("text/html;charset=UTF-8");
    String action = request.getParameter("action");

    // Kiểm tra xem hành động là gì
    if ("placeOrder".equals(action)) {
        // Reset lại danh sách sản phẩm trong giỏ hàng bằng cách gửi lại trống về cart
        List<Product> emptyList = new ArrayList<>(); // Tạo danh sách rỗng
        request.getSession().setAttribute("cartList", emptyList);

        // Chuyển hướng người dùng về trang home
        response.sendRedirect("home");
        return; // Kết thúc phương thức doGet sau khi xử lý hành động "placeOrder"
    }

    String totalPrice = request.getParameter("totalmoney");

    // Đẩy giá trị tổng giá sang trang Checkout.jsp thông qua request attribute
    request.setAttribute("totalmoney", totalPrice);
    request.getRequestDispatcher("Checkout.jsp").forward(request, response);
    }

}
