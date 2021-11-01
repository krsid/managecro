/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package todoapp.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LogoutController extends HttpServlet {
  protected void doGet(HttpServletRequest request,
    HttpServletResponse response) throws ServletException, IOException {

    response.setHeader("Cache-Control", "no-cache, no-store,must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires","0");

    request.getSession().invalidate();
    response.sendRedirect("login/login.jsp");
  }
}