
<%@page import="modelo.MARCA_PRODUCTO"%>
<%@page import="controlador.MARCA_PRODUCTO_DAO"%>
<%@page import="modelo.ESTADO_PRODUCTO"%>
<%@page import="controlador.ESTADO_PRODUCTO_DAO"%>
<%@page import="modelo.CATEGORIA_PRODUCTO"%>
<%@page import="controlador.CATEGORIA_PRODUCTO_DAO"%>
<%@page import="modelo.PROVEEDORES"%>
<%@page import="controlador.PROVEEDORES_DAO"%>
<%@page import="modelo.UNIDAD_DE_MEDIDA_PRODUCTO"%>
<%@page import="controlador.UNIDAD_DE_MEDIDA_PRODUCTO_DAO"%>
<%@page import="modelo.TIPO_DE_DOCUMENTO_CONTABLE"%>
<%@page import="controlador.TIPO_DE_DOCUMENTO_CONTABLE_DAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.PRODUCTOS"%>
<%@page import="controlador.PRODUCTOS_DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="../javascript/RegistroProductos.js" type="text/javascript"></script>
        <script src="../javascript/jquery-1.11.0.min.js" type="text/javascript"></script>
        <script src="../javascript/visualizaOculta.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../css/estilos.css" rel="stylesheet" type="text/css"/>

        <title>Registro producto</title>
    </head>



    <body onload="visualizaOculta('<%=request.getParameter("Vista")%>');">


        <% String buscando = request.getParameter("buscando");
            if (buscando == null) {
                buscando = "";
            }
        %>

        <div class="row justify-content-md-center">
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

        <br>
        <br>

        <div id="Registrar" class="bd-example d-none">
            <div class="container">
                <div class="modal-content">  
                    <div  class="bd-example">
                        <h1>Registrar Productos</h1>
                        <br>
                        <center>
                            <img src="../imagenes/orden.png" alt=""/>
                        </center>
                        <br>
                        <form action="/Effective/RegistrarProductos" method="post" onsubmit="return RegistrarProductos()" class="col-12">
                            <div class="form-row"> 
                                <div class="form-group col-md-6"> 
                                    <h5>Nombre</h5>
                                    <input type="text" name="nombre_producto" class="form-control " placeholder="Ingrese el nombre del producto" id="txt_nombre_producto_Reg"> 
                                </div>
                                <br>
                                <div class="form-group col-md-6">
                                    <h5>Identificacion</h5>
                                    <input type="text" name="identificacion_producto" class="form-control" placeholder="Ingrese la identificacion del producto" id="txt_identificacion_producto_Reg"> 
                                </div>
                            </div>
                            <div class="form-row"> 
                                <div class="form-group col-md-12">
                                    <h5>Descripcion</h5>
                                    <input type="text" name="descripcion_producto" class="form-control" placeholder="Ingrese la descripcion del producto" id="txt_descripcion_producto_Reg">
                                </div>
                            </div>  
                            <br>
                            <div class="form-row"> 
                                <div class="form-group col-md-4">
                                    <h5>Precio</h5>
                                    <input type="text" name="precio_producto" class="form-control" placeholder="Ingrese el precio del producto" id="txt_precio_producto_Reg"> 
                                </div>
                                <br>
                                <div class="form-group col-md-4">
                                    <h5>Cantidad</h5>
                                    <input type="text" name="cantidad_producto" class="form-control" placeholder="Ingrese la cantidad del producto" id="txt_cantidad_producto_Reg">
                                </div>
                                <br>
                                <div class="form-group col-md-4">
                                    <h5>Iva</h5>
                                    <input type="text" name="iva_producto" class="form-control" placeholder="Ingrese el iva del producto" id="txt_iva_producto_Reg">
                                </div>
                                <br>
                            </div>


                            <div class="form-row"> 
                                <div class="form-group col-md-6">
                                    <label for="IdUnidadMedida"><h5>Unidad Medida</h5></label>
                                    <input type="text" name="UNIDAD_DE_MEDIDA_PRODUCTO_id_unidad_de_medida_producto" class="form-control d-none" placeholder="unidad de medida" id="txt_UNIDAD_DE_MEDIDA_PRODUCTO_id_unidad_de_medida_producto_Reg">
                                    <%
                                        UNIDAD_DE_MEDIDA_PRODUCTO_DAO mi_estado_unidad_medidaDao = new UNIDAD_DE_MEDIDA_PRODUCTO_DAO();
                                        ArrayList<UNIDAD_DE_MEDIDA_PRODUCTO> mi_lista_unidad_medida = mi_estado_unidad_medidaDao.ConsultarListarUnidad_de_medida(' ', "");
                                        out.println("<select class='form-control'id ='SelectUnidadMedida' size = '1' >");
                                        out.println("<option onclick='setIdUnidadMedida(\"" + "" + "\")'>" + "--Seleccionar--" + "</option>");

                                        for (UNIDAD_DE_MEDIDA_PRODUCTO U : mi_lista_unidad_medida) {
                                            out.println("<option onclick='setIdUnidadMedida(\"" + U.getId_unidad_de_medida_producto() + "\")'>" + U.getDescripcion_unidad_de_medida_producto() + "</option>");

                                        }

                                        out.println("</select>");
                                    %>
                                </div>
                                <br>
                                <div class="form-group col-md-6"> 
                                    <label for="IdProveedor"><h5>Proveedores</h5></label>
                                    <input type="Text" name="PROVEEDORES_id_proveedor" class="form-control d-none" placeholder="proveedor" id="txt_PROVEEDORES_id_proveedor_Reg">
                                    <br>

                                    <%
                                        PROVEEDORES_DAO mi_proveedor_dao = new PROVEEDORES_DAO();
                                        ArrayList<PROVEEDORES> mi_lista_proveedor = mi_proveedor_dao.ConsultarListadoProveedor("", "");
                                        out.println("<select class='form-control'id ='SelectProveedores' size = '1' >");
                                        out.println("<option onclick='setIdProveedor(\"" + "" + "\")'>" + "--Seleccionar--" + "</option>");

                                        for (PROVEEDORES P : mi_lista_proveedor) {
                                            out.println("<option onclick='setIdProveedor(\"" + P.getId_proveedor() + "\")'>" + P.getNombre_proveedor() + "</option>");

                                        }

                                        out.println("</select>");
                                    %>
                                </div>
                            </div>
                            <br>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="IdCategoria"><h5>Categoria</h5></label>
                                    <input type="number" name="CATEGORIA_PRODUCTO_id_categoria_producto" class="form-control d-none" placeholder="Categoria" id="txt_CATEGORIA_PRODUCTO_id_categoria_producto_reg">

                                    <br>
                                    <%
                                        CATEGORIA_PRODUCTO_DAO mi_Categoria_producto_dao = new CATEGORIA_PRODUCTO_DAO();
                                        ArrayList<CATEGORIA_PRODUCTO> mi_lista_Categoria_producto = mi_Categoria_producto_dao.ConsultarListadoCategoria_producto(' ', "");
                                        out.println("<select class='form-control'id ='SelectCategoria' size = '1' >");
                                        out.println("<option onclick='setIdCategoria(\"" + "" + "\")'>" + "--Seleccionar--" + "</option>");

                                        for (CATEGORIA_PRODUCTO C : mi_lista_Categoria_producto) {
                                            out.println("<option onclick='setIdCategoria(\"" + C.getId_categoria_producto() + "\")'>" + C.getNombre_categoria_producto() + "</option>");

                                        }

                                        out.println("</select>");
                                    %>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="IdEstadoP"><h5>Estado</h5></label>
                                    <input type="text" name="ESTADO_PRODUCTO_id_estado_producto" class="form-control d-none" placeholder="Estado Producto" id="txt_ESTADO_PRODUCTO_id_estado_producto_reg">
                                    <br> 

                                    <%
                                        ESTADO_PRODUCTO_DAO mi_estadoproducto_dao = new ESTADO_PRODUCTO_DAO();
                                        ArrayList<ESTADO_PRODUCTO> mi_lista_estado_producto = mi_estadoproducto_dao.ConsultarListadoEstadoProducto(' ', "");
                                        out.println("<select class='form-control'id ='SelectEstado' size = '1' >");
                                        out.println("<option onclick='setIdEstadoP(\"" + "" + "\")'>" + "--Seleccionar--" + "</option>");

                                        for (ESTADO_PRODUCTO E : mi_lista_estado_producto) {
                                            out.println("<option onclick='setIdEstadoP(\"" + E.getId_estado_producto() + "\")'>" + E.getDescripcion_estado_producto() + "</option>");

                                        }

                                        out.println("</select>");
                                    %>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <br>
                                    <label for="IdMarca"><h5>Marca</h5></label>
                                    <input type="text" name="MARCA_PRODUCTO_id_marca_producto" class="form-control d-none" placeholder="Marca del producto" id="txt_MARCA_PRODUCTO_id_marca_producto_reg">
                                    <%
                                        MARCA_PRODUCTO_DAO mi_marcaproducto_dao = new MARCA_PRODUCTO_DAO();
                                        ArrayList<MARCA_PRODUCTO> mi_lista_marcaproducto = mi_marcaproducto_dao.ConsultarListadoMarcaProducto(' ', "");
                                        out.println("<select class='form-control'id ='SelectMarca' size = '1' >");
                                        out.println("<option onclick='setIdMarca(\"" + "" + "\")'>" + "--Seleccionar--" + "</option>");

                                        for (MARCA_PRODUCTO M : mi_lista_marcaproducto) {
                                            out.println("<option onclick='setIdMarca(\"" + M.getId_marca_producto() + "\")'>" + M.getNombre_marca_producto() + "</option>");

                                        }

                                        out.println("</select>");
                                    %>
                                </div>
                                <br>                                 
                            </div>
                            <div id="controlRegistro" class="bd-example d-none">
                                <input id="txt_bandera_reg" type="text" class="form-control" name="banderaRegistro">
                            </div>
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
        </div>



        <div id="Actualizar" class="bd-example d-none">
            <div class="container">
                <div class="modal-content">  
                    <div  class="bd-example">
                        <h1>Actualizar Productos</h1>
                        <br>
                        <center>
                            <img src="../imagenes/orden.png" alt=""/>
                        </center>
                        <br>
                        <form action="/Effective/ActualizarProductos" method="post" onsubmit="return ActProductos()" class="col-12">
                            <div class="form-row"> 
                                <div class="form-group col-md-6"> 
                                    <h5>Nombre</h5>
                                    <input type="text" name="nombre_producto" class="form-control " placeholder="Ingrese el nombre del producto" id="txt_nombre_producto_Act"  value="<%=request.getParameter("Nombres")%>"/> 
                                </div>
                                <br>
                                <div class="form-group col-md-6">
                                    <h5>Identificacion</h5>
                                    <input type="text" name="identificacion_producto" class="form-control" placeholder="Ingrese la identificacion del producto" id="txt_identificacion_producto_Act" readonly value="<%=request.getParameter("Identificacion")%>"/> 
                                </div>
                            </div>
                            <div class="form-row"> 
                                <div class="form-group col-md-12">
                                    <h5>Descripcion</h5>
                                    <input type="text" name="descripcion_producto" class="form-control" placeholder="Ingrese la descripcion del producto" id="txt_descripcion_producto_Act"  value="<%=request.getParameter("Descripcion")%>"/>
                                </div>
                            </div>  
                            <br>
                            <div class="form-row"> 
                                <div class="form-group col-md-4">
                                    <h5>Precio</h5>
                                    <input type="text" name="precio_producto" class="form-control" placeholder="Ingrese el precio del producto" id="txt_precio_producto_Act" value="<%=request.getParameter("Precio")%>"/> 
                                </div>
                                <br>
                                <div class="form-group col-md-4">
                                    <h5>Cantidad</h5>
                                    <input type="text" name="cantidad_producto" class="form-control" placeholder="Ingrese la cantidad del producto" id="txt_cantidad_producto_Act" value="<%=request.getParameter("Cantidad")%>"/>
                                </div>
                                <br>
                                <div class="form-group col-md-4">
                                    <h5>Iva</h5>
                                    <input type="text" name="iva_producto" class="form-control" placeholder="Ingrese el iva del producto" id="txt_iva_producto_Act" value="<%=request.getParameter("Iva")%>"/>
                                </div>
                                <br>
                            </div>


                            <div class="form-row"> 
                                <div class="form-group col-md-6">
                                    <label for="IdUnidadMedida"><h5>Unidad Medida</h5></label>
                                    <input type="text" name="UNIDAD_DE_MEDIDA_PRODUCTO_id_unidad_de_medida_producto" class="form-control " placeholder="unidad de medida" id="txt_UNIDAD_DE_MEDIDA_PRODUCTO_id_unidad_de_medida_producto_Act" readonly value="<%=request.getParameter("UnidadMedida")%>"/>
                                </div>
                                <br>
                                <div class="form-group col-md-6"> 
                                    <label for="IdProveedor"><h5>Proveedores</h5></label>
                                    <input type="Text" name="PROVEEDORES_id_proveedor" class="form-control " placeholder="proveedor" id="txt_PROVEEDORES_id_proveedor_Act" readonly value="<%=request.getParameter("Proveedores")%>"/>
                                    <br>
                                </div>
                            </div>
                            <br>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="IdCategoria"><h5>Categoria</h5></label>
                                    <input type="" name="CATEGORIA_PRODUCTO_id_categoria_producto" class="form-control " placeholder="Categoria" id="txt_CATEGORIA_PRODUCTO_id_categoria_producto_Act"  readonly value="<%=request.getParameter("Categoria_producto")%>"/>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="IdEstadoP"><h5>Estado</h5></label>
                                    <input type="text" name="ESTADO_PRODUCTO_id_estado_producto" class="form-control " placeholder="Estado Producto" id="txt_ESTADO_PRODUCTO_id_estado_producto_Act" readonly value="<%=request.getParameter("Estado_producto")%>"/>
                                    <br> 
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <br>
                                    <label for="IdMarca"><h5>Marca</h5></label>
                                    <input type="text" name="MARCA_PRODUCTO_id_marca_producto" class="form-control " placeholder="Marca del producto" id="txt_MARCA_PRODUCTO_id_marca_producto_Act" readonly value="<%=request.getParameter("Marca_producto")%>"/>
                                </div>
                                <br>                                 
                            </div>
                            <div id="controlRegistro" class="bd-example d-none">
                                <input id="txt_bandera_reg" type="text" class="form-control" name="banderaRegistro">
                            </div>
                            <br>
                            <center> 
                                <button class="btn btn-primary me-md-2" type="submit">Actualizar</button>
                                <button class="btn btn-danger me-md-2" type="reset">Limpiar</button>
                            </center>  
                            <br>
                        </form>
                    </div>
                </div>
            </div>
        </div>



        <div class="container">
            <form action="/Effective/ConsultarProductos" method="post">
                <div class="row justify-content-md-center">
                    <div id="Listado" class="bd-example">

                        <div id="ControlRegistro" class="input-group">

                            <input id="txt_Id_Consultado" type="text" class="form-control" name="IdConsultado" value="<%=buscando%>" autofocus placeholder="Buscar por Nombres del producto..."/>
                            <button type="button" class="btn btn-info" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" onclick="realizarBusqueda()">Buscar</button>

                        </div>

                        <br>
                        <br>

                        <div>
                            <h1>Listado Productos</h1>

                            <br>


                            <div id="Tabla_Productos"></div>
                            <%
                                PRODUCTOS_DAO productos_dao = new PRODUCTOS_DAO();
                                ArrayList<PRODUCTOS> productosList = new ArrayList<PRODUCTOS>();
                                productosList = productos_dao.ConsultarListadoProductos(buscando, buscando);
                                out.println("<table class='table table-primary table-striped table-hover table-bordered border-danger'><tr><td>Nombre Producto</td><td>Numero referencia</td><td>Precio</td><td>Descripcion</td><td>Cantidad</td><td>Iva</td><td>Unidad_medida</td><td>Proveedor</td><td>categoria</td><td>Estado</td><td>Marca</td><td>Actualizar</td><td>Eliminar</td>");

                                for (PRODUCTOS P : productosList) {

                                    out.println("<tr>");
                                    out.println("<td>" + P.getNombre_producto() + "</td>");
                                    out.println("<td>" + P.getIdentificacion_producto() + "</td>");
                                    out.println("<td>" + P.getPrecio_producto() + "</td>");
                                    out.println("<td>" + P.getDescripcion_producto() + "</td>");
                                    out.println("<td>" + P.getCantidad_producto() + "</td>");
                                    out.println("<td>" + P.getIva_producto() + "</td>");
                                    out.println("<td>" + P.getUNIDAD_DE_MEDIDA_PRODUCTO_id_unidad_de_medida_producto() + "</td>");
                                    out.println("<td>" + P.getPROVEEDORES_id_proveedor() + "</td>");
                                    out.println("<td>" + P.getCATEGORIA_PRODUCTO_id_categoria_producto() + "</td>");
                                    out.println("<td>" + P.getESTADO_PRODUCTO_id_estado_producto() + "</td>");
                                    out.println("<td>" + P.getMARCA_PRODUCTO_id_marca_producto() + "</td>");

                                    out.println("<td>" + "<input type = 'submit' class='btn btn-primary form-control btn btn-login' value='Actualizar'name='Actualizar'onclick='SetIdConsulta(" + P.getIdentificacion_producto() + ")'/>" + "</td>");
                                    out.println("<td>" + "<input type = 'submit' class='btn btn-danger form-control btn btn-login' value='Eliminar'name='Eliminar'onclick='SetIdConsulta(" + P.getIdentificacion_producto() + ")'/>" + "</td>");
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
                margin-top: 10px;
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