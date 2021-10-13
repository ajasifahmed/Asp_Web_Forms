using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TMS_Project.student
{
    public partial class student_index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["std_username"]==null)
            {
                Response.Redirect("student_Login.aspx");

            }
        }
    }
}