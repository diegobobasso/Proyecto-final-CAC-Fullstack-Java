<%-- 
    Document   : listaroradores
    Created on : 1 jul 2023, 00:35:38
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Lista Oradores</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
  
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
  
        <jsp:include page="/WEB-INF/comun/nav.jsp" />
        <h3 class="text-center pt-5"><b>Listado de Oradores</b></h3>
        <div class="container-fluid p-5">
            <div class="container-fluid">
                <div class="b-example-divider b-example-vr p-1"></div>

                    <div class="d-flex flex-column align-items-strench flex-shrink-0 bg-body-tertiary">
                        
                        <c:forEach items="${listaOradores}" var="Oradores">
    
                            <div class="list-group list-group-flush border-bottom scrollarea">
                                <a href="#" class="list-group-item list-group-item-action active py-3 lh-sm" aria-current="true">
                                <div class="d-flex w-100 align-items-center">
                                    <strong class="mb-1">Apellido y Nombre: ${Oradores.apellido} ${Oradores.nombre} </strong>
                                </div>
                                <div class="col-10 mb-1">Temas: ${Oradores.tema}</div>
                            
                                </a>
                            </div>
            
                        </c:forEach>
        
                    </div>
                </div>
        
            <div class="b-example-divider b-example-vr mb-4"></div>  
        </div>                        
        <jsp:include page="/WEB-INF/comun/footer.jsp" />                
    </body>
</html>

