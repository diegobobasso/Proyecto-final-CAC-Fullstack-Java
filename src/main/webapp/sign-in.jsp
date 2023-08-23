<%-- 
    Document   : sign-in
    Created on : 4 jul. 2023, 20:50:32
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Ingreso de Administradores</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
      
        <link rel="stylesheet" href="css/style.css">
    </head>

    <body>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
  
        
            <jsp:include page="/WEB-INF/comun/nav.jsp"/>
            

            <div class="container-fluid text-center p-3">
                <h2><b>Ingreso de Administradores</b></h2>
            </div>
        
            <div class="container col-7 col-md-5 col-lg-4">
                <form class="container mb-3" action="Login" method="post">
                    <div class="row text-center">
                        <p>Valíde su identidad</p>
                    </div>
                    <div class="row row-cols-1">
                        <div class="col">
                            <label>Usuario</label>
                            <input type="text" class="form-control" name="user">
                        </div>
                        <div class="col">
                            <label>Contraseña</label>
                            <input type="password" class="form-control" name="pass">
                        </div>
                    </div>
                    <button class="w-100 btn rounded-1 mt-2 btn-primary" type="submit">Entrar</button>
                </form>
            </div>

            
            <jsp:include page="/WEB-INF/comun/footer.jsp" />
    </body>
</html>