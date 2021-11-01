/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package todoapp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import todoapp.model.*;
import todoapp.JdbcUtils.JdbcUtils;

public class UserDao {
   
    public static int RegisterUser(UserBeams user)throws SQLException
   {
     String username=user.getUsername();
     String password=user.getPassword();
     System.out.println(username+","+password);
     
     int result=0;
     try
     {
         Connection conn=JdbcUtils.getConnection();  
         PreparedStatement ps=conn.prepareStatement("INSERT INTO users(username,password)values(?,?)");
         ps.setString(1,username);
         ps.setString(2,password);
         result=ps.executeUpdate();         
          
     }
     catch(Exception  err)
     {
          System.out.println("An error has occurred.");
          System.out.println("See full details below.");
          err.printStackTrace();
     }
     return result;
             
   }
    
}
