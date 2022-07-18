using System;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Pages_signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button_SignUp(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; 
                            AttachDbFilename = |DataDirectory|\Database.mdf; Integrated Security = True");
        conn.Open();
        string query1 = "insert into UserData values('"+u_name.Text+"','"+u_email.Text+"','"+u_pwd.Text+"')";
        SqlCommand cmd1 = new SqlCommand(query1, conn);
        int status = cmd1.ExecuteNonQuery();
        if(status > 0)
        {
            HyperLink hl1, hl2;
            LinkButton btn1;
            hl1 = (HyperLink)Master.FindControl("HL_SignUp");
            hl2 = (HyperLink)Master.FindControl("HL_LogIn");
            btn1 = (LinkButton)Master.FindControl("HL_LogOut");
            hl1.Visible = false;
            hl2.Visible = false;
            btn1.Visible = true;
            Session["userName"] = u_name.Text;
            Session["userEmail"] = u_email.Text.Split();
            Response.Redirect("home.aspx");
        }
        conn.Close();   
    }

}