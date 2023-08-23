/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ar.diegobobasso.cactc10;

import ar.diegobobasso.cactc10.resources.Orador;
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
@WebServlet(name = "EditarServlet", urlPatterns = {"/EditarServlet"})
public class EditarServlet extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Modelo g = new Modelo();
        
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String dni = request.getParameter("dni");
        String fec = request.getParameter("fecha");
        String tema = request.getParameter("tema");
        
        
        try {
            g.ModificarOrador(new Orador(dni, nombre, apellido, fec, tema));
            request.setAttribute("MsgLog", "ON");
            request.setAttribute("listaOradores", g.getOradores());
            request.getRequestDispatcher("administrador.jsp").forward(request, response);
        } catch (SQLException ex) {
            response.sendError(500, "Falla al leer la base de datos");
            }
        
        
    
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
