/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import context.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
/**
 *
 * @author quang
 */
public class MyDAO extends DBContext{

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    String xSql = null;

    public MyDAO() {
        conn = connection;
    }

    public void finalize() {
        try {
            if (conn != null) {
                conn.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
