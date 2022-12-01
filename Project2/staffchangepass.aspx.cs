using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.OleDb;

public partial class staffchangepass : System.Web.UI.Page
{
    private static string conn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    OleDbConnection con = new OleDbConnection(conn);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = Session["sname"].ToString();
        con.Open();
        OleDbCommand cmd = new OleDbCommand("select * from stafflogin where username='" + name + "' and pass= '" + txtcurrentpass.Text + "'", con);
        OleDbDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows == true)
        {
            OleDbCommand cmd1 = new OleDbCommand("update stafflogin set pass='"+txtnewpass.Text+"' where username='"+name+"'",con);
            Response.Write("<script>alert('Password Updated...')</script>");
            cmd1.ExecuteNonQuery();
            cmd1.Dispose();
        }
        else
        {
            Response.Write("<script>alert('Wrong Password !!!')</script>");
        }
        cmd.Dispose();
        con.Close();
    }
}