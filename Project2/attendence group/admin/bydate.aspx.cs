using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Configuration;

public partial class attendence_group_admin_bysubject : System.Web.UI.Page
{
    private static string conn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    OleDbConnection con = new OleDbConnection(conn);
    protected void Page_Load(object sender, EventArgs e)
    {
        //Calendar1.Visible = false;
        dropsem.Visible = false;
        dropsem.Enabled = false;
        if (!IsPostBack)
        {
            con.Open();
            OleDbDataAdapter adp = new OleDbDataAdapter("select course from course", con);
            DataSet ds = new DataSet();
            adp.Fill(ds, "course");
            dropcourse.DataSource = ds;
            dropcourse.DataTextField = "course";
            dropcourse.DataValueField = "course";
            dropcourse.DataBind();
            adp.Dispose();
            ds.Dispose();
            con.Close();
        }
    }

    protected void dropcourse_SelectedIndexChanged(object sender, EventArgs e)
    {
        string crs = dropcourse.SelectedItem.ToString();
        con.Open();
        OleDbDataAdapter adp1 = new OleDbDataAdapter("select sem from course where course='" + crs + "'", con);
        DataSet ds1 = new DataSet();
        adp1.Fill(ds1, "course");
        dropsem.DataSource = ds1;
        dropsem.DataTextField = "sem";
        dropsem.DataValueField = "sem";
        dropsem.DataBind();
        adp1.Dispose();
        ds1.Dispose();

        string sem = dropsem.SelectedItem.ToString();
        dropsem1.Items.Clear();
        dropsem1.Items.Add("---SELECT---");
        for (int i = 1; i <= int.Parse(sem); i++)
        {
            dropsem1.Items.Add("" + i);
        }
        con.Close();
    }

    protected void dropsem1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string course = dropcourse.SelectedItem.ToString();
        string sem = dropsem1.SelectedItem.ToString();
        con.Open();
        OleDbDataAdapter adp1 = new OleDbDataAdapter("select subject from subject where course='" + course + "' and semester='" + sem + "'", con);
        DataSet ds1 = new DataSet();
        adp1.Fill(ds1, "subject");
        dropsubject.DataSource = ds1;
        dropsubject.DataTextField = "subject";
        dropsubject.DataValueField = "subject";
        dropsubject.DataBind();
        adp1.Dispose();
        ds1.Dispose();
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        string course = dropcourse.SelectedItem.ToString();
        string sem = dropsem1.SelectedItem.ToString();
        string sub = dropsubject.SelectedItem.ToString();
        con.Open();
        OleDbDataAdapter adp = new OleDbDataAdapter("select * from attendencesheet where course='" + course + "' and sem='" + sem + "' and subject='" + sub + "' and classdate='" + txtdate.Text + "'", con);
        DataSet ds = new DataSet();
        adp.Fill(ds, "attendencesheet");
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
        adp.Dispose();
        ds.Dispose();

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtdate.Text = Calendar1.SelectedDate.ToShortDateString();
    }
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        Calendar1.Visible = true;
    }

}