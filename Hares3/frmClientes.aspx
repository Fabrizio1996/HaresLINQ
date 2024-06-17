<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmClientes.aspx.cs" Inherits="Hares3.frmClientes" %>

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
            <p>CodCliente: <asp:TextBox runat="server" ID="txtCodCliente" /></p>
            <p>Nombre: <asp:TextBox runat="server" ID="txtNombre" /></p>
            <p>APaterno: <asp:TextBox runat="server" ID="txtAPaterno" /></p>
            <p>AMaterno: <asp:TextBox runat="server" ID="txtAMaterno" /></p>
            <p>Email: <asp:TextBox runat="server" ID="txtEmail" /></p>
            <p>Telefono: <asp:TextBox runat="server" ID="txtTelefono" /></p>
            <p>Direccion: <asp:TextBox runat="server" ID="txtDireccion" /></p>
            <p>CodUsuario: <asp:TextBox runat="server" ID="txtCodUsuario" /></p>
       </div>
        <p>
            <asp:Button Text="Agregar" runat="server" ID="btnAgregar" OnClick="btnAgregar_Click" />
            <asp:Button Text="Eliminar" runat="server" ID="btnEliminar" OnClick="btnEliminar_Click" />
            <asp:Button Text="Actualizar" runat="server" ID="btnActualizar" OnClick="btnActualizar_Click" />
        </p>
        <div>
            <p>Buscar por CodCliente o por Nombre: <asp:TextBox runat="server" ID="txtBuscar" /></p>
            <asp:Button Text="Buscar" runat="server" ID="btnBuscar" OnClick="btnBuscar_Click" />
        </div>
        <p>
            <asp:GridView runat="server" ID="gvCliente"></asp:GridView>
        </p>
    </form>
</body>
</html>
