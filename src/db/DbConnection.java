/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 *
 * @author Another User
 */
public class DbConnection {
    public static Connection getConnect(){
        Connection con=null;
        try {
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/railway", "root","123");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
}
