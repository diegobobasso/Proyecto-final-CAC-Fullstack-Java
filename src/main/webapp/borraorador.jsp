<%-- 
    Document   : borraorador
    Created on : 6 jul. 2023, 02:27:13
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Proyecto Integrador Bootstrap</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
      
        <link rel="stylesheet" href="css/style.css">
    </head>

    <body>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
  
        
        <jsp:include page="/WEB-INF/comun/nav.jsp"/>

            
        <c:set var="orad" value="${orad}" /> 
        
                   <div class="container-fluid text-center p-3">
                        <h2><b>DESEA BORRAR AL ORADOR</b></h2>
                    </div>
            
                        <%@ page import="ar.diegobobasso.cactc10.resources.Orador" %>
        
                        <%
                        Orador orad = (Orador) request.getAttribute("orador");
                        %>
    
                    <div class="container col-10 col-md-8 col-lg-6 rounded" style="border-style: solid; border-color: rgb(135, 201, 36);">
                        <form class="container mb-3">
                            <div class="row row-cols-1 row-cols-md-2">
                                <div class="col">
                                    <label>Nombre:</label>
                                    <input type="text" class="form-control" placeholder="<%= orad.getNombre() %>" name="nombre" disabled>
                                </div>
                                <div class="col">
                                    <label>Apellido:</label>
                                    <input type="text" class="form-control" placeholder="<%= orad.getApellido() %>" name="apellido" disabled>
                                </div>
                            </div>
                            <div class="col">
                                <label>Tema:</label>
                                <textarea class="form-control" rows="5" id="charlasobre" name="tema" disabled><%= orad.getTema() %></textarea>
                            </div>
                        </form>
                        <div class="container-fluid row row-cols-2 p-1 m-1">
                                        
                            <form class="container mb-3 align-items-center" action="BorraOradorServlet" method="post" style="display: inline">
                                <input type="hidden" name="dni" value="<%= orad.getDni() %>" >
                                <button class="w-100 btn btn-lg btn-primary" type="submit">Borrar</button>
                            </form>
                            <form class="container mb-3 align-items-center" action="VolverServlet" method="get"  style="display: inline">
                    
                                <button class="w-100 btn btn-lg btn-primary" type="submit">Volver</button>
                            </form>
                        </div>
                    </div>
        
        <jsp:include page="/WEB-INF/comun/footer.jsp" />
            
    </body>
</html>