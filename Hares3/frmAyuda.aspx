<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmAyuda.aspx.cs" Inherits="Hares3.frmAyuda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ayuda</title>
    <!-- Agregar referencia a Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Estilos personalizados -->
    <style>
        /* Estilos adicionales personalizados */
        /* Puedes agregar tus propios estilos aquí */
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar">
            <div class="navbar-brand">
                <img src="Imagenes/HARES.jpg" style="width: 200px; height: 100px" />
            </div>
            <div class="form-inline">
                <div class="input-group">
                    <input class="search-input-1" type="search" placeholder="¿Tienes alguna pregunta?" aria-label="¿Tienes alguna pregunta?"/>
                    <div class="input-group-append">
                        <button class="btn button-1-copy" type="submit">
                            <i class="fas fa-search"></i>
                        </button>
                    </div>
                </div>
            </div>
        </nav>
        <div class="container">
            <h1>Preguntas Frecuentes</h1>
            <p>Encuentra respuestas a tus preguntas más frecuentes aquí.</p>
            <div class="accordion" id="accordionExample">
                <div class="card">
                    <div class="card-header" id="headingOne">
                        <h2 class="mb-0">
                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                Pregunta frecuente 1
                            </button>
                        </h2>
                    </div>
                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                        <div class="card-body">
                            Respuesta a la pregunta frecuente 1.
                        </div>
                    </div>
                </div>
                <!-- Repite este bloque para cada pregunta frecuente -->
            </div>
        </div>
    </form>
    <!-- Agregar referencia a Bootstrap JS al final del body para una carga más rápida -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

