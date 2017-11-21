using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using LoginSignUp;

public partial class mainAdminPages_FeedBacks : System.Web.UI.Page
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
            loadGrid();
        }
    }
    private void loadGrid()
    {
        SqlConnection con = ConnectionString.Connect();
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Feedback", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int userid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        SqlConnection con = ConnectionString.Connect();
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from Feedback where feedBackID = '" + userid + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        loadGrid();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        loadGrid();
    }
    protected void LogOut_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("../Login.aspx");
    }
}