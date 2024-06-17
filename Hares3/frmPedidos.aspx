<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmPedidos.aspx.cs" Inherits="Hares3.frmPedidos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
       <div>
            <p>CodPedido: <asp:TextBox runat="server" ID="txtCodPedido" /></p>
            <p>CodCliente: <asp:TextBox runat="server" ID="txtCodCliente" /></p>
            <p>FechaPedido: <asp:TextBox runat="server" ID="txtFechaPedido" /></p>
            <p>Total: <asp:TextBox runat="server" ID="txtTotal" /></p>
       </div>
        <p>
            <asp:Button Text="Agregar" runat="server" ID="btnAgregar" OnClick="btnAgregar_Click" />
            <asp:Button Text="Eliminar" runat="server" ID="btnEliminar" OnClick="btnEliminar_Click" />
            <asp:Button Text="Actualizar" runat="server" ID="btnActualizar" OnClick="btnActualizar_Click" />
        </p>
        <div>
            <p>Buscar por CodPedido o CodCliente: <asp:TextBox runat="server" ID="txtBuscar" /></p>
            <asp:Button Text="Buscar" runat="server" ID="btnBuscar" OnClick="btnBuscar_Click" />
        </div>
        <p>
            <asp:GridView runat="server" ID="gvPedido"></asp:GridView>
        </p>
    </form>
</body>
</html>
