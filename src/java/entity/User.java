/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.util.Date;

/**
 *
 * @author quang
 */
public class User {
    protected String Id;
    protected String name;
    protected String UserName;
    protected String passWord;
    protected String Email;
    protected String Address;
    protected String Phone;
    protected Date Dob;
    protected String rollName;

    public User(String Id, String name, String UserName, String passWord, String Email, String Address, String Phone, Date Dob, String rollName) {
        this.Id = Id;
        this.name = name;
        this.UserName = UserName;
        this.passWord = passWord;
        this.Email = Email;
        this.Address = Address;
        this.Phone = Phone;
        this.Dob = Dob;
        this.rollName = rollName;
    }

    public User(String Id, String UserName, String passWord, String Email, String Address, String Phone, Date Dob) {
        this.Id = Id;
        this.UserName = UserName;
        this.passWord = passWord;
        this.Email = Email;
        this.Address = Address;
        this.Phone = Phone;
        this.Dob = Dob;
    }

    public User(String Id, String name, String UserName, String passWord, String Email, String Address) {
        this.Id = Id;
        this.name = name;
        this.UserName = UserName;
        this.passWord = passWord;
        this.Email = Email;
        this.Address = Address;
    }

    public User(String Id, String UserName, String passWord) {
        this.Id = Id;
        this.UserName = UserName;
        this.passWord = passWord;
    }
    
    public User(String UserName) {
        this.UserName = UserName;
    }

    public String getId() {
        return Id;
    }

    public void setId(String Id) {
        this.Id = Id;
    }

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public Date getDob() {
        return Dob;
    }

    public void setDob(Date Dob) {
        this.Dob = Dob;
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRollName() {
        return rollName;
    }

    public void setRollName(String rollName) {
        this.rollName = rollName;
    }

    @Override
    public String toString() {
        return "User{" + "Id=" + Id + ", name=" + name + ", UserName=" + UserName + ", passWord=" + passWord + ", Email=" + Email + ", Address=" + Address + ", Phone=" + Phone + ", Dob=" + Dob + ", rollName=" + rollName + '}';
    }
    
}
