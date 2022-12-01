using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.OleDb;
using System.Data;

public partial class adminlogin : System.Web.UI.Page
{
    private static string conn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    OleDbConnection con = new OleDbConnection(conn);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnalogin_Click(object sender, EventArgs e)
    {
        con.Open();
        OleDbCommand cmd = new OleDbCommand("select * from adminlogin where username='" + txtausername.Text + "' and password= '" + txtapassword.Text + "'", con);
        OleDbDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows == true)
        {
            Response.Write("<script>alert('Login Successfully...')</script>");
            Session["aname"] = txtausername.Text;
            Response.Redirect("adminhome.aspx");
        }
        else
        {
            Response.Write("<script>alert('Invalid Usename Or Password')</script>");
        }
        con.Close();
    }
}