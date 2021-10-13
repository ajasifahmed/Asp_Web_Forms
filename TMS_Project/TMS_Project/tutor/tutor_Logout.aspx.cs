using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TMS_Project.tutor
{
    public partial class tutor_Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["t_username"] != null)
            {
                Session.Abandon();
                Response.Redirect("tutor_Login.aspx");
            }
        }
    }
}