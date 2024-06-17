using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hares3
{
    public partial class frmPedidos : System.Web.UI.Page
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
            var consulta = from P in dataClasses1.Pedidos
                           select P;
            gvPedido.DataSource = consulta;
            gvPedido.DataBind();
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext dataClasses1 = new DataClasses1DataContext(cadena);
            Pedidos pedidos = new Pedidos();
            pedidos.CodPedido = txtCodPedido.Text;
            pedidos.CodCliente = txtCodCliente.Text;
            // Usando DateTime.Parse
            pedidos.FechaPedido = DateTime.Parse(txtFechaPedido.Text);

            // Usando DateTime.TryParse
            DateTime fechaPedido;
            if (DateTime.TryParse(txtFechaPedido.Text, out fechaPedido))
            {
                pedidos.FechaPedido = fechaPedido;
            }
            else
            {
                // Manejar el error de formato de fecha
                Response.Write("Formato de fecha incorrecto.");
            }
            pedidos.Total = Convert.ToDecimal(txtTotal.Text);
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
            var CodEliminar = (from P in dataClasses1.Pedidos
                               where P.CodPedido.Contains(txtCodPedido.Text)
                               select P).First();
            dataClasses1.Pedidos.DeleteOnSubmit(CodEliminar);
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
            Pedidos pedidos = dataClasses1.Pedidos.Single(p => p.CodPedido == txtCodPedido.Text);
            // Usando DateTime.Parse
            pedidos.FechaPedido = DateTime.Parse(txtFechaPedido.Text);

            // Usando DateTime.TryParse
            DateTime fechaPedido;
            if (DateTime.TryParse(txtFechaPedido.Text, out fechaPedido))
            {
                pedidos.FechaPedido = fechaPedido;
            }
            else
            {
                // Manejar el error de formato de fecha
                Response.Write("Formato de fecha incorrecto.");
            }
            pedidos.Total = Convert.ToDecimal(txtTotal.Text);
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
            var consulta = from P in dataClasses1.Pedidos
                           where P.CodPedido.Contains(txtBuscar.Text) || P.CodCliente.Contains(txtBuscar.Text)
                           select P;
            gvPedido.DataSource = consulta;
            gvPedido.DataBind();
        }
    }
}