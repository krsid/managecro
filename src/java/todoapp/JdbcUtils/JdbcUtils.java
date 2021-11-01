/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package todoapp.JdbcUtils;

import java.sql.*;
public class JdbcUtils 
{   
    public static void main(String[] args) {
    JdbcUtils objconn=new JdbcUtils();
    Connection connection=null;
    connection=objconn.getConnection();
    System.out.println(connection);
}
    
    public static Connection getConnection()
    {
         Connection conn=null;
         try{
           Class.forName("com.mysql.cj.jdbc.Driver");
           conn=DriverManager.getConnection("jdbc:mysql://sql5.freesqldatabase.com:3306/sql5448029","sql5448029","zgHN8lyKus");
           if(conn!=null)
               System.out.println ("Database connection established");
        }catch(Exception ex)
        {
         System.out.println(ex + "fsdfs");   
        }
        return conn;      
    }
       
}
