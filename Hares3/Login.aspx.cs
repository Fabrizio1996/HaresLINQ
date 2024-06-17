using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hares3
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["BDComercioTtecnologicoConnectionString"].ConnectionString;

            using (DataClasses1DataContext db = new DataClasses1DataContext(connectionString))
            {
                string nombreUsuario = TextBox1.Text;
                string contrasena = TextBox2.Text;

                var usuario = db.Usuarios.SingleOrDefault(u => u.CodUsuario == nombreUsuario && u.Contrasena == contrasena);

                if (usuario != null)
                {
                    Session["CodUsuario"] = usuario.CodUsuario;
                    Session["TipoUsuario"] = usuario.CodTipoUsuario;

                    // Verifica si el usuario es un administrador
                    if (usuario.CodTipoUsuario == "T001")
                    {
                        Response.Redirect("frmSAdminstrador.aspx"); // Redirige a la página de administrador
                    }
                    else
                    {
                        Response.Redirect("frmHome.aspx"); // Redirige a la página de inicio para clientes
                    }
                }
                else
                {
                    // Autenticación fallida
                    Response.Write("<script>alert('Nombre de usuario o contraseña incorrectos.');</script>");
                }
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}