/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.util.*;
import entity.*;
import java.sql.*;
import java.sql.Date;

/**
 *
 * @author quang
 */
public class LoginDAO {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    String xSql = null;

    public User login(String userName, String pass) {
        xSql = "SELECT * FROM Users WHERE Username = ? AND Password = ?";
        try {
            con = new DBContext().connection;
            ps = con.prepareStatement(xSql);
            ps.setString(1, userName);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new User(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3));
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean isAdmin(String userName) {
        xSql = "SELECT role_name FROM Users WHERE Username = ?";
        try {
            con = new DBContext().connection;
            ps = con.prepareStatement(xSql);
            ps.setString(1, userName);
            rs = ps.executeQuery();
            if (rs.next()) {
                String roleName = rs.getString("role_name");
                return roleName != null && roleName.equalsIgnoreCase("admin");
            }
            rs.close();
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    //kiem tra xem tai khoan da ton tai chua
    public User checkExist(String userName) {
        xSql = "SELECT * FROM Users WHERE Username = ?";
        try {
            con = new DBContext().connection;
            ps = con.prepareStatement(xSql);
            ps.setString(1, userName);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new User(rs.getString("User_ID"),
                        rs.getString("Username"),
                        rs.getString("Password"));
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void signUp(String name, String username, String password, String email, String address, String phone, Date dob, String rollname) {
        xSql = "INSERT INTO Users (User_ID, Name, Username, Password, Email, Address, Phone, Dob, role_name) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            con = new DBContext().connection;
            ps = con.prepareStatement(xSql);
            ps.setString(1, randomUserId()); // Hãy thay thế phương thức generateUserId() bằng cách phù hợp để tạo User_ID mới
            ps.setString(2, name);
            ps.setString(3, username);
            ps.setString(4, password);
            ps.setString(5, email);
            ps.setString(6, address);
            ps.setString(7, phone);
            ps.setDate(8, new java.sql.Date(dob.getTime())); // Assuming dob is java.util.Date
            ps.setString(9, "User"); // Gán vai trò mặc định cho người dùng
            ps.executeUpdate();
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    // tạo một User_ID ngẫu nhiên
    private String randomUserId() {
        String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        StringBuilder userIdBuilder = new StringBuilder();
        Random rnd = new Random();
        while (userIdBuilder.length() < 4) { // Độ dài User_ID là 4 ký tự
            int index = (int) (rnd.nextFloat() * characters.length());
            userIdBuilder.append(characters.charAt(index));
        }
        String userId = userIdBuilder.toString();
        return userId;
    }
}
