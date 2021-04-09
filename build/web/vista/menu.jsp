<%-- 
   Document   : menu
   Created on : 13/10/2020, 09:10:02 PM
   Author     : AndresSaenz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/bootstrap.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Effective Record</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
            <a class="navbar-brand" href="#">Miscelánea LYD</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link"  href="menu.jsp">Inicio <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Registros
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">

                            <a class="dropdown-item" href="../vista/registrarroles.jsp">Registrar tipo usuario</a>
                            <a class="dropdown-item" href="../vista/registrarestadousuario.jsp">Registrar estado usuario</a>
                            <a class="dropdown-item" href="../vista/registrartipodocumento.jsp">Registrar tipo documento usuario</a>
                            <a class="dropdown-item" href="../vista/registrargenerousuario.jsp">Registrar genero usuario</a>
                            <a class="dropdown-item" href="../vista/registrarmovimiento.jsp">Registrar movimiento</a>
                            <a class="dropdown-item" href="../vista/consultarreportes.jsp">Consultar reportes</a>
                            <a class="dropdown-item" href="../vista/RegistroMovimiento.jsp">Registro movimiento</a>
                            <a class="dropdown-item" href="../vista/registroDetalleMovimiento.jsp">Registro detalle movimiento</a>
                            <a class="dropdown-item" href="../vista/registrarCategoria.jsp">Registro categoria</a>
                            <a class="dropdown-item" href="../vista/registrarEstadoProducto.jsp">Registro Estado producto</a>
                            <a class="dropdown-item" href="../vista/registrarMarca.jsp">Registro Marca</a>
                            <a class="dropdown-item" href="../vista/registrarUnidadMedida.jsp">Registro Unidad medida</a>
                        </div>
                    </li>




                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Gestión de usuarios
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="../vista/registroUsuarios.jsp">Gestionar Usuarios</a> 
                        </div>

                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Gestión de proveedores
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="../vista/registrarProveedores.jsp">Gestionar Proveedores</a> 
                        </div>

                    </li>


                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Gestión de productos
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="../vista/registrarproductos.jsp">Gestionar Productos</a> 
                        </div>

                    </li>



                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Ventas
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="../vista/RegistroMovimiento.jsp">Gestionar Movimientos</a> 
                        </div>

                    </li>
                </ul>

                <div class="dropdown">
                    <button class="btn btn-danger dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Usuario logeado
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="#">
                            <center>
                                <img src="../imagenes/empleados_1.png" alt="60" width="60"/>
                            </center>
                        </a>
                        <a class="dropdown-item" href="#">Nombre</a>
                        <a class="dropdown-item" href="#">Identificacion</a>
                        <br>
                        <center>
                            <a class="btn btn-outline-danger" href="../autenticaciondeusuarios.jsp">Salir</a>
                        </center>
                    </div>
                    
                </div>
            </div>
        </nav>
        
        <br>
        <br>
        <br>
        <br>
        <br>
        

        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" style="height: 800px;">
                <div class="carousel-item active" style="height: 800px;">
                    <img src="../imagenes/imagensita3.jpg" class="d-block w-100" alt="..." style="height: 800px;">
                </div>
                <div class="carousel-item" style="height: 800px;">
                    <img src="../imagenes/imagensitacinco.jpg" class="d-block w-100" alt="..." style="height: 900px;">
                </div>
                <div class="carousel-item" style="height: 800px;">
                    <img src="../imagenes/imagensitaocho.jpg" class="d-block w-100" alt="..." style="height: 800px;">
                </div>
                <div class="carousel-item" style="height: 800px;">
                    <img src="../imagenes/imagensitaseis.jpg" class="d-block w-100" alt="..." style="height: 800px;">
                </div>
                <div class="carousel-item" style="height: 800px;">
                    <img src="../imagenes/imagensitasiete.jpg" class="d-block w-100" alt="..." style="height: 800px;">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>













        <style>

            body{
                background-image: url(../imagenes/pencils.jpg);
                background-repeat: no-repeat;
                background-size: 130%;
                font-family: 'Acme', sans-serif;
                font-size: 20px;

            }

            h1{

                color: whitesmoke;

            }

            p,hr{

                color: whitesmoke;

            }


        </style>





        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
