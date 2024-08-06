/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author quang
 */
public class Product {
    private String Id;
    private String Category_Id;
    private String Pet_Id;
    private String Name;
    private float Price;
    private int Quantity;
    private String img;

    public Product() {
    }

    public Product(String Id, String Category_Id, String Pet_Id, String Name, float Price, int Quantity, String img) {
        this.Id = Id;
        this.Category_Id = Category_Id;
        this.Pet_Id = Pet_Id;
        this.Name = Name;
        this.Price = Price;
        this.Quantity = Quantity;
        this.img = img;
    }
    public Product(String Name, float Price, int Quantity, String img) {
                this.Name = Name;
                this.Price = Price;
                this.Quantity = Quantity;
                this.img = img;
            }
    public String getId() {
        return Id;
    }

    public void setId(String Id) {
        this.Id = Id;
    }

    public String getCategory_Id() {
        return Category_Id;
    }

    public void setCategory_Id(String Category_Id) {
        this.Category_Id = Category_Id;
    }

    public String getPet_Id() {
        return Pet_Id;
    }

    public void setPet_Id(String Pet_Id) {
        this.Pet_Id = Pet_Id;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public float getPrice() {
        return Price;
    }

    public void setPrice(float Price) {
        this.Price = Price;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int Quantity) {
        this.Quantity = Quantity;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    @Override
    public String toString() {
        return "Product{" + "Id=" + Id + ", Category_Name=" + Category_Id + ", Pet_Name=" + Pet_Id + ", Name=" + Name + ", Price=" + Price + ", Quantity=" + Quantity + ", img=" + img + '}';
    }

   
}
