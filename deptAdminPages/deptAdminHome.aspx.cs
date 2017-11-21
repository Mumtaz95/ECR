using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class deptAdminPages_deptAdminHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["deptAdmin"] == null)
        {
            Response.Redirect("~/login.aspx");
        }
        else
        {
            userMail.InnerText = Session["deptAdmin"].ToString().ToLower();
        }
    }
    protected void LogOut_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("../Login.aspx");
    }
}