function ValidacionTipodocumento() {

    var resultado = 'Correcto';
    var tipo_documento = $('#txt_tipo_doc_identificacion_usuario_Reg').val();
    console.log(" -- Información a validar -- ");
    console.log("tipo_documento: ." + tipo_documento + ".");

    if (tipo_documento == '') {

        alert("El tipo de documento no puede ser nulo");
        resultado = 'Error';

    } else {

        resultado = 'Correcto';
    }
    $('#txt_Banderota_Reg').val(resultado);
    console.log("Resultado: " + $('#txt_Banderota_Reg').val());

    if (resultado == 'Correcto') {

        return true;

    } else {

        return false;
    }

}


