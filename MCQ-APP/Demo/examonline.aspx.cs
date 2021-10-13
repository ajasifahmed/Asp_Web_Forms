using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Demo
{
    public partial class examonline : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection(cs);
                string query = "select * from onlineexam";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable data = new DataTable();
                con.Open();
                sda.Fill(data);
                Repeater1.DataSource = data;
                Repeater1.DataBind();
                con.Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (RepeaterItem item in Repeater1.Items)
            {
                RadioButton radioButton1 = (RadioButton)item.FindControl("RadioButton1");
                Label label = (Label)item.FindControl("Label1");
                label.Visible = true;
                if (radioButton1.Checked == true)
                {
                    if (radioButton1.Text.Equals(label.Text))
                    {
                        label.ForeColor = System.Drawing.Color.Green;   
                    }
                    else
                    {
                        label.ForeColor = System.Drawing.Color.Red;
                    }

                }
            }
            foreach (RepeaterItem item in Repeater1.Items)
            {
                RadioButton radioButton2 = (RadioButton)item.FindControl("RadioButton2");
                Label label = (Label)item.FindControl("Label1");
                label.Visible = true;
                if (radioButton2.Checked == true)
                {
                    if (radioButton2.Text.Equals(label.Text))
                    {
                        label.ForeColor = System.Drawing.Color.Green;
                    }
                    else
                    {
                        label.ForeColor = System.Drawing.Color.Red;
                    }

                }
            }
            foreach (RepeaterItem item in Repeater1.Items)
            {
                RadioButton radioButton3 = (RadioButton)item.FindControl("RadioButton3");
                Label label = (Label)item.FindControl("Label1");
                label.Visible = true;
                if (radioButton3.Checked == true)
                {
                    if (radioButton3.Text.Equals(label.Text))
                    {
                        label.ForeColor = System.Drawing.Color.Green;
                    }
                    else
                    {
                        label.ForeColor = System.Drawing.Color.Red;
                    }

                }
            }
            foreach (RepeaterItem item in Repeater1.Items)
            {
                RadioButton radioButton4 = (RadioButton)item.FindControl("RadioButton4");
                Label label = (Label)item.FindControl("Label1");
                label.Visible = true;
                if (radioButton4.Checked == true)
                {
                    if (radioButton4.Text.Equals(label.Text))
                    {
                        label.ForeColor = System.Drawing.Color.Green;
                    }
                    else
                    {
                        label.ForeColor = System.Drawing.Color.Red;
                    }

                }
            }

        }
    }
}