
            <div class="container-fluid text-center p-3">
                <p class="txtchico">CONVIÉRTETE EN UN</p>
                <h2><b>ORADOR</b></h2>
            </div>
        
            <div class="container col-11 col-md-9 col-xl-7">
                <form class="container mb-3" action="SumarOrador" method="post">
                    <div class="row">
                        <p class="text-center">Anótate como orador para dar una <span class="punteado">charla ignite</span>. Cuéntanos de qué quieres hablar!</p>
                    </div>
                    <div class="row row-cols-1 row-cols-md-2 row-cols-xl-3">
                        <div class="col">
                            <input type="text" class="form-control" placeholder="Nombre" name="nombre">
                        </div>
                        <div class="col">
                            <input type="text" class="form-control" placeholder="Apellido" name="apellido">
                        </div>
                        <div class="col">
                            <input type="text" class="form-control" placeholder="DNI" name="dni">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <textarea class="form-control" placeholder="Sobre qué quieres hablar" rows="5" id="charlasobre" name="tema"></textarea>
                        </div>
                    </div>
                    <span class="txtchico">Recuerda incluir el título para la charla</span>
                    <button class="w-100 btn btn-lg btngreen" type="submit">Enviar</button>
                </form>
            </div>


