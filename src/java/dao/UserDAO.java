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
public class UserDAO {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    String xSql = null;
    public List<User> getAllUser() {
        List<User> list = new ArrayList<>();
        xSql = "select*from Users";
        try {
            con = new DBContext().connection;
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new User(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getDate(8),
                        rs.getString(9)));
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public void deleteUser(String userId) {
        xSql = "DELETE FROM Users WHERE User_ID=?";
        try {
            con = new DBContext().connection;
            ps = con.prepareStatement(xSql);
            ps.setString(1, userId);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static void main(String[] args) {
        UserDAO u = new UserDAO();
        
    }
    public void insertUser(User u) {
        xSql = "INSERT INTO Users (User_ID, Name, Username, Password, Email, Address, Phone, Dob, role_name) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            con = new DBContext().connection;
            ps = con.prepareStatement(xSql);
            ps.setString(1, randomUserId()); // Hãy thay thế phương thức generateUserId() bằng cách phù hợp để tạo User_ID mới
            ps.setString(2, u.getName());
            ps.setString(3, u.getUserName());
            ps.setString(4, u.getPassWord());
            ps.setString(5, u.getEmail());
            ps.setString(6, u.getAddress());
            ps.setString(7, u.getPhone());
            ps.setDate(8, new java.sql.Date(u.getDob().getTime())); // Assuming dob is java.util.Date
            ps.setString(9, "User"); // Gán vai trò cho người dùng
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updateUser(String userId, String name, String username, String password, String email, String address) {
         xSql = "UPDATE Users SET Name=?, Username=?, Password=?, Email=?, Address=? WHERE User_ID=?";
        try {
            con = new DBContext().connection;
            ps = con.prepareStatement(xSql);
            ps.setString(1, name);
            ps.setString(2, username);
            ps.setString(3, password);
            ps.setString(4, email);
            ps.setString(5, address);
            ps.executeUpdate();
            ps.close();
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public User selectUserByID(String userID) {
        String selectSql = "SELECT * FROM Users WHERE User_ID=?";
        User user = null;
        try {
            con = new DBContext().connection;
            ps = con.prepareStatement(selectSql);
            ps.setString(1, userID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String name = rs.getString("Name");
                String username = rs.getString("Username");
                String password = rs.getString("Password");
                String email = rs.getString("Email");
                String address = rs.getString("Address");
                String phone = rs.getString("Phone");
                Date dob = rs.getDate("Dob");
                String roleName = rs.getString("role_name");

                // Tạo một đối tượng User với các thông tin lấy từ cơ sở dữ liệu
                user = new User(userID, name, username, password, email, address, phone, dob, roleName);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

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
