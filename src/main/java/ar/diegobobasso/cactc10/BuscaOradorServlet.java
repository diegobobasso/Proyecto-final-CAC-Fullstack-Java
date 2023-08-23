package ar.diegobobasso.cactc10;

import ar.diegobobasso.cactc10.resources.Orador;
import ar.diegobobasso.cactc10.resources.Modelo;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author diego
 */
@WebServlet(name = "BuscarOrador", urlPatterns = {"/BuscarOrador"})
public class BuscaOradorServlet extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String dni = request.getParameter("dni");
        
        Modelo g = new Modelo();
        Orador Orad = g.getOrador(dni);
        request.setAttribute("orador",  Orad);
        request.getRequestDispatcher("editaorador.jsp").forward(request, response);
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
