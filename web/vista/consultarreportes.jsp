

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Consultar reportes</title>
    </head>
    <body>


        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>

        <br>
        <br>



        <div class="modal-dialog">
            <div class="col-12" >
                <div class="modal-content">
                    <div class="col-12">

                        <center>
                            <h1>Consultar reportes</h1>
                        </center>
                        <br>
                        <center>
                            <img src="../imagenes/icons8-google-docs-250.png" alt=""/>
                        </center>

                        <br>

                        <form class="cold-12">
                            <small class="form-text text-muted"><h5>Ingrese mes y año del reporte a consultar</h5></small>
                            <input type="month" class="form-control">
                            <br>
                        </form>

                        <div class="form-group">
                            <center>
                                <button class="btn btn-success">Consultar</button>
                                <button class="btn btn-danger" onclick="location.href = '../menu.jsp'">Volver</button>
                            </center>      
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
