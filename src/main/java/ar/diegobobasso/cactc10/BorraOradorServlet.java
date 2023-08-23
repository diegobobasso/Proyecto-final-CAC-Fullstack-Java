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
@WebServlet(name = "BorraOradorServlet", urlPatterns = {"/BorraOradorServlet"})
public class BorraOradorServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        Modelo g = new Modelo();
        
        String dni = request.getParameter("dni");
        
        try {
            g.BorrarOrador(dni);
            request.setAttribute("MsgLog", "ON");
            request.setAttribute("listaOradores", g.getOradores());
            request.getRequestDispatcher("administrador.jsp").forward(request, response);
        } catch (SQLException ex) {
            response.sendError(500, "Falla al leer la base de datos");
            }
        
    }

    
}
