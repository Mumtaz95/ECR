using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mainAdminPages_MainAdminHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["mainAdmin"]==null)
        {
            Response.Redirect("~/login.aspx");
        }
        else
        {
            userMail.InnerText = Session["mainAdmin"].ToString().ToLower();
        }

    }
    protected void LogOut_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("../Login.aspx");
    }
}