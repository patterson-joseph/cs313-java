/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Joseph
 */
@WebServlet(name = "login", urlPatterns = {"/login"})
public class Login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String dataDirectory = System.getenv("OPENSHIFT_DATA_DIR");
        File file = new File(dataDirectory + "/users.txt");
      
        // If our username file doesn't exist create a base one
        if(!file.exists()) {
          // creates the file
          file.createNewFile();
          // creates a FileWriter Object
          FileWriter writer = new FileWriter(file); 
          // Writes the content to the file
          writer.write("testuser\ntestpassword"); 
          writer.flush();
          writer.close();
        }
      
        List<String> user_list = new ArrayList<>();
        BufferedReader reader = null;
        
        try {
            String content;
            reader = new BufferedReader(new FileReader(dataDirectory + "/users.txt"));
            while ((content = reader.readLine()) != null) {
                user_list.add(content);
            }
        } catch (Exception e) {
            try (PrintWriter out = response.getWriter()) {
                out.println(e.getMessage());
            }
        } finally {
            if (reader != null) {
                reader.close();
            }
        }
    
        if(request.getParameter("username").equals(user_list.get(0)) && request.getParameter("password").equals(user_list.get(1))) {
            HttpSession session = request.getSession();
            String username = request.getParameter("username");
            session.setAttribute("username", username);
            response.sendRedirect("/FirstProject/create_post.jsp");
        } else {
            response.sendRedirect("/FirstProject/invalid_login.jsp");
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
