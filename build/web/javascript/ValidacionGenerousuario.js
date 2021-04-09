function ValidacionGeneroUsuario(){
    
    var resultado = 'Correcto';
    var descripcion_genero_usuario = $('#txt_descripcion_genero_usuario_Reg').val();
    console.log(" -- Información a validar -- ");
    console.log("Descripcion Genero: ." + descripcion_genero_usuario + ".");
    
    if (descripcion_genero_usuario == ''){
        
         alert("El Genero no puede ser nulo");
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


