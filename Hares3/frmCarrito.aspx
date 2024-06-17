<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmCarrito.aspx.cs" Inherits="Hares3.frmCarrito" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Carrito de Compras</title>
    <!-- Agregar referencia a Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Estilos personalizados -->
    <style>
        /* Estilos adicionales personalizados */
        /* Puedes agregar tus propios estilos aquí */
        /* Por ejemplo, estilos para los productos en el carrito */
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Carrito de Compras</h1>
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" src="Imagenes/memoriaram.jpg"/>
                        <div class="card-body">
                            <h5 class="card-title">Memoria Ram de Laptop</h5>
                            <p class="card-text">Memoria DDR4, 16GB, Velocidad 3200 Mhz</p>
                            <p class="card-text">Cantidad: 1</p>
                            <p class="card-text">Precio: S/180</p>
                            <a href="#" class="btn btn-danger">Eliminar</a>
                        </div>
                    </div>
                </div>
                <!-- Repite este bloque para cada producto en el carrito -->
            </div>
            <div class="row mt-4">
                <div class="col-md-6 offset-md-6">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Total</h5>
                            <p class="card-text">Cantidad de Productos: 2</p>
                            <p class="card-text">Total a Pagar: S/360</p>
                            <a href="#" class="btn btn-primary">Pagar</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <!-- Agregar referencia a Bootstrap JS al final del body para una carga más rápida -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

