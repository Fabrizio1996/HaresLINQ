using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Hares3
{
    public partial class frmSAdminstrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the user is logged in when the page loads
            if (Session["CodUsuario"] != null && Session["TipoUsuario"] != null && Session["TipoUsuario"].ToString() == "T001")
            {
                lblAdministrador.Text = "Bienvenido Admin: " + Session["CodUsuario"];
            }
            else
            {
                // Redirect to login page if the user is not logged in
                Response.Redirect("Login");
            }

        }

        protected void btnCerrar_Click(object sender, EventArgs e)
        {
            // Remove session variables and redirect to login page
            Session.Clear();
            Response.Redirect("Login");
        }

        protected void btnCrudProductos_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/frmProductos.aspx");
        }

        protected void btnCrudPedidos_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/frmPedidos.aspx");
        }

        protected void btnCrudCliente_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/frmClientes.aspx");
        }
    }
}