using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

namespace TMS_Project.admin
{
    public partial class admin_Login : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void Clear()
        {
            UserEmailTextBox.Text = "";
            PasswordTextBox.Text = "";
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from admin_login where email=@email and password=@password";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@email", UserEmailTextBox.Text);
            cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows==true)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "PopUp", "func();", true);
                MailAddress addr = new MailAddress(UserEmailTextBox.Text);
                string username = addr.User;
                Session["admin_username"] = username;
                Clear();
                Response.AppendHeader("Refresh", "2;url=admin_index.aspx");

                //Response.Redirect("admin_index.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "PopUp", "Swal.fire({icon: 'error',title: 'Oops...',text: 'Invalid email/password !'})", true);

            }
            con.Close();
        }
    }
}