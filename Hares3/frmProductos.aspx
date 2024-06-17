<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmProductos.aspx.cs" Inherits="Hares3.frmProductos" %>

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
            <p>CodProducto: <asp:TextBox runat="server" ID="txtCodProducto" /></p>
            <p>Nombre: <asp:TextBox runat="server" ID="txtNombre" /></p>
            <p>Descripcion: <asp:TextBox runat="server" ID="txtDescripcion" /></p>
            <p>Precio: <asp:TextBox runat="server" ID="txtPrecio" /></p>
            <p>CodCategoria: <asp:TextBox runat="server" ID="txtCodCategoria" /></p>
            <p>CodProveedor: <asp:TextBox runat="server" ID="txtCodProveedor" /></p>
       </div>
        <p>
            <asp:Button Text="Agregar" runat="server" ID="btnAgregar" OnClick="btnAgregar_Click" />
            <asp:Button Text="Eliminar" runat="server" ID="btnEliminar" OnClick="btnEliminar_Click" />
            <asp:Button Text="Actualizar" runat="server" ID="btnActualizar" OnClick="btnActualizar_Click" />
        </p>
        <div>
            <p>Buscar por CodProducto o Nombre: <asp:TextBox runat="server" ID="txtBuscar" /></p>
            <asp:Button Text="Buscar" runat="server" ID="btnBuscar" OnClick="btnBuscar_Click" />
        </div>
        <p>
            <asp:GridView runat="server" ID="gvProducto"></asp:GridView>
        </p>
    </form>
</body>
</html>
