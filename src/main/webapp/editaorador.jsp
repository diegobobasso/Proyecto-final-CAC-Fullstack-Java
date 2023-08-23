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
        
        <form class="p-5" action="VolverServlet" method="get">
            <button class="btn-lg rounded-1" type="submit">Volver</button>
        </form>
                    <div class="container-fluid text-center p-3">
                        <h2><b>Editar orador</b></h2>
                    </div>
            
                    <%@ page import="ar.diegobobasso.cactc10.resources.Orador" %>
        
                    <%
                    Orador orad = (Orador) request.getAttribute("orador");
                    %>
            
                    <div class="container col-10 col-md-8 col-lg-6">
                        <form class="container mb-3 p-3 rounded" action="EditarServlet" method="post" style="border-style: solid; border-color: darkblue;">
                            <div class="row row-cols-1 row-cols-md-2">
                                <div class="col p-3">
                                    <label>Nombre:</label>
                                    <input type="text" class="form-control" value="<%= orad.getNombre() %>" name="nombre">
                                </div>
                                <div class="col p-3">
                                    <label>Apellido:</label>
                                    <input type="text" class="form-control" value="<%= orad.getApellido() %>" name="apellido">
                                </div>
                                <input type="hidden" class="form-control" value="<%= orad.getFecha() %>" name="fecha">
                            </div>
                            <div class="row">
                                <div class="col p-3">
                                    <label>Tema:</label>
                                    <textarea class="form-control" rows="5" id="charlasobre" name="tema"><%= orad.getTema() %></textarea>
                                </div>
                            </div>
                            <input type="hidden" name="dni" value="<%= orad.getDni() %>" >
                            <button class="w-100 btn btn-lg btn-primary" type="submit">Enviar</button>
                        </form>
                    </div>
            
        <jsp:include page="/WEB-INF/comun/footer.jsp" />
        
    </body>
</html>