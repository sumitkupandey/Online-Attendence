using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Configuration;

public partial class addstaff : System.Web.UI.Page
{
    private static string conn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    OleDbConnection con = new OleDbConnection(conn);
    protected void Page_Load(object sender, EventArgs e)
    {
         
        
    }
   

    public static string CreateRandomPassword(int PasswordLength)
    {
        string _allowedChars = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ@#$%";
        Random randNum = new Random();
        char[] chars = new char[PasswordLength];
        int allowedCharCount = _allowedChars.Length;
        for (int i = 0; i < PasswordLength; i++)
        {
            chars[i] = _allowedChars[(int)((_allowedChars.Length) * randNum.NextDouble())];
        }
        return new string(chars);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string pwd = CreateRandomPassword(6);
        tpass.Text = "Password-" +pwd;
        con.Open();
        string query = "insert into stafflogin(username,fname,lname,dob,email,mobile,pass)values(@username,@fname,@lname,@dob,@email,@mobile,@pass)";
        OleDbCommand cmd = new OleDbCommand(query, con);
        cmd.Parameters.AddWithValue("@username",txtusername.Text);
        cmd.Parameters.AddWithValue("@fname", txtfname.Text);
        cmd.Parameters.AddWithValue("@lname", txtlname.Text);
        cmd.Parameters.AddWithValue("@dob", txtdob.Text);
        cmd.Parameters.AddWithValue("@email", txtemail.Text);
        cmd.Parameters.AddWithValue("@mobile", txtmobile.Text);
        cmd.Parameters.AddWithValue("@pass", pwd);
        cmd.ExecuteNonQuery();
        con.Close();
        cmd.Dispose();
        Response.Write("<script>alert('Staff Saved...')</script>");
    }
}