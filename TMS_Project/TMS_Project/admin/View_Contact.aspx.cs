using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TMS_Project.admin
{
    public partial class View_Contact : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        void bindGridView()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from contact_tbl";
            SqlDataAdapter sda = new SqlDataAdapter(query,con);
            DataTable data = new DataTable();
            sda.Fill(data);
            GridView1.DataSource = data;
            GridView1.DataBind();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin_username"]==null)
            {
                Response.Redirect("admin_Login.aspx");
            }
            if (!IsPostBack)
            {
            bindGridView();
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            Label itemId = (Label)row.FindControl("Label1");
            string Id = itemId.Text;
            SqlConnection con = new SqlConnection(cs);
            string query = "delete from contact_tbl where id=@id";
            SqlCommand cmd = new SqlCommand(query,con);
            cmd.Parameters.AddWithValue("@id", Id);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a>0)
            {
                //Response.Write("<script>alert('Data has been DELETED')</script>");
                bindGridView();
            }
            else
            {
                Response.Write("<script>alert('NOT DELETED')</script>");
            }
            con.Close();


        }
    }
}