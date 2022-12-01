using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Configuration;

public partial class attendence : System.Web.UI.Page
{
    private static string conn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    OleDbConnection con = new OleDbConnection(conn);
    protected void Page_Load(object sender, EventArgs e)
    {
        dropsem.Visible = false;
        dropsem.Enabled = false;
        btnsubmit.Visible = false;
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

    
    protected void Button1_Click(object sender, EventArgs e)
    {
        btnsubmit.Visible = true;
        GridView1.Visible = true;
        string course = dropcourse.SelectedItem.ToString();
        string sem = dropsem1.SelectedItem.ToString();
        con.Open();
        OleDbDataAdapter adp = new OleDbDataAdapter("select * from students where course='"+course+"' and semester='"+sem+"'", con);
        DataSet ds = new DataSet();
        adp.Fill(ds, "students");
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
        adp.Dispose();
        ds.Dispose();
    }

    protected void dropsem1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string course = dropcourse.SelectedItem.ToString();
        string sem = dropsem1.SelectedItem.ToString();
        con.Open();
        OleDbDataAdapter adp1 = new OleDbDataAdapter("select subject from subject where course='"+ course +"' and semester='" + sem + "'", con);
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

    protected void Button2_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            String fname,lname,att;
            fname = row.Cells[0].Text;
            lname = row.Cells[1].Text;
            RadioButton rbtn1 = (row.Cells[2].FindControl("radiop") as RadioButton);
            RadioButton rbtn2 = (row.Cells[2].FindControl("radioa") as RadioButton);
            RadioButton rbtn3 = (row.Cells[2].FindControl("radiol") as RadioButton);
            if (rbtn1.Checked)
            {
                att = "P";
            }
            else if(rbtn3.Checked)
            {
                att = "L";
            }
            else
            {
                att = "A";
            }
            
            String dateofclass1 = DateTime.Now.ToShortDateString();
            String sDate = DateTime.Now.ToString();
            DateTime datevalue = (Convert.ToDateTime(sDate.ToString()));
            String dd = datevalue.Day.ToString();
            String mm = datevalue.Month.ToString();
            String yy = datevalue.Year.ToString();
            String course1 = dropcourse.SelectedItem.Text;
            String sem1 = dropsem1.SelectedItem.Text;
            String sub1 = dropsubject.SelectedItem.Text;
            saveatt(fname, lname, course1, sem1, sub1, dateofclass1, dd, mm, yy, att);
            Response.Write("<script>alert('Attendence Fill Successfully')</script>");
            GridView1.Visible = false;
        }
    }
    private void saveatt(String fname, String lname, String course1, String sem1, String sub1, String dateofclass1, String dd, String mm, String yy, String att)
    {
        con.Open();
        OleDbCommand cmd = new OleDbCommand("insert into attendencesheet (fname,lname,course,sem,subject,classdate,dd,mm,yy,att) values('" + fname+"','"+lname+"','"+course1+"','"+sem1+"','"+sub1+"','"+dateofclass1+"','"+dd+"','"+mm+"','"+yy+"','"+att+"')", con);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }

    }