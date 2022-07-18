using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Pages_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button_Login(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = |DataDirectory|\Database.mdf; Integrated Security = True";
        conn.Open();
        String ulc_mail = ul_email.Text;
        String ulc_pwd  = ul_pwd.Text;
        String query = "select name,email,pwd from UserData where email = '"+ulc_mail+"'";
        SqlCommand cmd = new SqlCommand(query, conn);
        cmd.CommandType = CommandType.Text;
        SqlDataReader sdr = cmd.ExecuteReader();
        sdr.Read();
        if (sdr["email"].Equals(ulc_mail) && sdr["pwd"].Equals(ulc_pwd))
        {
            HyperLink hl1, hl2;
            LinkButton btn1;
            hl1 = (HyperLink)Master.FindControl("HL_SignUp");
            hl2 = (HyperLink)Master.FindControl("HL_LogIn");
            btn1 = (LinkButton)Master.FindControl("HL_LogOut");
            hl1.Visible = false;
            hl2.Visible = false;
            btn1.Visible = true;
            if (Session["userEmail"] ==null)
            {
                Session["userName"] = sdr["name"];
                Session["userEmail"] = ulc_mail;
            }
            Response.Redirect("home.aspx");
        }
        else
        {
            Cred_Error.Visible = true;
        }
        conn.Close();
    }
}