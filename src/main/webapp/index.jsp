<%-- 
    Document   : index
    Created on : 30 jun 2023, 07:35:21
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
  
        
        <jsp:include page="WEB-INF/comun/nav.jsp"/>
        

            <div class="carousel slide bg-dark" data-bs-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="img/ba1.jpg" class="img-fluid bgimagen">
                    <div class="carousel-caption d-block d-md-block text-end">
                        <h1 class="card-title tamres">Conf Bs As</h1>
                        <p class="card-text tamres">Bs As llega por primera vez a Argentina. Un evento para compartir con</br>
                            nuestra comunidad el conocimiento y experiencia de los expertos quieres</br>
                            están creando el futuro de Internet. Ven a conocer a miembros del</br>
                            evento, a otros estudiantes de Codo a codo y los oradores de primer</br>
                            nivel que tenemos para tí. te esperamos!</p>
                        <p><a class="btn btn-md btntras m-3 tamres" href="WEB-INF/sumarorador.jsp">Quiero ser orador</a><a class="btn btn-md btncompras tamres" href="WEB-INF/compratickets.html">Comprar tickets</a></p>
                    </div>
                  </div>
                </div>
            </div>   


        <div class="album">
            <div class="container">

                <div class="container text-center p-0">
                    <p class="txtchico">CONOCE A LOS</p>
                    <h2><b>ORADORES</b></h2>
                </div>
        
                <div class="row row-cols-1 row-cols-lg-2 row-cols-xl-3 g-3 p-5 pt-0 pb-0">

                    <div class="col p-4">
                          
                        <div class="card shadow-sm">
                            <svg class="bd-placeholder-img card-img-top" width="100%" height="300" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Steve Jobs</title>
                                <rect width="100%" height="100%" fill="#ffffff"/>
                                <image href="img/steve.jpg" height="300" width="300" /></svg>
                          
                            <div class="card-body">
                        
                                <p class="txtchico"><b><span class="btnyellow m-1"> JavaScript </span><span class="btnblue"> React </span></b></p>
                                <h3>Steve Jobs</h3>
                                <p class="card-text txtchico">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Exercitationem omnis, corrupti architecto veniam sunt iste impedit ipsum cupiditate et fugit provident saepe, laudantium cumque, a rem labore porro aliquam rerum?</p>
                          
                            </div>
                        </div>
                    </div>

                    <div class="col p-4">
                        
                        <div class="card shadow-sm">
                            <svg class="bd-placeholder-img card-img-top" width="100%" height="300" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Bill Gates</title><rect width="100%" height="100%" fill="#ffffff"/>
                            <image href="img/bill.jpg" height="300" width="300" /></svg>
                          
                            <div class="card-body">
                                <p class="txtchico"><b><span class="btnyellow m-1"> JavaScript </span><span class="btnblue"> React </span></b></p>
                                <h3>Bill Gates</h3>
                                <p class="card-text txtchico">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Exercitationem omnis, corrupti architecto veniam sunt iste impedit ipsum cupiditate et fugit provident saepe, laudantium cumque, a rem labore porro aliquam rerum?</p>
                            </div>
                        </div>
                    </div>

                    <div class="col p-4">
                        
                        <div class="card shadow-sm">
                            <svg class="bd-placeholder-img card-img-top" width="100%" height="300" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Ada Lovelace</title><rect width="100%" height="100%" fill="#ffffff"/>
                            <image href="img/ada.jpeg" height="300" width="300" /></svg>
                        
                            <div class="card-body">
                                <p class="txtchico"><b><span class="btngrey">Negocios</span> <span class="btnred ">Startups</span></b></p>
                                <h3>Ada Lovelace</h3>
                                <p class="card-text txtchico">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Exercitationem omnis, corrupti architecto veniam sunt iste impedit ipsum cupiditate et fugit provident saepe, laudantium cumque, a rem labore porro aliquam rerum?</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            <div class="container-fluid row row-cols-2 p-0 m-0">
                <div class="col-12 col-md-6 p-0">
                   
                    <div class="card bg-dark text-white rounded-0 p-0 m-0">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="430" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                            <title>Honolulu</title><rect width="100%" height="100%" fill="#ffffff"/><text x="50%" y="50%" fill="#eceeef" dy=".3em"></text>
                            <image class="img-fluid" href="img/honolulu.jpg" width="680" height="430"/>
                        </svg>
                    </div>
                </div>

                <div class="col-12 col-md-6 p-0">
                    
                    <div class="card bg-dark text-white rounded-0 p-0 m-0">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="430" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                            <title>Conferencias Bs As</title><rect width="100%" height="100%" fill="#55595c"/>
                            <text x="50%" y="50%" fill="#eceeef" dy=".3em"></text></svg>
                            <div class="card-img-overlay">
                          <h5 class="card-title">Bs As - Octubre</h5>
                          <p class="card-text" style="font-size: 0.9rem;">Buenos Aires es la provincia y localidad mas grande del estado de Argentina, 
                            en los Estados Unidos, Honolulu es la más sureña de entre las principales ciudades
                            estadounidenses. Aunque el nombre de Honolulu se refiere al área urbana em la costa 
                            en la costa sureste de la ciudad de Oahu, la ciudad y el condado de Honolulu han formado
                            una ciudad-estado consolidada que cubre toda la ciudad (aproximadamente 600 km<sup>2</sup> de superficie).</p> 
                        <p><a class="btn btn-md btntras m-3" href="#">Conocé más</a></p>
                        </div>
                    </div>
                   
                </div> 
            </div>

        
        <jsp:include page="WEB-INF/comun/sumaroradores.jsp"/>
        
        <jsp:include page="WEB-INF/comun/footer.jsp" />
    </body>
</html>