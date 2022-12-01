using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Configuration;

public partial class addcourse : System.Web.UI.Page
{
    private static string conn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    OleDbConnection con = new OleDbConnection(conn);
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        con.Open();
        OleDbCommand cmd = new OleDbCommand("insert into course(course,sem) values(@course,@sem)", con);
        cmd.Parameters.AddWithValue("@course",txtcoursename.Text);
        cmd.Parameters.AddWithValue("@sem", txtcoursesem.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        cmd.Dispose();
        Response.Write("<script>alert('Course Added...')</script>");
        txtcoursename.Text = "";
        txtcoursesem.Text = "";
    }
}