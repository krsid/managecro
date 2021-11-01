/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package todoapp.web;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import todoapp.dao.UserDao;
import todoapp.model.UserBeams;
import static java.lang.System.out;
import javax.servlet.annotation.WebServlet;

public class UserController extends HttpServlet
{
    private static final long serialVersionUID = 1L;
   
    public void init()
    { 
        System.out.println("inside init");
      
    }
    
protected  void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException
{
    System.out.println("inside dopost");
    register(req,resp);    
}
protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    register(request,response);        
    }

private void register(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
  String username=request.getParameter("username");
  String password=request.getParameter("password");
  UserBeams user=new UserBeams();
  user.setUsername(username);
  user.setPassword(password);
   
  try
  {
      int result=UserDao.RegisterUser(user);
      out.println("<h1>Outside result<h1>");
  if(result==1)
  {
      request.setAttribute("Notification","User Registered Successfully");      
      out.println("inside result");
  }
  
    }catch(Exception ex)
  {
      ex.printStackTrace();
  }
  out.println("Outside result");
  
  RequestDispatcher dispatcher = request.getRequestDispatcher("/login/login.jsp");
  dispatcher.forward(request, response);
}

}