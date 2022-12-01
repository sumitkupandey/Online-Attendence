using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.OleDb;

public partial class addstudent : System.Web.UI.Page
{
    private static string conn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    OleDbConnection con = new OleDbConnection(conn);
    protected void Page_Load(object sender, EventArgs e)
    {
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
        
        for (int i = 1; i <= int.Parse(sem); i++)
        {
            dropsem1.Items.Add("" + i);
        }
        con.Close();
    }

protected void Button1_Click(object sender, EventArgs e)
    {
        string course = dropcourse.SelectedItem.ToString();
        string sem = dropsem1.SelectedItem.ToString();
        con.Open();
        OleDbCommand cmd = new OleDbCommand("insert into students(fname,lname,dob,course,semester,email,mobile) values(@fname,@lname,@dob,@semester,@course,@email,@mobile)", con);
        cmd.Parameters.AddWithValue("@fname", txtsfname.Text);
        cmd.Parameters.AddWithValue("@lname", txtslname.Text);
        cmd.Parameters.AddWithValue("@dob", txtsdob.Text);
        cmd.Parameters.AddWithValue("@course", course);
        cmd.Parameters.AddWithValue("@semester", sem);
        cmd.Parameters.AddWithValue("@email", txtsemail.Text);
        cmd.Parameters.AddWithValue("@mobile", txtsmobile.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        cmd.Dispose();
        Response.Write("<script>alert('Record Added...')</script>");
        txtsfname.Text="";
        txtslname.Text ="";
        txtsdob.Text = "";
        txtsemail.Text = "";
        txtsmobile.Text = "";
    }
}