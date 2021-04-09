function ValidacionRoles() {

    var resultado = 'Correcto';
    var tipo_usuario = $('#txt_tipo_usuario_Reg').val();
    console.log(" -- Información a validar -- ");
    console.log("tipo_usuario: ." + tipo_usuario + ".");

    if (tipo_usuario == '') {

        alert("El rol no puede ser nulo");
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


