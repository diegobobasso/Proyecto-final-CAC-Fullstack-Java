<%-- 
    Document   : compratickets
    Created on : 30 jun 2023, 07:37:09
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            
            <jsp:include page="/WEB-INF/comun/sumaroradores.jsp"/>
            
            <jsp:include page="/WEB-INF/comun/footer.jsp" />
            
        <script src="/WEB-INF/script/compratickets.js"></script>
    </body>
</html>