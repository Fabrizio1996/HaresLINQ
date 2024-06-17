<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Hares3._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="styles.css" />

   <nav class="navbar">
    <div class="navbar-brand">
        <img src="Imagenes/HARES.jpg" style="width: 200px; height: 100px" />
        <br />
        <br />
        <span>Productos Destacados</span>
    </div>
    <div class="form-inline">
        <div class="input-group">
            <input class="search-input-1" type="search" placeholder="Buscar" aria-label="Buscar">
            <asp:Menu ID="Menu1" runat="server"></asp:Menu>
            <div class="input-group-append">
                <button class="btn button-1-copy" type="submit">
                    <i class="fas fa-search"></i>
                </button>
            </div>
        </div>
    </div>
    <div class="sidebar">
        <ul>
            <li><a href="frmShop.aspx">Ofertas</a></li>
            <li><a href="frmAyuda.aspx">Ayuda</a></li>
            <li><a href="frmCarrito.aspx">Carrito</a></li>
        </ul>
    </div>
</nav>
</asp:Content>



