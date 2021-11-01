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
import todoapp.model.UserBeams;
import todoapp.JdbcUtils.JdbcUtils;

public class LoginDao {
 
    public static boolean verrifyLogin(UserBeams user)throws SQLException
    {
        String uname=user.getUsername();
        String password=user.getPassword();     
        try
        {
	    Connection conn=JdbcUtils.getConnection();        
            PreparedStatement ps=conn.prepareStatement("Select password from users where username=?");
            ps.setString(1,uname);            
            ResultSet rs=ps.executeQuery();
            if(rs!=null)
            {
                rs.next();
                String pass=rs.getString(1);
                return  pass.equals(password);
            }
                 
        
        }
        catch(Exception ex)
        {
          System.out.println("An error has occurred.");
          System.out.println("See full details below.");
          ex.printStackTrace();
        }
        return false;
    }
}
