using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Configuration;

public partial class course : System.Web.UI.Page
{
    private static string conn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    OleDbConnection con = new OleDbConnection(conn);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        OleDbDataAdapter adp = new OleDbDataAdapter("select course from course where course <>'---SELECT---' order by course", con);
        DataSet ds = new DataSet();
        adp.Fill(ds, "course");
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
        adp.Dispose();
        ds.Dispose();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("addcourse.aspx");
    }
}