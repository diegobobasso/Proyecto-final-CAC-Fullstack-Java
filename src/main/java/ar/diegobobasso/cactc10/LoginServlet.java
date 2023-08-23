/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ar.diegobobasso.cactc10;

import ar.diegobobasso.cactc10.resources.Modelo;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;

/**
 *
 * @author diego
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/Login"})
public class LoginServlet extends HttpServlet {

    
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
        
        String usuario = "Diego";
        String password = "1234";
        
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        
        if( user.equals(usuario) && pass.equals(password)){
            
            request.setAttribute("MsgLog", "ON");
            try {
                Modelo g = new Modelo();
                request.setAttribute("listaOradores" , g.getOradores());
                request.getRequestDispatcher("administrador.jsp").forward(request, response);
            
            } catch  ( SQLException ex) {
                ex.getLocalizedMessage();
            }
            
            
        }
        else {
           
            request.getSession().setAttribute("MsgLog", "OFF");
            request.getRequestDispatcher("administrador.jsp").forward(request, response);
            
            
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
