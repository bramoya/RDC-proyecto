using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


namespace RDC_proyecto
{
    public partial class Registro_RDC_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!Page.IsPostBack)
                {
                    Session.Abandon();
                    Session.Clear();
                }
            }
            catch (Exception)
            {
            }
        }
         
        protected void BtIngresar_Click(object sender, EventArgs e)

        {

            string conectar = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            SqlConnection sqlconectar = new SqlConnection(conectar);
            SqlCommand cmd = new SqlCommand("SP_ValidarUsuario", sqlconectar)
            {
                CommandType = CommandType.StoredProcedure
            };

            cmd.Connection.Open();
            cmd.Parameters.Add("@Usuario", SqlDbType.VarChar, 50).Value = TUsuario.Text;
            cmd.Parameters.Add("@Contrase", SqlDbType.VarChar, 50).Value = TPassword.Text;

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("id", dr.GetInt32(0));
                Session.Add("usuario", dr.GetString(1));
                Response.Redirect("index.aspx");
            }
            lblMensaje.Text = "Usuario o Clave incorrectos";
            cmd.Connection.Close();

        }

    }
}