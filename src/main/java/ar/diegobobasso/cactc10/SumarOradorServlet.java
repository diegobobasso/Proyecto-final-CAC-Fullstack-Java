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
import java.util.Calendar;

/**
 *
 * Diego Hernán BOBASSO
 */
@WebServlet(name = "SumarOrador", urlPatterns = {"/SumarOrador"})
public class SumarOradorServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int resultado = -1;
        
        Modelo g = new Modelo();
        
        Calendar f = Calendar.getInstance();
        
        String fec = Integer.toString(f.get(Calendar.DAY_OF_MONTH))+
                    "/" + Integer.toString(f.get(Calendar.MONTH)) +
                    "/" + Integer.toString(f.get(Calendar.YEAR));

        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String dni = request.getParameter("dni");
        String tema = request.getParameter("tema");
        
        try {
            resultado = g.setOrador(new Orador(dni, nombre, apellido, fec, tema));
        } catch (SQLException ex) {
            ex.printStackTrace();
            response.sendError(500, "Falla al escribir la base de datos");
            }
        try {
            request.setAttribute("listaOradores", g.getOradores());
            request.setAttribute("resultado", resultado);
        } catch (SQLException ex) {
            response.sendError(500, "Falla al leer la base de datos");
            }
        request.getRequestDispatcher("listaroradores.jsp").forward(request, response);
        
        
    }

}
