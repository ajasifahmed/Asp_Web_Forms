using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
namespace TMS_Project.tutor
{
    public partial class tutor_Login : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void Clear()
        {
            TEmailTextBox.Text = "";
            PasswordTextBox.Text = "";
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from tutor_tbl where email=@email and password=@password";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@email", TEmailTextBox.Text);
            cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "PopUp", "func();",true);
                MailAddress addr = new MailAddress(TEmailTextBox.Text);
                string username = addr.User;
                Session["t_username"] = username;
                Clear();
                Response.AppendHeader("Refresh", "2;url=tutor_index.aspx");
                //Response.Redirect("tutor_index.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "PopUp", "Swal.fire({icon: 'error',title: 'Oops...',text: 'Invalid email/password !'})", true);

            }
            con.Close();

        }
    }
}