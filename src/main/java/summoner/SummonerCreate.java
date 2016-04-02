/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package summoner;

import com.robrua.orianna.api.core.RiotAPI;
import com.robrua.orianna.store.DataStore;
import com.robrua.orianna.store.HibernateDB;
import com.robrua.orianna.type.api.LoadPolicy;
import com.robrua.orianna.type.core.common.Region;
import com.robrua.orianna.type.core.summoner.Summoner;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Joseph
 */
@WebServlet(name = "summonercreate", urlPatterns = {"/summonercreate"})
public class SummonerCreate extends HttpServlet {

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
            out.println("<title>Servlet summonercreate</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet summonercreate at " + request.getContextPath() + "</h1>");
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
        
        // Default to North America
        Region region = Region.NA;
        
        switch (request.getParameter("server")) {
            case "NA":
                region = Region.NA;
                break;
        }
        
        RiotAPI.setLoadPolicy(LoadPolicy.LAZY);
        RiotAPI.setRegion(region);
        RiotAPI.setAPIKey("46f55837-83a0-4e5c-826f-283ea7b47fc3");

        HibernateDB db = HibernateDB.builder().URL("jdbc:mysql://" + System.getenv("OPENSHIFT_MYSQL_DB_HOST") + "/java").username(System.getenv("OPENSHIFT_MYSQL_DB_USERNAME")).password(System.getenv("OPENSHIFT_MYSQL_DB_PASSWORD")).build();
        RiotAPI.setDataStore(db);

        // Do your thing here. Data will be cached in the Hibernate DB as it would with the standard in-memory cache.
        RiotAPI.getSummonerByName(request.getParameter("summoner_name"));
                        
        db.close();
        
        response.sendRedirect("/FirstProject/SummonerList");
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
