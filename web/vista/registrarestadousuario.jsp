<%-- 
    Document   : registrarestadousuario
    Created on : 17/11/2020, 09:10:39 AM
    Author     : AndresSaenz
--%>

<%@page import="modelo.ESTADO_USUARIO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="controlador.ESTADO_USUARIO_DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="../javascript/jquery-1.11.0.min.js" type="text/javascript"></script>
        <script src="../javascript/ValidacionEstadousuario.js"></script>
        <script src="../javascript/visualizaOculta.js"></script>
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../css/estilos.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar estado usuario</title>
    </head>
    <body onload="visualizaOculta('<%=request.getParameter("Vista")%>');">


        <% String buscando = request.getParameter("buscando");
            if (buscando == null) {
                buscando = "";
            }
        %>

        <div class="row justify-content-md-center sticky-top">
            <div class="btn-group">
                <button type="button" class="btn btn-secondary" ><a href="../vista/menu.jsp" class="text-decoration-none" style="color: white">Volver al inicio</a></button>
            </div>
        </div>

        <div class="d-flex">
            <div class="col-sm-5">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="container">
                            <div class="row justify-content-md-center">
                                <div id="Registrar" class="bd-example">
                                    <h1>Registrar Estado Usuario</h1>
                                    <br>
                                    <center>
                                        <img src="../imagenes/agujas-del-reloj.png" alt=""/>
                                    </center>
                                    <br>
                                    <form action="/Effective/RegistrarEstadousuario" method="post" onsubmit=" return ValidacionEstadousuario()">
                                        <div class="form-group">
                                            <h5>Estado usuario</h5>
                                            <input id="txt_descripcion_estado_usuario_Reg" type="text" class="form-control" placeholder="Ingrese el estado de usuario" name="estado_usuario" />
                                        </div>
                                        <br>
                                        <div class="row justify-content-md-center">
                                            <div class="btn-group">
                                                <input type="submit" class="btn btn-success form-control btn btn-login" value="Registrar"/>
                                            </div>
                                        </div>
                                        <br>
                                        <div id="ControlsitoRegistro" class="bd-example d-none">
                                            <input id="txt_Banderota_Reg" type="text" class="form-control" name="BanderaReg"/>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> 

            <div class="col-sm-6">
                <br>
                <br>
                <br>
                <br>
                <br>
                <div class="card-body">
                    <div class="d-flex col-sm-12 ml-auto">
                        <h1>Listado de estados</h1>                       
                    </div>
                    <br>

                    <%
                        ESTADO_USUARIO_DAO estado_dao = new ESTADO_USUARIO_DAO();
                        ArrayList<ESTADO_USUARIO> estadoList = new ArrayList<ESTADO_USUARIO>();
                        estadoList = estado_dao.ConsultarListarEstado_usuario(' ', buscando);
                        out.println("<table class='table table-primary table-striped table-hover table-bordered border-danger'><tr><td>Identificación</td><td>Descripcion estado</td>");

                        for (ESTADO_USUARIO U : estadoList) {

                            out.println("<tr>");
                            out.println("<td>" + U.getId_estado_usuario() + "</td>");
                            out.println("<td>" + U.getDescripcion_estado_usuario() + "</td>");
                            out.println("</tr>");

                        }

                        out.println("</table>");

                    %>


                </div>
            </div>
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
                margin-left: 70px;
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
