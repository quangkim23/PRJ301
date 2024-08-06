/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.*;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import entity.*;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author quang
 */
// /login
public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String uname = request.getParameter("username");
        String pass = request.getParameter("password");

        if (uname == null ||pass == null) {
                 request.setAttribute("errorMessage", "Vui lòng nhập tài khoản và mật khẩu.");
                 request.getRequestDispatcher("Account.jsp").forward(request, response);
        }else {
            LoginDAO ac = new LoginDAO();
            User u = ac.login(uname, pass);
            if (u == null) {
                request.setAttribute("errorMessage", "Tài khoản không tồn tại");
                request.getRequestDispatcher("Account.jsp").forward(request, response);
            } else {
                // Đăng nhập thành công
                HttpSession session = request.getSession();
                session.setAttribute("user", u); // Lưu thông tin người dùng vào session
                 if (ac.isAdmin(uname)) {
                    // Nếu người dùng là Admin, chuyển hướng đến trang quản lý sản phẩm
                    response.sendRedirect("managerproduct");
                } else {
                    // Ngược lại, chuyển hướng đến trang chủ
                    response.sendRedirect("home");
                }
            }
        }
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
