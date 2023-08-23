<%-- 
    Document   : comprartickets
    Created on : 1 jul 2023, 00:29:42
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
              
            <div class="container-fluid">
            <div class="row col-12 g-3 p-5 mb-3 text-center">
                <div class="col-12 col-sm-6 col-md-4">
                  <div class="card mb-4 shadow-sm border-primary">
                    <div class="card-body">
                      <h3 class="card-title pricing-card-title">Estudiante</h3>
                      <ul class="list-unstyled mt-3 mb-4">
                        <li class="mt-2 mb-2">Tienen un descuento</li>
                        <li class="mt-2 mb-2"><b>80%</b></li>
                        <li class="txtchico txtgrey mt-2 mb-2">* presentar documentación</li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div class="col-12 col-sm-6 col-md-4">
                  <div class="card mb-4 shadow-sm border-success">
                    <div class="card-body">
                      <h3 class="card-title pricing-card-title">Trainee</h3>
                      <ul class="list-unstyled mt-3 mb-4">
                        <li class="mt-2 mb-2">Tienen un descuento</li>
                        <li class="mt-2 mb-2"><b>50%</b></li>
                        <li class="txtchico txtgrey mt-2 mb-2">* presentar documentación</li>
                      </ul>
                      </div>
                  </div>
                </div>
                <div class="col-12 col-sm-6 col-md-4">
                  <div class="card mb-4 shadow-sm border-warning">
                    <div class="card-body">
                      <h3 class="card-title pricing-card-title">Junior</h3>
                      <ul class="list-unstyled mt-3 mb-4">
                        <li class="mt-2 mb-2">Tienen un descuento</li>
                        <li class="mt-2 mb-2"><b>15%</b></li>
                        <li class="txtchico txtgrey mt-2 mb-2">* presentar documentación</li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          
            <div class="container-fluid text-center p-1">
                <p class="txtgrey">VENTA</p>
                <h1>VALOR DE TICKET $200</h1>
            </div>
            <div> 
            <div class="container col-7">
                <form class="container mb-3 p-3 rounded" style="border-style: solid; border-color: rgb(135, 201, 36);">
                    <div class="row mb-2">
                        <div class="col">
                            <input type="text" class="form-control" placeholder="Nombre" name="nombre">
                        </div>
                        <div class="col">
                            <input type="text" class="form-control" placeholder="Apellido" name="apellido">
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col">
                            <input type="email" class="form-control" placeholder="Correo" name="correo">
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col">
                            <span>Cantidad</span>
                        </div>
                        <div class="col">
                            <span>Categoría</span>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col">
                            <input id="cantidad" type="text" class="form-control" value="1" name="cantidad">
                        </div>
                        <div class="col">
                            <select id="categoria" class="form-select" size="1"  name="categoria">
                                <option value="estudiante">Estudiante</option>
                                <option value="trainee">Trainee</option>
                                <option value="junior">Junior</option>
                              </select>
                        </div>
                    </div>
                    <div class="container-fluid p-3 mt-3 mb-3 rounded-1 bgceleste">
                        <p>Total a Pagar: $ <span id="pago">  </span></p>
                    </div>
                    <div class="row mb-2">
                        <div class="col">
                            <button class="w-100 btn btn-lg btngreen" type="reset">Borrar</button>
                        </div>
                        <div class="col">
                            <button id="resumen" class="w-100 btn btn-lg btngreen" type="button">Resumen</button>    
                        </div>
                    </div>
                </form>
            </div>
            </div>
        <jsp:include page="/WEB-INF/comun/footer.jsp" />
        <script src="script/compratickets.js"></script>
    </body>
</html>