using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hares3
{
    public partial class frmClientes : System.Web.UI.Page
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
            var consulta = from C in dataClasses1.Clientes
                           select C;
            gvCliente.DataSource = consulta;
            gvCliente.DataBind();
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext dataClasses1 = new DataClasses1DataContext(cadena);
            Clientes clientes = new Clientes();
            clientes.CodCliente = txtCodCliente.Text;
            clientes.Nombre = txtNombre.Text;
            clientes.APaterno = txtAPaterno.Text;
            clientes.AMaterno = txtAMaterno.Text;
            clientes.Email = txtEmail.Text;
            clientes.Telefono = txtTelefono.Text;
            clientes.Direccion = txtDireccion.Text;
            clientes.CodUsuario = txtCodUsuario.Text;
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
            var CodEliminar = (from C in dataClasses1.Clientes
                               where C.CodCliente.Contains(txtCodCliente.Text)
                               select C).First();
            dataClasses1.Clientes.DeleteOnSubmit(CodEliminar);
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
            Clientes clientes = dataClasses1.Clientes.Single(p => p.CodCliente == txtCodCliente.Text);
            clientes.Nombre = txtNombre.Text;
            clientes.APaterno = txtAPaterno.Text;
            clientes.AMaterno = txtAMaterno.Text;
            clientes.Email = txtEmail.Text;
            clientes.Telefono = txtTelefono.Text;
            clientes.Direccion = txtDireccion.Text;
            clientes.CodUsuario = txtCodUsuario.Text;
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
            var consulta = from C in dataClasses1.Clientes
                           where C.CodCliente.Contains(txtBuscar.Text) || C.Nombre.Contains(txtBuscar.Text)
                           select C;
            gvCliente.DataSource = consulta;
            gvCliente.DataBind();
        }
    }
}