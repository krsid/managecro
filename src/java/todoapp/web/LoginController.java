package todoapp.web;

import java.io.IOException;
import static java.lang.System.out;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import todoapp.dao.LoginDao;
import todoapp.model.UserBeams;

public class LoginController extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    public void init()
    { 
        System.out.println("inside init");

    }
    


protected  void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException
{
    System.out.println("inside dopost");
    login(req,resp);    
}
protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       
    }
private void login(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
  String uname=request.getParameter("username");
  String pass=request.getParameter("password");
  UserBeams user=new UserBeams();
  user.setUsername(uname);
  user.setPassword(pass);
 
  try
  {
      boolean result=LoginDao.verrifyLogin(user);
  
  if(result)
  {
      request.setAttribute("Notification","Login Successfully");
      
      RequestDispatcher dispatcher = request.getRequestDispatcher("/main/todo.jsp");
      HttpSession session = request.getSession();
      session.setAttribute("USERNAME",uname);
      dispatcher.forward(request, response);
      out.println("inside result");
  }
  else
  {
      RequestDispatcher dispatcher = request.getRequestDispatcher("/login/login.jsp");
      dispatcher.forward(request, response);
  }
      
  }catch(Exception ex)
  {
      ex.printStackTrace();
  }
  
}

}