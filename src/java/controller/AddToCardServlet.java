/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.*;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.util.*;
import entity.*;

/**
 *
 * @author quang
 */
// /cart
public class AddToCardServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        // Lấy ID của sản phẩm cần thêm hoặc xóa
        String id = request.getParameter("id");
        String action = request.getParameter("action");

        // Lấy hoặc tạo mới danh sách sản phẩm trong giỏ hàng từ session
        List<Product> cartList = (List<Product>) request.getSession().getAttribute("cartList");
        if (cartList == null) {
            cartList = new ArrayList<>();
            request.getSession().setAttribute("cartList", cartList);

        }

        if (id != null) { // Xóa sản phẩm khỏi giỏ hàng nếu action là remove
            if (action != null && action.equals("remove")) {
                cartList.removeIf(product -> product.getId().equals(id));
                request.getSession().setAttribute("cartList", cartList);
            } else {//thêm sản phẩm vào giỏ hàng
                ProductDAO productDAO = new ProductDAO();
                Product product = productDAO.getProductDetail(id);
                if (product != null) {// Kiểm tra xem sản phẩm đã tồn tại trong giỏ hàng chưa
                    boolean exists = false;
                    for (Product p : cartList) {
                        if (p.getId().equals(id)) {
                            // Nếu sản phẩm đã tồn tại, tăng số lượng lên 1
                            p.setQuantity(p.getQuantity() + 1);
                            exists = true;
                            break;
                        }
                    }
                    if (!exists) {
                        // Nếu sản phẩm chưa tồn tại, thêm mới vào giỏ hàng với quantity là 1
                        product.setQuantity(1);
                        cartList.add(product);
                    }
                }
            }
        }
        // Chuyển hướng người dùng về trang Cart.jsp
        response.sendRedirect("Cart.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
