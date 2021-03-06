using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TMS_Project.tutor
{
    public partial class view_students : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        void bindRepeater1()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from Student_signup";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            Repeater1.DataSource = data;
            Repeater1.DataBind();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["t_username"] == null)
            {
                Response.Redirect("tutor_Login.aspx");
            }
            if (!IsPostBack)
            {
                bindRepeater1();
            }
        }

        protected void searchBtn_ServerClick(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "sp_search_student";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            sda.SelectCommand.CommandType = CommandType.StoredProcedure;
            sda.SelectCommand.Parameters.AddWithValue("@text", TextBox1.Text);
            if (string.IsNullOrEmpty(TextBox1.Text))
            {
                Label9.Visible = false;
                bindRepeater1();
            }
            else
            {
                DataTable data = new DataTable();
                sda.Fill(data);
                int count = data.Rows.Count;
                //Session["count"] = count.ToString();
                if (data.Rows.Count > 0)
                {
                    Label9.Visible = true;
                    Label9.CssClass = "text-success";
                    Label9.Text = count.ToString() + " Records Found";
                    Repeater1.DataSource = data;
                    Repeater1.DataBind();
                }
                else
                {
                    Label9.Visible = true;
                    Label9.CssClass = "text-danger";
                    Label9.Text = count.ToString() + " Records Found";
                    Repeater1.DataSource = null;
                    Repeater1.DataBind();
                }

            }
        }
    }
}