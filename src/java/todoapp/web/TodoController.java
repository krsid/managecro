package todoapp.web;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import todoapp.dao.TodoDao;
import todoapp.model.Todo;


public class TodoController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private TodoDao todoDAO;

    public void init() {
        todoDAO = new TodoDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String action = request.getMethod();

        try {
            switch (action) {
                
                case "GET":
                    listTodo(request, response);
                    break;
                case "POST":
                    insertTodo(request, response);
                    break;
                default:
                    RequestDispatcher dispatcher = request.getRequestDispatcher("login/login.jsp");
                    dispatcher.forward(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void listTodo(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException, ServletException {  
        HttpSession s = request.getSession();
        String username=(String)s.getAttribute("USERNAME");
        List < Todo > listTodo=new ArrayList<>() ;
        listTodo=TodoDao.selectAllTodos(username);               
        s.setAttribute("listTodo", listTodo);
        RequestDispatcher dispatcher = request.getRequestDispatcher("main/alltask.jsp");
        dispatcher.forward(request, response);
    }

  

    private void insertTodo(HttpServletRequest request, HttpServletResponse response) throws ServletException, SQLException, IOException {

        String title = request.getParameter("title");        
        HttpSession session = request.getSession();   
        String username=(String)session.getAttribute("USERNAME");
        String description = request.getParameter("description");    
        Todo newTodo = new Todo(title,username,description);
        TodoDao.insertTodo(newTodo);
        RequestDispatcher dispatcher = request.getRequestDispatcher("main/create.jsp");
        dispatcher.forward(request, response);
    }

  
}