<%-- 
    Document   : registrarUnidadMedida
    Created on : 17/02/2021, 04:24:30 PM
    Author     : AndresSaenz
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelo.UNIDAD_DE_MEDIDA_PRODUCTO"%>
<%@page import="controlador.UNIDAD_DE_MEDIDA_PRODUCTO_DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="../javascript/jquery-1.11.0.min.js" type="text/javascript"></script>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="../javascript/RegistroUnidadMedida.js" type="text/javascript"></script>
       
        <title>Registrar Unidad de Medida</title>
    </head>

   <body body onload="visualizaOculta('<%=request.getParameter("Vista")%>');">


        <% String buscando = request.getParameter("buscando");
            if (buscando == null) {
                buscando = "";
            }
        %>

        <div class="row justify-content-md-center">
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

                                    <h1>Registrar Unidad de Medida</h1>
                                    <center>
                                        <img src="../imagenes/orden.png" alt=""/>
                                    </center>
                                    <br>
                                    <form action="/Effective/RegistrarUnidadDeMedida" method="post" onsubmit=" return ValidacionUnidadMedida()" class="col-12">
                                        <div class="form-group">
                                            <h5> Descripcion Unidad de Medida</h5>
                                            <input id="txt_unidad_medida_Reg" type="text" class="form-control" name="descripcion_unidad_de_medida_producto" placeholder="Ingrese la unidad de medida"/>
                                        </div>
                                        <br>
                                        <div class="row justify-content-md-center">
                                            <div class="btn-group">
                                                <input type="submit" class="btn btn-success form-control btn btn-login" value="Registrar"/>
                                            </div>
                                        </div>
                                        <br>
                                        <div id="controlRegistro" class="bd-example d-none">
                                            <input id="txt_bandera_reg" type="text" class="form-control" name="BanderaRegistro"/>
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
                <div class="card-body">
                    <div class="d-flex col-sm-12 ml-auto">
                        <h1>Listado de Unidad de medida</h1>                       
                    </div>
                    <br>

                    <%
                        UNIDAD_DE_MEDIDA_PRODUCTO_DAO unidadMedida_dao = new UNIDAD_DE_MEDIDA_PRODUCTO_DAO();
                        ArrayList<UNIDAD_DE_MEDIDA_PRODUCTO> mi_lista_unidad_medida = new ArrayList<UNIDAD_DE_MEDIDA_PRODUCTO>();
                        mi_lista_unidad_medida = unidadMedida_dao.ConsultarListarUnidad_de_medida(' ', buscando);
                        out.println("<table class='table table-primary table-striped table-hover table-bordered border-danger '><tr><td>Identificacion</td><td>Nombre Categoria</td>");

                        for (UNIDAD_DE_MEDIDA_PRODUCTO U : mi_lista_unidad_medida) {

                            out.println("<tr>");
                            out.println("<td>" + U.getId_unidad_de_medida_producto()+ "</td>");
                            out.println("<td>" + U.getDescripcion_unidad_de_medida_producto()+ "</td>");
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