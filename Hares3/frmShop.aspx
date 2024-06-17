<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmShop.aspx.cs" Inherits="Hares3.frmShop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Tienda</title>
    <!-- Agregar referencia a Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Estilos personalizados -->
    <style>
        /* Estilos adicionales personalizados */
        /* Puedes agregar tus propios estilos aquí */
        /* Por ejemplo, estilos para los productos, imágenes, etc. */
    </style>
</head>
<body>
    <form id="frmShop" runat="server">
        <div class="container">
            <h1>Ofertas</h1>
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" src="Imagenes/ofertas.JPG" alt="Producto">
                        <div class="card-body">
                            <h5 class="card-title">Tintas de Impresora</h5>
                            <p class="card-text">Tintas originales de Epson</p>
                            <a href="#" class="btn btn-primary">Comprar</a>
                        </div>
                    </div>
                </div>
                <!-- Repite este bloque para cada producto -->
            </div>
        </div>
    </form>
    <!-- Agregar referencia a Bootstrap JS al final del body para una carga más rápida -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
