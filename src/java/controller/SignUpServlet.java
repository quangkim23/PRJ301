/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.*;
import entity.*;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.net.URLEncoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author quang
 */
// /signup
public class SignUpServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8");
    String name = request.getParameter("name");
    String username = request.getParameter("username");
    String password1 = request.getParameter("password1");
    String password2 = request.getParameter("password2");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String address = request.getParameter("address");
    String dobString = request.getParameter("dob");
    String roleName = "User";

    String errorMessage = null; // Initialize error message

    if (name == null || name.trim().isEmpty() ||
            username == null || username.trim().isEmpty() ||
            password1 == null || password1.trim().isEmpty() ||
            password2 == null || password2.trim().isEmpty() ||
            email == null || email.trim().isEmpty() ||
            phone == null || phone.trim().isEmpty()) {
        errorMessage = "Vui lòng không để trống bất kỳ trường nào.";
    } else {
        LoginDAO ld = new LoginDAO();
        User existUser = ld.checkExist(username);
        if(!name.matches("[A-Za-z]+")){
            errorMessage="Tên của người dùng không hợp lệ";
        }else if (existUser != null) {
            errorMessage = "Tài khoản đã tồn tại";
        } else if (!password1.equals(password2)) {
            errorMessage = "Mật khẩu nhập lại không đúng";
        } else if (!isValidEmail(email)) {
            errorMessage = "Định dạng email không hợp lệ";
        } else if (!isValidPhone(phone)) {
            errorMessage = "Định dạng số điện thoại không hợp lệ";
        } else {
            java.sql.Date dob = null; // Convert date of birth string to java.sql.Date
            if (dobString != null && !dobString.isEmpty()) {
                try {
                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                    java.util.Date utilDate = sdf.parse(dobString);
                    dob = new java.sql.Date(utilDate.getTime());
                } catch (ParseException e) {
                    errorMessage = "Định dạng ngày sinh không hợp lệ";
                }
            }
            if (errorMessage == null) {
                // Create new user account
                request.setAttribute("errorMessage", "Đăng ký thành công!");
                ld.signUp(name, username, password1, email, address, phone, dob, roleName);
                response.sendRedirect("Account.jsp");
                return;
            }
        }
    }
    // Set error message as attribute in request
    request.setAttribute("errMessage", errorMessage);
    request.getRequestDispatcher("Account.jsp").forward(request, response);
}


    private boolean isValidEmail(String email) {
        // Email must end with "@gmail.com"
        if (email == null || email.isEmpty()) {
            return false;
        } else if (!email.endsWith("@gmail.com")) {
            return false;
        }
        return true;
    }

  private boolean isValidPhone(String phone) {
    // Phone number must be 10 digits and start with 0
    String phoneRegex = "^0\\d{9}$";
    Pattern pattern = Pattern.compile(phoneRegex);
    if (phone == null || phone.matches(".*[A-Za-z].*") || phone.matches(".*\\s+.*")) {
        return false;
    }
    Matcher matcher = pattern.matcher(phone);
    return matcher.matches();
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
        processRequest(request, response);
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
