<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Administradores</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
  
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
  
        <jsp:include page="/WEB-INF/comun/nav.jsp" />
        <% String MsgLog = request.getParameter("MsgLog"); %>
        
        <c:set var="Log" value="${MsgLog}" />
        
        <c:choose>
            <c:when test="${Log == 'OFF'}">
                <div class="container-fluid p-5 col-md-12">
                    <div class="container text-center" >
                        <form class="form-control">
                            <h6>Usuario o contraseña incorrectos!!</h6>
                            <input type="button" onclick="history.back()" name="volver atrás" value="volver atrás">
                        </form>
                    </div>
                </div>
            </c:when>
            <c:when test="${Log == 'ON'}">
                
                <form class="p-5" action="LogOutServlet" method="get">
                    <button class="btn-lg rounded-1" type="submit">Salir</button>
                </form>
        
                <div class="container-fluid">
                    <h2 class="text-center p-5"><b><i>ADMINISTRACION DE LA CONFERENCIA DE LA CIUDAD DE BUSNOS AIRES</i></b></h2>
                </div>
                <h3 class="text-center pt-5" ><b>Listado de Oradores</b></h3>
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3 p-5">
                    <c:forEach items="${listaOradores}" var="Oradores">
                        <div class="col">
                            <div class="card shadow-sm" style="background-color: aliceblue;border-style: solid;border-color:blue;">
                                <div class="card-body">
                                    <p class="card-text">Nombre y Apellido: ${Oradores.nombre}  ${Oradores.apellido}</p>
                                    <p class="card-text">Tema:</p>
                                    <p class="card-text"> ${Oradores.tema} </p>
                                    <p><small class="text-body-secondary">Fecha: ${Oradores.fecha}</small></p>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="container-fluid w-100 align-items-center btn-group">
                                            <form action="BuscarOrador" method="post">
                                                <input type="hidden" name="dni" value="${Oradores.dni}">
                                                <button class="btn btn-sm botongrey" type="submit">Editar</button>
                                            </form>
                                            <form action="BuscaBorrarOrador" method="post">
                                                <input type="hidden" name="dni" value="${Oradores.dni}">
                                                <button class="btn btn-sm botongrey" type="submit">Borrar</button>
                                            </form>                                   
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            
            </c:when>
        </c:choose>
                
        <jsp:include page="/WEB-INF/comun/footer.jsp" />                

    </body>
    
</html>




