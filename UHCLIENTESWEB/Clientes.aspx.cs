using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UHCLIENTESWEB
{
    public partial class Clientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LlenarGrid();
            }
            
        }

        protected void LlenarGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT CEDULA, NOMBRE, TELEFONO, ESTADO FROM clientes"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }

        protected void Ingresar()
        {

        }

        protected void Bagregar_Click(object sender, EventArgs e)
        {
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand(" INSERT INTO CLIENTES( nombre, telefono, fecha_nacimiento ) VALUES('" + tnombre.Text + "', '" + ttelefono.Text + "'," +
                " '" + tfecha.Text + "'  )", conexion);
            comando.ExecuteNonQuery();
            conexion.Close();
            tnombre.Text = "";
            tcedula.Text = "";
            tfecha.Text = "";
            ttelefono.Text = "";
            LlenarGrid();

        }

        protected void Beliminar_Click(object sender, EventArgs e)
        {
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            int cedula;
            int.TryParse(tcedula.Text, out cedula);

           
            SqlCommand comando = new SqlCommand(" DELETE CLIENTES WHERE CEDULA = " + cedula + "", conexion);
            comando.ExecuteNonQuery();
            conexion.Close();
            LlenarGrid();
        }

       
    }
}