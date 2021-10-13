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
    public partial class Tutor_Signup : System.Web.UI.Page
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
            TNameTextBox.Text = "";
            TSNameTextBox.Text = "";
            TAgeTextBox.Text = "";
            TAddressTextBox.Text = "";
            TDgree.Text = "";
            TContactTextBox.Text = "";
            TEmailTextBox.Text = "";
            TPwdTextBox.Text = "";
            TConfirmPwdTextBox.Text = "";
            ExpDdl.ClearSelection();
            QualDdl.ClearSelection();
            CityDdl.ClearSelection();
            CountryDdl.ClearSelection();
            MartialDdl.ClearSelection();
            GenderDdl.ClearSelection();
        }
        void bindCountryDDl()
        {
            SqlConnection con = new SqlConnection(cs);
            string qurey = "select * from country_tbl";
            SqlDataAdapter sda = new SqlDataAdapter(qurey, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            CountryDdl.DataSource = data;
            CountryDdl.DataTextField = "country";
            CountryDdl.DataValueField = "country_id";
            CountryDdl.DataBind();

            ListItem selectItem = new ListItem("select country", "select country");
            selectItem.Selected = true;
            CountryDdl.Items.Insert(0, selectItem);
        }
        void bindCityDDl(int country_id)
        {
            SqlConnection con = new SqlConnection(cs);
            string qurey = "select * from city_tbl where country_id=@country_id";
            SqlDataAdapter sda = new SqlDataAdapter(qurey, con);
            sda.SelectCommand.Parameters.AddWithValue("@country_id", country_id);
            DataTable data = new DataTable();
            sda.Fill(data);
            CityDdl.DataSource = data;
            CityDdl.DataTextField = "city";
            CityDdl.DataValueField = "city_id";
            CityDdl.DataBind();

            ListItem selectItem = new ListItem("select city", "select city");
            selectItem.Selected = true;
            CityDdl.Items.Insert(0, selectItem);
        }


        protected void CountryDdl_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int country_id = Convert.ToInt32(CountryDdl.SelectedValue);
                bindCityDDl(country_id);
            }
            catch (Exception)
            {
            }
        }

        protected void StdEmailTextBox_TextChanged(object sender, EventArgs e)
        {

        }


        protected void Signup_btn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string sp = "spTutorSignup_Insert";
            SqlCommand cmd = new SqlCommand(sp, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name", TNameTextBox.Text);
            cmd.Parameters.AddWithValue("@surename", TSNameTextBox.Text);
            cmd.Parameters.AddWithValue("@gender", GenderDdl.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@age", Convert.ToInt32(TAgeTextBox.Text));
            cmd.Parameters.AddWithValue("@marital_status", MartialDdl.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@country", CountryDdl.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@city", CityDdl.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@qualification", QualDdl.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@degree", TDgree.Text);
            cmd.Parameters.AddWithValue("@address", TAddressTextBox.Text);
            cmd.Parameters.AddWithValue("@experience", ExpDdl.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@contact", TContactTextBox.Text);
            cmd.Parameters.AddWithValue("@email", TEmailTextBox.Text);
            cmd.Parameters.AddWithValue("@password", TPwdTextBox.Text);
            cmd.Parameters.AddWithValue("@confirm_passowrd", TConfirmPwdTextBox.Text);

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

        protected void TEmailTextBox_TextChanged1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string EmaiId = TEmailTextBox.Text.Trim();

            SqlCommand cmd = new SqlCommand("SELECT email FROM tutor_tbl WHERE email ='" + EmaiId + "'", con);
            con.Open();
            SqlDataReader idr = cmd.ExecuteReader();
            if (idr.HasRows)
            {
                Label1.Text = "Email address already exists";
                TEmailTextBox.Focus();
            }
            else
            {
                Label1.Text = "";
            }
            con.Close();
        }
    }
}