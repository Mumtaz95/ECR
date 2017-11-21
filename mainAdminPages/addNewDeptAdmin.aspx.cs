using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using LoginSignUp;

public partial class mainAdminPages_addNewDeptAdmin : System.Web.UI.Page
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
    protected void Submit_Click(object sender, EventArgs e)
    {
        if (password.Text != reTypePassword.Text)
        {
            Response.Write("<script>alert('Passwords do not match');</script>");
        }
        else
        {
        SqlConnection con = ConnectionString.Connect();
            con.Open();
            SqlCommand cmd = new SqlCommand("RegDeptAdmin", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@firstName", deptAdminFname.Text);
            cmd.Parameters.AddWithValue("@lastName", deptAdminLname.Text);
            cmd.Parameters.AddWithValue("@city", deptAdminCity.Text);
            cmd.Parameters.AddWithValue("@policeStation", deptAdminPoliceStation.Text);
            cmd.Parameters.AddWithValue("@post", deptAdminPost.Text);
            cmd.Parameters.AddWithValue("@email", deptAdminEmail.Text);
            cmd.Parameters.AddWithValue("@password", password.Text);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Admin Added Succesfully');</script>");        
        }
    }
}