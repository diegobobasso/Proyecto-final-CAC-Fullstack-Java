let cantidad = document.getElementById("cantidad");
let categoria = document.getElementById("categoria");
let pago = document.getElementById("pago");
let botonresumen = document.getElementById("resumen");

function TotalPago() {
    
    const regex = /^[0-9]*$/;
    if(regex.test(cantidad.value)) {

        let cant = parseInt(cantidad.value);
        
        if (cant > 0 ) {
        
            let cate = categoria.value;
            let desc = 0;
            
            if(cate === "estudiante") desc = 0.20;
            if(cate === "trainee") desc = 0.5;
            if(cate === "junior") desc = 0.85;
        
            let total = 200 * cant * desc;
    
            pago.innerHTML = total.toString();
        
        }
        
        }
    else {
        pago.innerHTML = "0";    
    }
}

botonresumen.onclick = TotalPago;
