using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TMS_Project.admin
{
    public partial class admin_Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin_username"]!=null)
            {
                Session.Abandon();
                Response.Redirect("admin_Login.aspx");
            }
        }
    }
}