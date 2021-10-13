using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Cookies
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                if (Request.Cookies["username"]!=null)
                {
                    TextBox1.Text = Request.Cookies["username"].Value.ToString();

                    string e_pwd = Request.Cookies["pwd"].Value.ToString();
                    byte[] b = Convert.FromBase64String(e_pwd);
                    string d_pwd = System.Text.Encoding.ASCII.GetString(b);
                    TextBox2.Text = d_pwd;
                }
                if (Request.Cookies["username"] != null && Request.Cookies["pwd"] != null)
                {
                    CheckBox1.Checked = true;
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {    
            SqlConnection con = new SqlConnection(cs);
            string q = "select * from [Table] where username=@u and pwd=@pwd";
            SqlDataAdapter sda = new SqlDataAdapter(q,con);
            sda.SelectCommand.Parameters.AddWithValue("@u",TextBox1.Text);
            sda.SelectCommand.Parameters.AddWithValue("@pwd", TextBox2.Text);
            DataTable data = new DataTable();
            sda.Fill(data);
            if (data.Rows.Count>0)
            {
                if (CheckBox1.Checked==true)
                {
                    Response.Cookies["username"].Value = TextBox1.Text;
                    byte[] b= System.Text.Encoding.ASCII.GetBytes(TextBox2.Text);
                    string d_pwd = Convert.ToBase64String(b);
                    Response.Cookies["pwd"].Value = d_pwd.ToString();
                    Response.Cookies["pwd"].Expires =   Response.Cookies["username"].Expires = DateTime.Now.AddDays(2);
                }
                else
                {
                    Response.Cookies["pwd"].Expires = Response.Cookies["username"].Expires = DateTime.Now.AddDays(-2);

                }
               
                Session["u"] = TextBox1.Text;
                Response.Redirect("w2.aspx");
            }
            else
            {
                Response.Write("error");
            }
        }
    }
}