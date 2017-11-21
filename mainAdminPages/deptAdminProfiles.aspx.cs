using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using LoginSignUp;

public partial class mainAdminPages_deptAdminProfiles : System.Web.UI.Page
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
        if (!IsPostBack)
        {
            loadGrid();
        }
    }
    private void loadGrid()
    {
        SqlConnection con = ConnectionString.Connect();
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM deptAdmin", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        loadGrid();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        loadGrid();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int userid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        TextBox Status = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");
        if (string.IsNullOrWhiteSpace(Status.Text))
        {
            string str = Status.Text;
        }
        SqlConnection con = ConnectionString.Connect();
        con.Open();
        SqlCommand cmd = new SqlCommand("update deptAdmin set post = '" + Status.Text + "' where deptAdminID = '" + userid + "'", con);
        cmd.ExecuteNonQuery();
        GridView1.EditIndex = -1;
        loadGrid();
        con.Close();

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        loadGrid();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int userid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        SqlConnection con = ConnectionString.Connect();
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from deptAdmin where deptAdminID = '" + userid + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        loadGrid();
    }
    protected void LogOut_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("../Login.aspx");
    }
}