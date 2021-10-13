using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cookies
{
    public partial class w2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["u"]==null)
            {
                Response.Redirect("WebForm1.aspx");
            }
            else
            {
                Response.Write(Session["u"].ToString());
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            if (Session["u"]!=null)
            {
                Session.Abandon();
                Response.Redirect("WebForm1.aspx");
            }

        }
    }
}