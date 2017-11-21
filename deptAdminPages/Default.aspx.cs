using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LoginSignUp;
using System.Data.SqlClient;
using System.Data;

public partial class deptAdminPages_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            LoadGrid();
        }
    }

    private void LoadGrid()
    {
        SqlConnection con = ConnectionString.Connect();
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM FIR",con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        LoadGrid();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        LoadGrid();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int userid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        //TextBox textName = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Complainant"); //row.FindControl("Complainant");
        //TextBox textName = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Complainant");
        //if(string.IsNullOrWhiteSpace(textName.Text))
        //{
        //    textName.Text = "bestbest@gmail.com";
        //}
        string textName = "bestbest@gmail.com";

        SqlConnection con = ConnectionString.Connect();
        con.Open();
        SqlCommand cmd = new SqlCommand("update FIR set Complainant = '"+textName+ "' where firID = '"+userid+"'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.EditIndex = -1;
        LoadGrid();

    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int userid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        SqlConnection con = ConnectionString.Connect();
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from FIR where firID = '" + userid + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        LoadGrid();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        LoadGrid();
    }
}