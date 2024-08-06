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
public class Payment {
    private int Payment_Id;
    private String Method;
    private float Total;
    private Date Date_Time;

    public Payment(int Payment_Id, String Method, float Total, Date Date_Time) {
        this.Payment_Id = Payment_Id;
        this.Method = Method;
        this.Total = Total;
        this.Date_Time = Date_Time;
    }

    public int getPayment_Id() {
        return Payment_Id;
    }

    public void setPayment_Id(int Payment_Id) {
        this.Payment_Id = Payment_Id;
    }

    public String getMethod() {
        return Method;
    }

    public void setMethod(String Method) {
        this.Method = Method;
    }

    public float getTotal() {
        return Total;
    }

    public void setTotal(float Total) {
        this.Total = Total;
    }

    public Date getDate_Time() {
        return Date_Time;
    }

    public void setDate_Time(Date Date_Time) {
        this.Date_Time = Date_Time;
    }
    
}
