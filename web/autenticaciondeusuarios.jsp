<%-- 
    Document   : autenticaciondeusuarios
    Created on : 17/06/2020, 09:40:18 PM
    Author     : AndresSaenz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="javascript/jquery-1.11.0.min.js" type="text/javascript"></script>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <title>Autenticación usuario</title>
    </head>

    <body>

        <br>
        <br>
        <br>


        <div class="modal-dialog">
            <div class="modal-content">
                <div class="col-12">


                    <center>
                        <h1>Autenticación de usuarios</h1>
                    </center>
                    <br>
                    <center> 
                        <img src="imagenes/iniciar-sesion.png" alt=""/>
                    </center>
                    <br>



                    <form action="/Effective/IniciarSesion" method="post" class="cold-12">
                        <h5>N°identificación</h5>
                        <input type="text" name="identificacion" class="form-control" placeholder="Ingrese su número de identificación">
                        <br>
                        <h5>Clave</h5>
                        <input type="password" name="clave" class="form-control" placeholder="Ingrese su clave"> 
                        <div class="form-group">
                            <br>
                            <center>
                                <button class="btn btn-success" >Ingresar</button>

                            </center>  
                        </div>
                        <br>
                        <label>
                            Si usted ya se ha registrado anteriormente digite su número de identificación y clave y presione ingresar, caso
                            contrario debe antes registrarse presionando el botón de <a href="../registrarusuarios.jsp">Registrase.</a>
                        </label>
                    </form>
                </div>
            </div>
        </div>


        <style>
            body{
                background-image: url(imagenes/imagencuatro.jpg);
                background-repeat: no-repeat;
                background-size: 120%;
                font-family: Gungsuh;

            }

            h1{

                color: whitesmoke; 
            }


            .modal-content{

                background-color: #494f54;
                opacity: .95;

            }

            h5{
                color: whitesmoke;
            }

            h1{
                text-shadow: 1px 1px 5px black;
                color: #000;
            }
            
            label{
                
                 color: whitesmoke;
                
            }

        </style>    

    </body>
</html>