/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.util.*;

/**
 *
 * @author quang
 */
public class ShopPage {
    private List<Product> product;
    private int totalPage;
    private int pageSize;
    private int currentPage;
    
    public ShopPage(){
        
    }
    
    public ShopPage(List<Product> product, int totalPage, int pageSize, int currentPage) {
        this.product = product;
        this.totalPage = totalPage;
        this.pageSize = pageSize;
        this.currentPage = currentPage;
    }

    public List<Product> getProduct() {
        return product;
    }

    public void setProduct(List<Product> product) {
        this.product = product;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }
    
    
}
