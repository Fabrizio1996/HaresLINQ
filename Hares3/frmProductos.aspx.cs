using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hares3
{
    public partial class frmProductos : System.Web.UI.Page
    {
        // Declarar una variable objeto para utilizar el mapeado OR

        private static string cadena = "Server=localhost;Database=BDComercioTtecnologico;Integrated Security=true";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                Listar();
        }

        private void Listar()
        {
            DataClasses1DataContext dataClasses1 = new DataClasses1DataContext(cadena);
            var consulta = from P in dataClasses1.Productos 
                           select P;
            gvProducto.DataSource = consulta;
            gvProducto.DataBind();
        }
        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext dataClasses1 = new DataClasses1DataContext(cadena);
            Productos productos = new Productos();
            productos.CodProducto = txtCodProducto.Text;
            productos.Nombre = txtNombre.Text;
            productos.Descripcion = txtDescripcion.Text;
            productos.Precio = Convert.ToDecimal(txtPrecio.Text);
            productos.CodCategoria = txtCodCategoria.Text;
            productos.CodProveedor = txtCodProveedor.Text;
            try
            {
                dataClasses1.SubmitChanges();
                Listar();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext dataClasses1 = new DataClasses1DataContext(cadena);
            var CodEliminar = (from P in dataClasses1.Productos
                               where P.CodProducto.Contains(txtCodProducto.Text)
                               select P).First();
            dataClasses1.Productos.DeleteOnSubmit(CodEliminar);
            try
            {
                dataClasses1.SubmitChanges();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext dataClasses1 = new DataClasses1DataContext(cadena);
            Productos productos = dataClasses1.Productos.Single(p => p.CodProducto == txtCodProducto.Text);
            productos.Nombre = txtNombre.Text;
            productos.Descripcion = txtDescripcion.Text;
            productos.Precio = Convert.ToDecimal(txtPrecio.Text);
            try
            {
                dataClasses1.SubmitChanges();
                Listar();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext dataClasses1 = new DataClasses1DataContext(cadena);
            var consulta = from P in dataClasses1.Productos
                           where P.CodProducto.Contains(txtBuscar.Text) || P.Nombre.Contains(txtBuscar.Text)
                           select P;
            gvProducto.DataSource = consulta;
            gvProducto.DataBind();
        }
    }
}