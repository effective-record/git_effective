<%-- 
    Document   : registroDetalleMovimiento
    Created on : 24/01/2021, 12:01:38 PM
    Author     : AndresSaenz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="../javascript/jquery-1.11.0.min.js" type="text/javascript"></script>
        <script src="../javascript/RegistroDetalleMovimiento.js" type="text/javascript"></script>
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro detalle movimiento</title>
    </head>
    <body>
        <div class="modal-dialog">
            <div class="col-12">
                <div class="modal-content">
                    <div class="col-12">
                        <div class="container">
                            <div class="row justify-content-md-center">
                                <div id="Registrar" class="bd-example">

                                    <center>
                                        <h1>Registro Detalle Movimiento</h1>
                                    </center>
                                    <br>
                                    <center> 
                                        <img src="../imagenes/hojas-de-google.png" alt=""/>
                                    </center>
                                    <br>
                                    <form action="/Effective/RegistroDetalleMovimiento" method="post" onsubmit="return RegistroDetalleMovimiento()" class="cold-12">
                                       
                                        <h5>Movimiento</h5>
                                        <input id="txt_movimiento_Reg" name="MOVIMIENTO_id_movimiento" type="text" class="form-control" placeholder="Ingrese la id del movimiento">
                                        <br>
                                        <p style="color: whitesmoke" col-7>  
                                            Seleccione el producto.
                                        </p>
                                        <li style="color: whitesmoke"  >
                                            1. Cuadernos
                                        </li>
                                        <li style="color: whitesmoke"   >
                                            2. Lapices
                                        </li>
                                        <br> 
                                        <h5>Producto</h5>
                                        <input id="txt_id_producto_Reg" type="text" name="PRODUCTOS_id_producto" placeholder="Seleccione un producto" class="form-control">
                                        <br>
                                        <div class="form-row"> 
                                        <div class="form-group col-md-6">
                                        <h5>Cantidad</h5>
                                        <input id="txt_cantidad_Reg" type="text" name="cantidad" class="form-control" placeholder="Ingrese la cantidad">
                                        </div>
                                        <br>
                                        <div class="form-group col-md-6">
                                        <h5>Precio</h5>
                                        <input id="txt_precio_productos_Reg" name="precio_productos" type="text" class="form-control" placeholder="Ingrese el precio">
                                        </div>
                                        <br>
                                        <div class="form-group col-md-6">
                                        <h5>Iva Producto</h5>
                                        <input id="txt_iva_productos_Reg" name="iva_productos" type="text" class="form-control" placeholder="Ingrese el Iva del producto">
                                        </div>
                                        <br>
                                        <div class="form-group col-md-6">
                                        <h5>Total Producto</h5>
                                        <input id="txt_total_productos_Reg" name="total_productos" type="text" class="form-control" placeholder="Ingrese el total del producto">
                                        </div>
                                        <br>
                                        <div id="controlRegistro" class="bd-example d-none">
                                            <input id="txt_bandera_reg" type="text" class="form-control" name="banderaRegistro">
                                        </div>
                                        </div>
                                        <br>
                                        <center> 
                                            <button class="btn btn-primary me-md-2" type="submit">Registrar</button>
                                            <button class="btn btn-danger me-md-2" type="reset">Limpiar</button>
                                        </center>
                                        <br>
                                        <br>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
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
