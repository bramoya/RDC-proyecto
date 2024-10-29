using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Net.NetworkInformation;

namespace RDC_proyecto
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
			try
            {
                string Usuario = Session["usuario"].ToString();
                string Id = Session["id"].ToString();
                lblUsaurio.Text = Usuario + " (" + Id + ")";
			}
			catch (Exception)
			{
                Response.Redirect("registro_RDC_Form.aspx");
			}
        }
        protected void BtCerrar_Click (object sender, EventArgs e)
        {
            Session.Remove("usuariologueado");
            Response.Redirect("registro_RDC_Form.aspx");
        }
        protected void BGuardar_Click(object sender, EventArgs e)
        {

            string cadena = "insert into proveedor([Nombre_proveedor],[Tienda],[Telefono],[Correo]) " +
        "values ('" + Tproveedor.Text + "','" + Ttienda.Text + "','" + TTelefono.Text + "','" + TCorreo.Text + "')"; 
            string conectar = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            SqlConnection sqlconectar = new SqlConnection(conectar);
            SqlCommand comando = new SqlCommand(cadena, sqlconectar);

            comando.Connection.Open();
            comando.ExecuteNonQuery();


            lblMensaje.Text = "La persona: "  + Tproveedor.Text + "se agrego exitosamente ";

            Tproveedor.Text = "";
            Ttienda.Text = "";
            TTelefono.Text = "";
            TCorreo.Text = "";

            comando.Connection.Close();
        }
    }
}