<%-- 
    Document   : registroUsuarios
    Created on : 23/11/2020, 04:03:55 PM
    Author     : AndresSaenz
--%>

<%@page import="modelo.GENERO_USUARIO"%>
<%@page import="controlador.GENERO_USUARIO_DAO"%>
<%@page import="modelo.ESTADO_USUARIO"%>
<%@page import="controlador.ESTADO_USUARIO_DAO"%>
<%@page import="modelo.TIPO_DOC_IDENTIFICACION_USUARIO"%>
<%@page import="controlador.TIPO_DOC_IDENTIFICACION_USUARIO_DAO"%>
<%@page import="modelo.TIPO_USUARIO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="controlador.TIPO_USUARIO_DAO"%>
<%@page import="modelo.USUARIOS"%>
<%@page import="java.util.ArrayList"%>
<%@page import="controlador.USUARIOS_DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="../javascript/jquery-1.11.0.min.js" type="text/javascript"></script>
        <script src="../javascript/RegistroUsuarios.js" type="text/javascript"></script>
        <script src="../javascript/validacionCorreo.js" type="text/javascript"></script>
        <script src="../javascript/visualizaOculta.js" type="text/javascript"></script>
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de usuarios</title>
    </head>

    <body onload="visualizaOculta('<%=request.getParameter("Vista")%>');">


        <% String buscando = request.getParameter("buscando");
            if (buscando == null) {
                buscando = "";
            }
        %>

        <div class="row justify-content-md-center sticky-top">
            <div class="btn-group">
                <button type="button" class="btn btn-secondary" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false"
                        onClick="visualizaOculta('Registrar')">
                    Registrar
                </button>
                <button type="button" class="btn btn-secondary" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false"
                        onClick="visualizaOculta('Listado')">
                    Consultar
                </button>
                <button type="button" class="btn btn-secondary" ><a href="../vista/menu.jsp" class="text-decoration-none" style="color: white">Volver al inicio</a></button>
            </div>
        </div>

        <div id="Registrar" class="bd-example d-none">
            <div class="container">
                <div class="modal-content">      
                    <center>
                        <h1>Registrar Usuarios</h1>
                    </center>
                    <br>
                    <center>
                        <img src="../imagenes/agregar-usuario.png" alt=""/>
                    </center>
                    <br>
                    <form action="/Effective/RegistroUsuarios" method="post" onsubmit="return RegistroUsuarios()" class="col-12" class="row g-3">
                        <div class="form-row"> 
                            <div class="col-md-6">
                                <h5>Nombres</h5>
                                <input type="text" name="nombres_usuario" class="form-control" placeholder="Nombres" id="txt_nombres_usuario_reg"> 
                            </div>
                            <br>
                            <div class="col-md-6">
                                <h5>Apellidos</h5>
                                <input type="text" name="apellidos_usuario" class="form-control" placeholder="Apellidos" id="txt_apellidos_usuario_reg">
                            </div>
                        </div>
                        <br>
                        <div class="form-row"> 
                            <div class="col-md-4">
                                <h5>Clave</h5>
                                <input type="password" name="clave" class="form-control" placeholder="clave" id="txt_clave_reg">
                                <br>                                           
                            </div>
                            <div class="col-md-4">
                                <h5>Telefono</h5>
                                <input type="text" name="telefono_usuario" class="form-control" placeholder="Telefono" id="txt_telefono_usuario_reg">
                                <br>
                            </div>
                            <div class="col-md-4">
                                <h5>Dirección</h5>
                                <input type="text" name="direccion_usuario" class="form-control" placeholder="Direccion" id="txt_direccion_usuario_reg">
                                <br>
                            </div>
                        </div>
                        <div class="form-row"> 
                            <div class="col-md-6">
                                <h5>Correo</h5>
                                <div class="input-group flex-nowrap">
                                    <span class="input-group-text" id="addon-wrapping">@</span>
                                    <input type="email" name="correo_usuario" class="form-control" placeholder="Correo" id="txt_correo_usuario_reg" aria-describedby="addon-wrapping">
                                </div>
                                <br>
                            </div>
                            <div class="col-md-6">   
                                <h5>Identificación</h5>
                                <input type="text" name="identificacion_usuario" class="form-control" placeholder="Numero identificación" id="txt_identificacion_usuario_reg">
                                <br>
                                <br>
                            </div>
                        </div>
                        <div class="form-row">   
                            <div class="col-md-6">
                                <label for="IdTipoDocumento"><h5>Tipo Documento</h5></label>
                                <input id="txt_TIPO_DOC_IDENTIFICACION_USUARIO_id_doc_identificacion_usuario_reg" type="text" class="form-control d-none" name= "TIPO_DOC_IDENTIFICACION_USUARIO_id_doc_identificacion_usuario"/> 
                                <br>

                                <%
                                    TIPO_DOC_IDENTIFICACION_USUARIO_DAO tipoDocumento_dao = new TIPO_DOC_IDENTIFICACION_USUARIO_DAO();
                                    ArrayList<TIPO_DOC_IDENTIFICACION_USUARIO> mitipoDocumento = tipoDocumento_dao.ConsultarListadoTipo_doc_usuario(' ', "");
                                    out.println("<select class='form-control'id ='SelectTipoDocumento' size = '1' >");
                                    out.println("<option onclick='setIdTipoDocumentoo(\"" + "" + "\")'>" + "--Seleccionar--" + "</option>");

                                    for (TIPO_DOC_IDENTIFICACION_USUARIO C : mitipoDocumento) {
                                        out.println("<option onclick='setIdTipoDocumento(\"" + C.getId_doc_identificacion_usuario() + "\")'>" + C.getTipo_doc_identificacion_usuario() + "</option>");

                                    }

                                    out.println("</select>");
                                %>
                                <br>
                            </div>
                            <div class="col-md-6">  
                                <label for="IdTipoUsuario"><h5>Tipo Usuario</h5></label>
                                <input id="txt_TIPO_USUARIO_id_tipo_usuario_reg" type="text" class="form-control d-none" name= "TIPO_USUARIO_id_tipo_usuario"/> 
                                <br>

                                <%
                                    TIPO_USUARIO_DAO tipoUsuario_dao = new TIPO_USUARIO_DAO();
                                    ArrayList<TIPO_USUARIO> mitipoUsuario = tipoUsuario_dao.ConsultarListarTipo_usuario(' ', "");
                                    out.println("<select class='form-control'id ='SelectTipoUsuario' size = '1' >");
                                    out.println("<option onclick='setIdTipoUsuario(\"" + "" + "\")'>" + "--Seleccionar--" + "</option>");

                                    for (TIPO_USUARIO C : mitipoUsuario) {
                                        out.println("<option onclick='setIdTipoUsuario(\"" + C.getId_tipo_usuario() + "\")'>" + C.getDescripcion_tipo_usuario() + "</option>");

                                    }

                                    out.println("</select>");
                                %>
                                <br>
                            </div>                                    
                        </div>                         
                        <div class="form-row">                                                                  
                            <div class="col-md-6">
                                <label for="IdEstadoUsuario"><h5>Estado Usuario</h5></label>
                                <input id="txt_ESTADO_USUARIO_id_estado_usuario_reg" type="text" class="form-control d-none" name= "ESTADO_USUARIO_id_estado_usuario"/> 
                                <br>

                                <%
                                    ESTADO_USUARIO_DAO tipoEstado_dao = new ESTADO_USUARIO_DAO();
                                    ArrayList<ESTADO_USUARIO> mitipoEstado = tipoEstado_dao.ConsultarListarEstado_usuario(' ', "");
                                    out.println("<select class='form-control'id ='SelectEstadoUsuario' size = '1' >");
                                    out.println("<option onclick='setIdEstadoUsuario(\"" + "" + "\")'>" + "--Seleccionar--" + "</option>");

                                    for (ESTADO_USUARIO C : mitipoEstado) {
                                        out.println("<option onclick='setIdEstadoUsuario(\"" + C.getId_estado_usuario() + "\")'>" + C.getDescripcion_estado_usuario() + "</option>");

                                    }

                                    out.println("</select>");
                                %>     
                            </div>
                            <div class="col-md-6">
                                <label for="IdGeneroUsuario"><h5>Genero Usuario</h5></label>
                                <input id="txt_GENERO_USUARIO_id_genero_usuario_reg" type="text" class="form-control d-none" name= "GENERO_USUARIO_id_genero_usuario"/> 
                                <br>

                                <%
                                    GENERO_USUARIO_DAO tipoGenero_dao = new GENERO_USUARIO_DAO();
                                    ArrayList<GENERO_USUARIO> mitipoGenero = tipoGenero_dao.ConsultarListarGenero_usuario(' ', "");
                                    out.println("<select class='form-control'id ='SelectGeneroUsuario' size = '1' >");
                                    out.println("<option onclick='setIdGeneroUsuario(\"" + "" + "\")'>" + "--Seleccionar--" + "</option>");

                                    for (GENERO_USUARIO C : mitipoGenero) {

                                        out.println("<option onclick='setIdGeneroUsuario(\"" + C.getId_genero_usuario() + "\")'>" + C.getDescripcion_genero_usuario() + "</option>");

                                    }

                                    out.println("</select>");
                                %>     
                                <br>
                            </div>
                        </div>
                        <div id="controlRegistro" class="bd-example d-none">
                            <input id="txt_bandera_reg" type="text" class="form-control" name="banderaRegistro">
                        </div>
                        <br>
                        <center> 
                            <button class="btn btn-primary me-md-2 botoncito" type="submit">Registrar</button>
                            <button class="btn btn-danger me-md-2 botoncito" type="reset">Limpiar</button>
                        </center>
                        <br> 
                    </form>
                </div>
            </div>
        </div>




        <div id="Actualizar" class="bd-example d-none">
            <div class="container">
                <div class="modal-content">      
                    <center>
                        <h1>Actualización Usuarios</h1>
                    </center>
                    <br>
                    <center>
                        <img src="../imagenes/agregar-usuario.png" alt=""/>
                    </center>
                    <br>
                    <form action="/Effective/ActualizarUsuario" method="post" onsubmit="return RegistroUsuariosAct()" class="col-12" class="row g-3">
                        <div class="form-row"> 
                            <div class="col-md-6">
                                <h5>Nombres</h5>
                                <input type="text" name="nombres_usuario" class="form-control" placeholder="Nombres" id="txt_nombres_usuario_Act" value="<%=request.getParameter("Nombres")%>"/> 
                            </div>
                            <br>
                            <div class="col-md-6">
                                <h5>Apellidos</h5>
                                <input type="text" name="apellidos_usuario" class="form-control" placeholder="Apellidos" id="txt_apellidos_usuario_Act" value="<%=request.getParameter("Apellidos")%>"/>
                            </div>
                        </div>
                        <br>
                        <div class="form-row"> 
                            <div class="col-md-4">
                                <h5>Clave</h5>
                                <input type="password" name="clave" class="form-control" placeholder="clave" id="txt_clave_Act" value="<%=request.getParameter("Clave")%>">
                                <br>                                           
                            </div>
                            <div class="col-md-4">
                                <h5>Telefono</h5>
                                <input type="text" name="telefono_usuario" class="form-control" placeholder="Telefono" id="txt_telefono_usuario_Act" value="<%=request.getParameter("Telefono")%>">
                                <br>
                            </div>
                            <div class="col-md-4">
                                <h5>Dirección</h5>
                                <input type="text" name="direccion_usuario" class="form-control" placeholder="Direccion" id="txt_direccion_usuario_Act" value="<%=request.getParameter("Direccion")%>">
                                <br>
                            </div>
                            <div class="col-md-6">
                                <h5>Correo</h5>
                                <div class="input-group flex-nowrap">
                                    <span class="input-group-text" id="addon-wrapping">@</span>
                                    <input type="email"  name="correo_usuario" class="form-control" placeholder="Correo" id="txt_correo_usuario_Act" aria-describedby="addon-wrapping" value="<%=request.getParameter("Correo")%>">
                                </div>
                                <br>
                            </div>
                            <div class="col-md-6">   
                                <h5>Identificación</h5>
                                <input type="text" name="identificacion_usuario" class="form-control" placeholder="Numero identificación" id="txt_identificacion_usuario_Act" value="<%=request.getParameter("Identificacion")%>">
                                <br>
                                <br>
                            </div>
                        </div>
                        <div class="form-row">   
                            <div class="col-md-6">
                                <label for="IdTipoDocumento"><h5>Tipo Documento</h5></label>
                                <input id="txt_TIPO_DOC_IDENTIFICACION_USUARIO_id_doc_identificacion_usuario_Act" type="text" class="form-control" name= "TIPO_DOC_IDENTIFICACION_USUARIO_id_doc_identificacion_usuario" value="<%=request.getParameter("Tipo_doc")%>"/> 
                                <br>
                            </div>
                            <div class="col-md-6">  
                                <label for="IdTipoUsuario"><h5>Tipo Usuario</h5></label>
                                <input id="txt_TIPO_USUARIO_id_tipo_usuario_Act" type="text" class="form-control" name= "TIPO_USUARIO_id_tipo_usuario" value="<%=request.getParameter("Tipo_usuario")%>"/> 
                                <br> 
                            </div>                                    
                        </div>                         
                        <div class="form-row">                                                                  
                            <div class="col-md-6">
                                <label for="IdEstadoUsuario"><h5>Estado Usuario</h5></label>
                                <input id="txt_ESTADO_USUARIO_id_estado_usuario_Act" type="text" class="form-control" name= "ESTADO_USUARIO_id_estado_usuario" value="<%=request.getParameter("Estado_usuario")%>"/> 
                                <br>
                            </div>
                            <div class="col-md-6">
                                <label for="IdGeneroUsuario"><h5>Genero Usuario</h5></label>
                                <input id="txt_GENERO_USUARIO_id_genero_usuario_Act" type="text" class="form-control" name= "GENERO_USUARIO_id_genero_usuario" value="<%=request.getParameter("Genero_usuario")%>"/> 
                                <br>
                            </div>
                        </div>
                        <div id="controlRegistro" class="bd-example d-none">
                            <input id="txt_bandera_reg" type="text" class="form-control" name="banderaRegistro">
                        </div>
                        <br>
                        <center> 
                            <button class="btn btn-primary me-md-2 botoncito">Registrar</button>
                            <button class="btn btn-danger me-md-2 botoncito" type="reset">Limpiar</button>
                        </center>
                        <br> 
                    </form>
                </div>
            </div>
        </div>


        <div class="container">


            <br>
            <br>
            <form action="/Effective/ConsultarUsuario" method="post">
                <div class="row justify-content-md-center">
                    <div id="Listado" class="bd-example">

                        <div id="ControlRegistro" class="input-group">


                            <input id="txt_Id_Consultado" type="text" class="form-control" name="IdConsultado" value="<%=buscando%>" autofocus placeholder="Buscar por Identificaciín, Nombres y Apellidos..."/>
                            <button type="button" class="btn btn-info" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" onclick="realizarBusqueda()">Buscar</button>

                        </div>

                        <br>
                        <br>

                        <div>
                            <h1>Listado Usuarios</h1>

                            <br>

                            <div id="Tabla_Usuarios"></div>

                            <%
                                USUARIOS_DAO usuario_dao = new USUARIOS_DAO();
                                ArrayList<USUARIOS> usuarioList = new ArrayList<USUARIOS>();
                                usuarioList = usuario_dao.ConsultarListadoUsuario(buscando, buscando, buscando);
                                out.println("<table class='table table-primary table-striped table-hover table-bordered border-danger'><tr><td>Identificación</td><td>Nombres</td><td>Apellidos</td><td>Clave</td><td>Telefono</td><td>Direccion</td><td>Correo</td><td>Tipo Usuario</td><td>Estado</td><td>Genero</td><td>Tipo_doc</td><td>Actualizar</td><td>Eliminar</td>");

                                for (USUARIOS U : usuarioList) {

                                    out.println("<tr>");
                                    out.println("<td>" + U.getIdentificacion_usuario() + "</td>");
                                    out.println("<td>" + U.getNombres_usuario() + "</td>");
                                    out.println("<td>" + U.getApellidos_usuario() + "</td>");
                                    out.println("<td>" + U.getClave() + "</td>");
                                    out.println("<td>" + U.getTelefono_usuario() + "</td>");
                                    out.println("<td>" + U.getDireccion_usuario() + "</td>");
                                    out.println("<td>" + U.getCorreo_usuario() + "</td>");
                                    out.println("<td>" + U.getTIPO_USUARIO_id_tipo_usuario() + "</td>");
                                    out.println("<td>" + U.getESTADO_USUARIO_id_estado_usuario() + "</td>");
                                    out.println("<td>" + U.getGENERO_USUARIO_id_genero_usuario() + "</td>");
                                    out.println("<td>" + U.getTIPO_DOC_IDENTIFICACION_USUARIO_id_doc_identificacion_usuario() + "</td>");

                                    out.println("<td>" + "<input type = 'submit' class='btn btn-primary form-control btn btn-login' value='Actualizar'name='Actualizar'onclick='SetIdConsulta(" + U.getIdentificacion_usuario() + ")'/>" + "</td>");
                                    out.println("<td>" + "<input type = 'submit' class='btn btn-danger form-control btn btn-login' value='Eliminar'name='Eliminar'onclick='SetIdConsulta(" + U.getIdentificacion_usuario() + ")'/>" + "</td>");
                                    out.println("</tr>");

                                }

                                out.println("</table>");

                            %>

                        </div>
                    </div>
                </div>
            </form>
        </div>


        <style>

            body{
                background-image: url(../imagenes/imagensitanueve.jpg);
                background-repeat: no-repeat;
                background-size: 110%;
                font-family: 'Acme', sans-serif;
                font-size: 20px;

            }

            h1{

                color: whitesmoke; 
            }


            .modal-content{

                background-color: #494f54;
                opacity: .92;
                padding: 30px;
                display: flex;
                margin-top: 120px;
                margin-left: 150px;
                border-radius: 3%;
                width: 70%;

            }

            h5{
                color: whitesmoke;
                font-size: 25px;
            }

            h1{
                text-shadow: 1px 1px 5px black;
                color: lightsteelblue;
            }

            .botoncito{

                width: 90px;
                height: 50px;
                margin: 10px 10px 10px 10px;

            }

            .btn-danger:hover {
                background-color: red;
            }

            .btn-primary:hover{

                background-color: blue;
            }



        </style>

       

    </body>                            
</html>
