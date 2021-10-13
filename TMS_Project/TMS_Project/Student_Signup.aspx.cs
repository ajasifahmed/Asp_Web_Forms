using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TMS_Project
{
    public partial class Student_Signup : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindCountryDDl();
            }

        }

        void Clear()
        {
            StdNameTextBox.Text = "";
            StdFNameTextBox.Text = "";
            StdSNameTextBox.Text = "";
            DropDownList1.ClearSelection();
            DropDownList2.ClearSelection();
            DropDownList3.ClearSelection();
            DropDownList4.ClearSelection();
            StdAgeTextBox.Text="";
            DropDownList5.ClearSelection();
            DropDownList6.ClearSelection();

            //StdCountryTextBox.Text="";
            //StdCityTextBox.Text="";
            StdAddressTextBox.Text="";
                StdClassTextBox.Text="";
                StdSubjectTextBox.Text="";
                StdContactTextBox.Text="";
                StdEmailTextBox.Text="";
                StdPwdTextBox.Text="";
                StdConfirmPwdTextBox.Text="";
        }
        void bindCountryDDl()
        {
            SqlConnection con = new SqlConnection(cs);
            string qurey = "select * from country_tbl";
            SqlDataAdapter sda = new SqlDataAdapter(qurey,con);
            DataTable data = new DataTable();
            sda.Fill(data);
            DropDownList5.DataSource = data;
            DropDownList5.DataTextField = "country";
            DropDownList5.DataValueField = "country_id";
            DropDownList5.DataBind();

            ListItem selectItem = new ListItem("select country", "select country");
            selectItem.Selected = true;
            DropDownList5.Items.Insert(0, selectItem);
        }
        void bindCityDDl(int country_id)
        {
            SqlConnection con = new SqlConnection(cs);
            string qurey = "select * from city_tbl where country_id=@country_id";
            SqlDataAdapter sda = new SqlDataAdapter(qurey, con);
            sda.SelectCommand.Parameters.AddWithValue("@country_id", country_id);
            DataTable data = new DataTable();
            sda.Fill(data);
            DropDownList6.DataSource = data;
            DropDownList6.DataTextField = "city";
            DropDownList6.DataValueField = "city_id";
            DropDownList6.DataBind();

            ListItem selectItem = new ListItem("select city", "select city");
            selectItem.Selected = true;
            DropDownList6.Items.Insert(0, selectItem);
        }

        protected void Signup_btn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string sp = "spSignup_Insert";
            SqlCommand cmd = new SqlCommand(sp, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name", StdNameTextBox.Text);
            cmd.Parameters.AddWithValue("@father_name", StdFNameTextBox.Text);
            cmd.Parameters.AddWithValue("@surename", StdSNameTextBox.Text);
            cmd.Parameters.AddWithValue("@gender",DropDownList1.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@age",Convert.ToInt32(StdAgeTextBox.Text));
            cmd.Parameters.AddWithValue("@country", DropDownList5.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@city", DropDownList6.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@address",StdAddressTextBox.Text);
            cmd.Parameters.AddWithValue("@class",StdClassTextBox.Text);
            cmd.Parameters.AddWithValue("@degree", DropDownList2.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@subject",StdSubjectTextBox.Text);
            cmd.Parameters.AddWithValue("@contact",StdContactTextBox.Text);
            cmd.Parameters.AddWithValue("@tution_type",DropDownList3.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@tutor_type",DropDownList4.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@email",StdEmailTextBox.Text);
            cmd.Parameters.AddWithValue("@password",StdPwdTextBox.Text);
            cmd.Parameters.AddWithValue("@confirm_passowrd",StdConfirmPwdTextBox.Text);

            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {

                Clear();
                //Response.Redirect("admin_index.aspx");
                ScriptManager.RegisterStartupScript(this, GetType(), "PopUp", "Swal.fire({icon: 'success',title: 'Registration Completed ',text: 'Login to continue !'})", true);

            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "PopUp", "Swal.fire({icon: 'error',title: 'Oops...',text: 'Invalid email/password !'})", true);

            }
            con.Close();

        }

        protected void StdEmailTextBox_TextChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string EmaiId = StdEmailTextBox.Text.Trim();

            SqlCommand cmd = new SqlCommand("SELECT email FROM Student_signup WHERE email ='" + EmaiId + "'", con);
            con.Open();
            SqlDataReader idr = cmd.ExecuteReader();
            if (idr.HasRows)
            {
                Label1.Text = "Email address already exists";
                StdEmailTextBox.Focus();
            }
            else
            {
                Label1.Text = "";
            }
            con.Close();
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            //if(CheckBox1.Checked==true)
            //{
            //    StdPwdTextBox.TextMode
            //}
        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
            int country_id = Convert.ToInt32(DropDownList5.SelectedValue);
            bindCityDDl(country_id);
            }
            catch (Exception)
            {
            }
        }
    }
}