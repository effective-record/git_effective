<%-- 
    Document   : RegistroMovimiento
    Created on : 24/01/2021, 10:06:47 AM
    Author     : AndresSaenz
--%>

<%@page import="modelo.MOVIMIENTO"%>
<%@page import="modelo.MOVIMIENTO"%>
<%@page import="controlador.MOVIMIENTO_DAO"%>
<%@page import="modelo.USUARIOS"%>
<%@page import="controlador.USUARIOS_DAO"%>
<%@page import="modelo.TIPO_DE_DOCUMENTO_CONTABLE"%>
<%@page import="controlador.TIPO_DE_DOCUMENTO_CONTABLE_DAO"%>
<%@page import="modelo.FORMAS_DE_PAGO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="controlador.FORMAS_DE_PAGO_DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="../javascript/jquery-1.11.0.min.js" type="text/javascript"></script>
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="../javascript/RegistroMovimiento.js" type="text/javascript"></script>
        <script src="../javascript/visualizaOculta.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Movimiento</title> 
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
                        <h1>Registrar Movimiento</h1>
                    </center>
                    <center>
                        <img src="../imagenes/factura.png" alt=""/>
                    </center>
                    <form action="/Effective/RegistroMovimiento" method="post" onsubmit="return RegistroMovimiento()" class="col-12">
                        <div class="form-row"> 
                            <div class="form-group col-md-4">
                                <h5>Numero de documento</h5>
                                <input type="text" name="numero_de_documento" class="form-control" placeholder="Numero de documento" id="txt_numero_de_documento_Reg"> 
                            </div>
                            <br>
                            <div class="form-group col-md-4">
                                <br>
                                <h5>Fecha</h5>
                                <input type="date" name="fecha" class="form-control" placeholder="fecha" id="txt_fecha_Reg">
                            </div>
                            <br>
                            <div class="form-group col-md-4">
                                <br>
                                <h5>Sub total</h5>
                                <input type="text" name="subtotal" class="form-control" placeholder="subtotal" id="txt_subtotal_Reg">
                            </div>
                            <br>
                            <div class="form-group col-md-4">
                                <h5>Total Iva</h5>
                                <input type="text" name="total_iva" class="form-control" placeholder="total_iva" id="txt_total_iva_Reg">
                            </div>
                            <br>
                            <div class="form-group col-md-4">
                                <h5>Descuento</h5>
                                <input type="text" name="descuento" class="form-control" placeholder="descuento" id="txt_descuento_Reg">
                            </div>
                            <br>
                            <div class="form-group col-md-4">
                                <h5>Total factura</h5>
                                <input type="text" name="total_factura" class="form-control" placeholder="total_factura" id="txt_total_factura_Reg">
                            </div>
                            <br>
                        </div>
                        <br>
                        <label for="IdFormasdePago"><h5>Formas de pago</h5></label>
                        <input type="text" name="FORMAS_DE_PAGO_id_forma_de_pago" class="form-control d-none" placeholder="Formas de pago" id="txt_FORMAS_DE_PAGO_id_forma_de_pago_reg">

                        <br>
                        <%
                            FORMAS_DE_PAGO_DAO formas_de_pago_dao = new FORMAS_DE_PAGO_DAO();
                            ArrayList<FORMAS_DE_PAGO> miformapago = formas_de_pago_dao.ConsultarListadoFormasdePago(' ', "");
                            out.println("<select class='form-control'id ='SelectFormasdePago' size = '1' >");
                            out.println("<option onclick='setIdFormasdePago(\"" + "" + "\")'>" + "--Seleccionar--" + "</option>");

                            for (FORMAS_DE_PAGO C : miformapago) {
                                out.println("<option onclick='setIdFormasdePago(\"" + C.getId_forma_de_pago() + "\")'>" + C.getTipo_de_pago() + "</option>");

                            }

                            out.println("</select>");
                        %>
                        <br>

                        <label for="IdTipoDocContable"><h5>Tipo de documento contable</h5></label>
                        <input type="text" name="TIPO_DE_DOCUMENTO_CONTABLE_id_tipo_de_documento_contable" class="form-control d-none" placeholder="Tipo de documento contable" id="txt_TIPO_DE_DOCUMENTO_CONTABLE_id_tipo_de_documento_contable_reg">

                        <br>
                        <%
                            TIPO_DE_DOCUMENTO_CONTABLE_DAO tipodoccontable_dao = new TIPO_DE_DOCUMENTO_CONTABLE_DAO();
                            ArrayList<TIPO_DE_DOCUMENTO_CONTABLE> mitipodoccontable = tipodoccontable_dao.ConsultarListadoTipoDocumento("", "");
                            out.println("<select class='form-control'id ='SelectTipoDocContable' size = '1' >");
                            out.println("<option onclick='setIdTipoDocContable(\"" + "" + "\")'>" + "--Seleccionar--" + "</option>");

                            for (TIPO_DE_DOCUMENTO_CONTABLE C : mitipodoccontable) {
                                out.println("<option onclick='setIdTipoDocContable(\"" + C.getCodigo() + "\")'>" + C.getDescripcion() + "</option>");

                            }

                            out.println("</select>");
                        %>
                        <br>
                        <label for="IdUsuario"><h5>Usuario</h5></label>
                        <input type="text" name="USUARIOS_id_usuario" class="form-control d-none" placeholder="Usuario" id="txt_USUARIOS_id_usuario_reg">
                        <br>
                        <%
                            USUARIOS_DAO usuario_dao = new USUARIOS_DAO();
                            ArrayList<USUARIOS> miusuario = usuario_dao.ConsultarListadoUsuario("", "", "");
                            out.println("<select class='form-control'id ='SelectUsuario' size = '1' >");
                            out.println("<option onclick='setIdUsuario(\"" + "" + "\")'>" + "--Seleccionar--" + "</option>");

                            for (USUARIOS C : miusuario) {
                                out.println("<option onclick='setIdUsuario(\"" + C.getId_usuario() + "\")'>" + C.getNombres_usuario() + "</option>");

                            }

                            out.println("</select>");
                        %>

                        <div id="controlRegistro" class="bd-example d-none">
                            <input id="txt_bandera_reg" type="text" class="form-control" name="banderaRegistro">
                        </div>
                        <br>
                        <br>

                        <center> 
                            <button class="btn btn-primary me-md-2" type="submit">Registrar</button>
                            <button class="btn btn-danger me-md-2" type="reset">Limpiar</button>
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
                        <h1>Actualización Movimiento</h1>
                    </center>
                    <center>
                        <img src="../imagenes/factura.png" alt=""/>
                    </center>
                    <form action="/Effective/ActualizarMovimientos" method="post" onsubmit="return RegistroMovimientoAct()" class="col-12">
                        <div class="form-row"> 
                            <div class="form-group col-md-4">
                                <h5>Numero de documento</h5>
                                <input type="text" name="numero_de_documento" class="form-control" placeholder="Numero de documento" id="txt_numero_de_documento_Act" readonly value="<%=request.getParameter("Numero_Documento")%>"/> 
                            </div>
                            <br>
                            <div class="form-group col-md-4">
                                <br>
                                <h5>Fecha</h5>
                                <input type="date" name="fecha" class="form-control" placeholder="fecha" id="txt_fecha_Act" value="<%=request.getParameter("Fecha")%>"/>
                            </div>
                            <br>
                            <div class="form-group col-md-4">
                                <br>
                                <h5>Sub total</h5>
                                <input type="text" name="subtotal" class="form-control" placeholder="subtotal" id="txt_subtotal_Act" value="<%=request.getParameter("Subtotal")%>"/>
                            </div>
                            <br>
                            <div class="form-group col-md-4">
                                <h5>Total Iva</h5>
                                <input type="text" name="total_iva" class="form-control" placeholder="total_iva" id="txt_total_iva_Act" value="<%=request.getParameter("Total_Iva")%>"/>
                            </div>
                            <br>
                            <div class="form-group col-md-4">
                                <h5>Descuento</h5>
                                <input type="text" name="descuento" class="form-control" placeholder="descuento" id="txt_descuento_Act" value="<%=request.getParameter("Descuento")%>"/>
                            </div>
                            <br>
                            <div class="form-group col-md-4">
                                <h5>Total factura</h5>
                                <input type="text" name="total_factura" class="form-control" placeholder="total_factura" id="txt_total_factura_Act" value="<%=request.getParameter("Total_Factura")%>"/>
                            </div>
                            <br>
                        </div>
                        <br>
                        <label for="IdFormasdePago"><h5>Formas de pago</h5></label>
                        <input type="text" name="FORMAS_DE_PAGO_id_forma_de_pago" class="form-control" placeholder="Formas de pago" id="txt_FORMAS_DE_PAGO_id_forma_de_pago_Act" readonly value="<%=request.getParameter("Formas_Pago")%>"/>
                        <br>
                        <label for="IdTipoDocContable"><h5>Tipo de documento contable</h5></label>
                        <input type="text" name="TIPO_DE_DOCUMENTO_CONTABLE_id_tipo_de_documento_contable" class="form-control" placeholder="Tipo de documento contable" id="txt_TIPO_DE_DOCUMENTO_CONTABLE_id_tipo_de_documento_contable_Act" readonly value="<%=request.getParameter("Tipo_Documento")%>">
                        <br>
                        <label for="IdUsuario"><h5>Usuario</h5></label>
                        <input type="text" name="USUARIOS_id_usuario" class="form-control" placeholder="Usuario" id="txt_USUARIOS_id_usuario_Act" readonly value="<%=request.getParameter("Usuarios")%>">
                        <div id="controlRegistro" class="bd-example d-none">
                            <input id="txt_bandera_reg" type="text" class="form-control" name="banderaRegistro">
                        </div>
                        <br>
                        <br>

                        <center> 
                            <button class="btn btn-primary me-md-2" type="submit">Registrar</button>
                            <button class="btn btn-danger me-md-2" type="reset">Limpiar</button>
                        </center>
                        <br>
                    </form>
                </div>
            </div>
        </div>


        <br>
        <br>
        <div class="container">
            <form action="/Effective/ConsultarMovimiento" method="post">
                <div class="row justify-content-md-center">
                    <div id="Listado" class="bd-example">

                        <div id="ControlRegistro" class="input-group">


                            <input id="txt_Id_Consultado" type="text" class="form-control" name="IdConsultado" value="<%=buscando%>" autofocus placeholder="Buscar por Numero de documento, fecha.."/>
                            <button type="button" class="btn btn-info" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" onclick="realizarBusqueda()">Buscar</button>

                        </div>

                        <br>
                        <br>

                        <div>
                            <h1>Listado Movimiento</h1>

                            <br>

                            <div id="Tabla_Movimiento"></div>

                            <%
                                MOVIMIENTO_DAO movimiento_dao = new MOVIMIENTO_DAO();
                                ArrayList<MOVIMIENTO> mi_lista_movimiento = new ArrayList<MOVIMIENTO>();
                                mi_lista_movimiento = movimiento_dao.ConsultarListadoMovimiento(buscando, buscando);
                                out.println("<table class='table table-primary table-striped table-hover table-bordered border-danger'><tr><td>Numero Documento</td><td>Fecha</td><td>Subtotal</td><td>Total IVA</td><td>Descuento</td><td>Total Factura</td><td>Forma de Pago</td><td>Tipo Doc Contable</td><td>Usuario</td><td>Actualizar</td><td>Eliminar</td>");

                                for (MOVIMIENTO M : mi_lista_movimiento) {

                                    out.println("<tr>");
                                    out.println("<td>" + M.getNumero_de_documento() + "</td>");
                                    out.println("<td>" + M.getFecha() + "</td>");
                                    out.println("<td>" + M.getSubtotal() + "</td>");
                                    out.println("<td>" + M.getTotal_iva() + "</td>");
                                    out.println("<td>" + M.getDescuento() + "</td>");
                                    out.println("<td>" + M.getTotal_factura() + "</td>");
                                    out.println("<td>" + M.getFORMAS_DE_PAGO_id_forma_de_pago() + "</td>");
                                    out.println("<td>" + M.getTIPO_DE_DOCUMENTO_CONTABLE_id_tipo_de_documento_contable() + "</td>");
                                    out.println("<td>" + M.getUSUARIOS_id_usuario() + "</td>");

                                    out.println("<td>" + "<input type = 'submit' class='btn btn-primary form-control btn btn-login' value='Actualizar'name='Actualizar'onclick='SetIdConsulta(" + M.getNumero_de_documento() + ")'/>" + "</td>");
                                    out.println("<td>" + "<input type = 'submit' class='btn btn-danger form-control btn btn-login' value='Eliminar'name='Eliminar'onclick='SetIdConsulta(" + M.getNumero_de_documento() + ")'/>" + "</td>");
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
