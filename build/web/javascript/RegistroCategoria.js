function ValidacionCategoria() {

    var resultado = 'Correcto';
    var nombre_categoria_producto = $('#txt_nombre_categoria_Reg').val();
    console.log(" -- Información a validar -- ");
    console.log("nombre_categoria_producto: ." + nombre_categoria_producto + ".");

    if (nombre_categoria_producto == '') {

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

