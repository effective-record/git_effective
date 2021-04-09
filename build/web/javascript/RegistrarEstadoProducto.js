function ValidacionEstadoProduc() {

    var resultado = 'Correcto';
    var descripcion_estado_producto = $('#txt_EstadoProducto_Reg').val();
    console.log(" -- Información a validar -- ");
    console.log("descripcion_estado_producto: ." + descripcion_estado_producto + ".");

    if (descripcion_estado_producto == '') {

        alert("La descricion estado producto no puede ser nulo");
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

