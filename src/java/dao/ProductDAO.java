/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.util.*;
import entity.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author quang
 */
public class ProductDAO {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    String xSql = null;

    //hiển thị ra toàn bộ sản phẩm ( Products)
    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        xSql = "select*from Products";
        try {
            con = new DBContext().connection;
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getFloat(5),
                        rs.getInt(6),
                        rs.getString(7)));
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Product> getAllProduct(List<Product> pList) {
        List<Product> list = new ArrayList<>();
        xSql = "select*from Products WHERE Product_ID=?";
        try {
            if (!pList.isEmpty()) {
                for (Product p : pList) {
                    con = new DBContext().connection;
                    ps = con.prepareStatement(xSql);
                    ps.setString(1, p.getId());
                    rs = ps.executeQuery();
                    while (rs.next()) {
                        list.add(new Product(rs.getString(1),
                                rs.getString(2),
                                rs.getString(3),
                                rs.getString(4),
                                rs.getFloat(5),
                                rs.getInt(6),
                                rs.getString(7)));
                    }
                    rs.close();
                    ps.close();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    // get all clothes for dog
    public List<Product> getAllClothes() {
        List<Product> list = new ArrayList<>();
        xSql = "SELECT * FROM Products WHERE Product_Name LIKE '%Áo%'";
        try {
            con = new DBContext().connection;
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getFloat(5),
                        rs.getInt(6),
                        rs.getString(7)));
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    // get all products by pet category 
    public List<PetCategory> getPetCategories() {
        List<PetCategory> listC = new ArrayList<>();
        xSql = "SELECT * FROM Pet_Categories";
        try {
            con = new DBContext().connection;
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                listC.add(new PetCategory(rs.getString(1),
                        rs.getString(2)));
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listC;
    }

    // lấy thông tin của 1 sản phẩm theo product id
    public Product getProductDetail(String pId) {
        xSql = "SELECT p.Product_ID, pc.ProductCategory_Name, pe.PetCategory_Name, p.Product_Name, p.Price, p.Quantity, p.Img "
                + "FROM Products p "
                + "JOIN Product_Categories pc ON pc.Product_Category_ID = p.Product_Category_ID "
                + "JOIN Pet_Categories pe ON pe.PetCategory_ID = p.PetCategory_ID "
                + "WHERE Product_ID=?";
        try {
            con = new DBContext().connection;
            ps = con.prepareStatement(xSql);
            ps.setString(1, pId);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getFloat(5),
                        rs.getInt(6),
                        rs.getString(7));

            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    //tìm kiếm và hiển thị all sản phẩm theo pet categories ID 
    public List<Product> search(String cateId) {
        List<Product> list = new ArrayList<>();
        xSql = "select*from Products where PetCategory_ID=?";
        try {
            con = new DBContext().connection;
            ps = con.prepareStatement(xSql);
            ps.setString(1, cateId);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getFloat(5),
                        rs.getInt(6),
                        rs.getString(7)));
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Product> getProductById(String pId) {
        List<Product> list = new ArrayList<>();
        xSql = "select*from Products where Product_ID=?";
        try {
            con = new DBContext().connection;
            ps = con.prepareStatement(xSql);
            ps.setString(1, pId);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getFloat(5),
                        rs.getInt(6),
                        rs.getString(7)));
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    // tìm kiếm tất cả sản phẩm theo petID và categories id
    public List<Product> search(String PetId, String Product_name) {
        List<Product> list = new ArrayList<>();
        xSql = "SELECT p.*  FROM Products p JOIN Product_Categories pc ON p.Product_Category_ID = pc.Product_Category_ID WHERE p.PetCategory_ID =? AND pc.ProductCategory_Name LIKE ?";
        try {
            con = new DBContext().connection;
            ps = con.prepareStatement(xSql);
            ps.setString(1, PetId);
            ps.setString(2, "%" + Product_name + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getFloat(5),
                        rs.getInt(6),
                        rs.getString(7)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    // tìm kiếm theo tên sản phẩm
    public List<Product> searchByName(String name) {
        List<Product> list = new ArrayList<>();
        xSql = "SELECT * FROM Products WHERE Product_Name LIKE ?";
        try {
            con = new DBContext().connection;
            ps = con.prepareStatement(xSql);
            ps.setString(1, "%" + name + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getFloat(5),
                        rs.getInt(6),
                        rs.getString(7)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    // Sắp xếp theo giá (Thấp-Cao)
    public List<Product> sortLowToHigh() {
        List<Product> list = new ArrayList<>();
        xSql = "SELECT * FROM Products ORDER BY Price ASC";
        try {
            con = new DBContext().connection;
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getFloat(5),
                        rs.getInt(6),
                        rs.getString(7)));
            }
            rs.close();
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    // Sắp xếp theo giá (Cao - Thấp)
    public List<Product> sortHighToLow() {
        List<Product> list = new ArrayList<>();
        xSql = "SELECT * FROM Products ORDER BY Price DESC";
        try {
            con = new DBContext().connection;
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getFloat(5),
                        rs.getInt(6),
                        rs.getString(7)));
            }
            rs.close();
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    // Sắp xếp theo bảng chữ cái A - Z
    public List<Product> sortAtoZ() {
        List<Product> list = new ArrayList<>();
        xSql = "SELECT * FROM Products ORDER BY Product_Name ASC";
        try {
            con = new DBContext().connection;
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getFloat(5),
                        rs.getInt(6),
                        rs.getString(7)));
            }
            rs.close();
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    // Sắp xếp theo bảng chữ cái Z-A
    public List<Product> sortZtoA() {
        List<Product> list = new ArrayList<>();
        xSql = "SELECT * FROM Products ORDER BY Product_Name DESC";
        try {
            con = new DBContext().connection;
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getFloat(5),
                        rs.getInt(6),
                        rs.getString(7)));
            }
            rs.close();
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    // săps xếp theo lượt bán từ nhiều đến ít 5 sp bán nhiều nhất
    public List<Product> sortProductsByPopularity() {
        List<Product> list = new ArrayList<>();
        String xSql = "SELECT TOP 5 "
                + "    p.*,"
                + "    SUM(o.Quantity) AS TotalSold,"
                + "    p.Quantity - SUM(o.Quantity) AS Remaining "
                + "FROM "
                + "    Products p "
                + "LEFT JOIN "
                + "    Orders o ON p.Product_ID = o.Product_ID "
                + "GROUP BY "
                + "    p.Product_ID, p.Product_Name, p.Price, p.PetCategory_ID, p.Product_Category_ID, p.Quantity, p.Img "
                + "ORDER BY "
                + "    TotalSold DESC";
        try {
            // Establish connection
            con = new DBContext().connection;
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            // Iterate through the result set
            while (rs.next()) {
                // Create Product object and add to list
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getFloat(5),
                        rs.getInt(6),
                        rs.getString(7)));
            }
            // Close resources
            rs.close();
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Close connection
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return list;
    }

    public void insertProduct(String id, String categoryId, String petId, String name, float price, int quantity, String img) {
        xSql = "INSERT INTO Products (Product_ID, Product_Category_ID, PetCategory_ID, Product_Name, Price, Quantity, Img) VALUES (?, ?, ?, ?, ?, ?, ?)";
        try {
            con = new DBContext().connection;
            ps = con.prepareStatement(xSql);
            ps.setString(1, id);
            ps.setString(2, categoryId);
            ps.setString(3, petId);
            ps.setString(4, name);
            ps.setFloat(5, price);
            ps.setInt(6, quantity);
            ps.setString(7, img);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Đóng các resource
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }

    public void updateProductById(String id, String Category_Id, String Pet_Id, String name, float price, int quantity, String image) {
        xSql = "UPDATE Products SET Product_Category_ID=?, PetCategory_ID=?, Product_Name=?, Price=?, Quantity=?, Img=? WHERE Product_ID=?";
        try {
            con = new DBContext().connection;
            ps = con.prepareStatement(xSql);
            ps.setString(1, Category_Id);
            ps.setString(2, Pet_Id);
            ps.setString(3, name);
            ps.setFloat(4, price);
            ps.setInt(5, quantity);
            ps.setString(6, image);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Đóng các resource
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }

    public void deleteProductById(String id) {
        xSql = "DELETE FROM Products WHERE Product_ID=?";
        try {
            con = new DBContext().connection;
            ps = con.prepareStatement(xSql);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Đóng các resource
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }

    public static void main(String[] args) {
        ProductDAO pd = new ProductDAO();
        List<Product> list = pd.sortHighToLow();
        for (Product p : list) {
            System.out.println(p); // Output each product in the sorted list
        }
    }
}
