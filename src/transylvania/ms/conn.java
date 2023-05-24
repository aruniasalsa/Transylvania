/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package transylvania.ms;
import java.sql.*;
import javax.swing.JOptionPane;
/**
 *
 * @author 
 */
public class conn {
    public static Connection getCon(){
        try {
           final String DATABASE_URL = "jdbc:mysql://localhost:3306/transylvania_database";
           String user = "root";
           String password = "";
           Class.forName("com.mysql.cj.jdbc.Driver");
           Connection con = DriverManager.getConnection(DATABASE_URL,user,password);
           return con;
       } catch (Exception e) {
           return null;
       }
               
    }
}
