<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmSAdminstrador.aspx.cs" Inherits="Hares3.frmSAdminstrador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administrador</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container mt-4">
        <h1 class="text-center">Bienvenido administrador al sistema</h1>
        <div class="text-center mt-4">
            <asp:Label ID="lblAdministrador" runat="server" CssClass="form-label"></asp:Label>
            <div class="btn-group-vertical" role="group">
                <asp:Button runat="server" ID="btnCrudProductos" Text="CRUD Productos" OnClick="btnCrudProductos_Click" CssClass="btn btn-primary mb-2" />
                <asp:Button runat="server" ID="btnCrudPedidos" Text="CRUD Pedidos" OnClick="btnCrudPedidos_Click" CssClass="btn btn-secondary mb-2" />
                <asp:Button runat="server" ID="btnCrudCliente" Text="CRUD Cliente" OnClick="btnCrudCliente_Click" CssClass="btn btn-success mb-2" />
                <asp:Button runat="server" ID="btnCerrar" Text="Cerrar sesión" OnClick="btnCerrar_Click" CssClass="btn btn-danger" />
            </div>
        </div>
    </div>
    </form>
</body>
</html>

