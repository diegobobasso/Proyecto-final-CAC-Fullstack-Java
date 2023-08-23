/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ar.diegobobasso.cactc10;

import ar.diegobobasso.cactc10.resources.Modelo;

import java.io.IOException;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author diego
 */
@WebServlet(name = "VolverServlet", urlPatterns = {"/VolverServlet"})
public class VolverServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            Modelo g = new Modelo();
            request.setAttribute("MsgLog", "ON");
            request.setAttribute("listaOradores" , g.getOradores());
            request.getRequestDispatcher("administrador.jsp").forward(request, response);
            
        } catch  ( SQLException ex) {
            ex.getLocalizedMessage();
        }
    }
    
}
