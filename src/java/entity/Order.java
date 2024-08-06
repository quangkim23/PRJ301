/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.util.List;

/**
 *
 * @author quang
 */
public class Order {
    protected int Order_Id;
    protected User User_Id;
    protected List<Product> products;
    protected int Quantity;
    protected String Status;

    public Order(int Order_Id, User User_Id, List<Product> products, int Quantity, String Status) {
        this.Order_Id = Order_Id;
        this.User_Id = User_Id;
        this.products = products;
        this.Quantity = Quantity;
        this.Status = Status;
    }

    public int getOrder_Id() {
        return Order_Id;
    }

    public void setOrder_Id(int Order_Id) {
        this.Order_Id = Order_Id;
    }

    public User getUser_Id() {
        return User_Id;
    }

    public void setUser_Id(User User_Id) {
        this.User_Id = User_Id;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int Quantity) {
        this.Quantity = Quantity;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String Status) {
        this.Status = Status;
    }

    @Override
    public String toString() {
        return "Order{" + "Order_Id=" + Order_Id + ", User_Id=" + User_Id + ", products=" + products + ", Quantity=" + Quantity + ", Status=" + Status + '}';
    }


    
}
