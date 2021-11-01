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
import java.util.ArrayList;
import java.util.List;
import todoapp.model.Todo;
import todoapp.JdbcUtils.JdbcUtils;
import todoapp.model.UserBeams;


public class TodoDao {
    
    public TodoDao() {}

    public static void insertTodo(Todo todo) throws SQLException {
       
        try
        {
            Connection conn=JdbcUtils.getConnection();
            PreparedStatement ps=conn.prepareStatement("Insert into todos values(?,?,?)");
            ps.setString(1,todo.getTitle());
            ps.setString(2,todo.getUsername());
            ps.setString(3,todo.getDescription());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("An error has occurred.");
          System.out.println("See full details below.");
          ex.printStackTrace();
        }
    }


    public static List < Todo > selectAllTodos(String uname) {

        List < Todo > todos = new ArrayList < > ();        
        try{
            Connection conn=JdbcUtils.getConnection();   
            PreparedStatement ps = conn.prepareStatement("select * from todos where username=?");
            ps.setString(1, uname);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {                
                String title = rs.getString("title");
                String username = rs.getString("username");
                String description = rs.getString("description");
                todos.add(new Todo(title, username, description));
            }
        } catch (SQLException ex) {
            System.out.println("An error has occurred.");
          System.out.println("See full details below.");
          ex.printStackTrace();
        }
        return todos;
    }
    
    
    public boolean deleteTodo(Todo todo,UserBeams user) throws SQLException {
        boolean rowDeleted;
        String uname=user.getUsername();
        String title=todo.getTitle();
        
            Connection conn=JdbcUtils.getConnection();   
            PreparedStatement ps = conn.prepareStatement("delete from todos where username=? and title=? ");
            ps.setString(1,uname);
            ps.setString(2,title);
            rowDeleted = ps.executeUpdate() > 0;
        
        return rowDeleted;
    }

 
}
