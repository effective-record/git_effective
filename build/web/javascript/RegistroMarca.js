function ValidacionMarca() {

    var resultado = 'Correcto';
    var nombre_marca_producto = $('#txt_Marca_Reg').val();
   
    console.log(" -- Información a validar -- ");
    console.log("nombre_marca_producto: ." + nombre_marca_producto + ".");

    if (nombre_marca_producto == '') {
        alert("La categoria no puede ser nulo");
        resultado = 'Error';
    } else {
        resultado = 'Correcto';
    }
    $('#txt_bandera_reg').val(resultado);
    console.log("Resultado: " + $('#txt_bandera_reg').val());

    if (resultado == 'Correcto') {

        return true;

    } else {

        return false;
    }

}


