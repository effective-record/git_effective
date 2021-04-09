

function ValidacionUnidadMedida () {

    var resultado = 'Correcto';
    var descripcion_unidad_de_medida_producto = $('#txt_unidad_medida_Reg').val();
    
    console.log(" -- Información a validar -- ");
    console.log("descripcion_unidad_de_medida_producto: ." + descripcion_unidad_de_medida_producto + ".");

    if (descripcion_unidad_de_medida_producto == '') {

        alert("La unidad no puede estar vacia");
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
