/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author quang
 */
public class ProductCategory{
    protected String Id;
    protected String name;
    protected String PetCategory;

    @Override
    public String toString() {
        return "ProductCategory{" + "Id=" + Id + ", name=" + name + ", PetCategory=" + PetCategory + '}';
    }

    public ProductCategory(String Id, String name, String PetCategory) {
        this.Id = Id;
        this.name = name;
        this.PetCategory = PetCategory;
    }

    public String getId() {
        return Id;
    }

    public void setId(String Id) {
        this.Id = Id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPetCategory() {
        return PetCategory;
    }

    public void setPetCategory(String PetCategory) {
        this.PetCategory = PetCategory;
    }

    
    
}
