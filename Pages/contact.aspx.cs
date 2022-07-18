using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userEmail"] == null)
        {
            alert_ContactPage.Visible = true;
            Btn_Contact.Enabled = false;
        }
    }

    protected void Button_Contact(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = @"Data Source = (LocalDB)\MSSQLLocalDB;
        AttachDbFilename = |DataDirectory|\Database.mdf; Integrated Security = True";
        conn.Open();
        String query = "insert into QueryData values" +
        "('" + c_name.Text + "','" + c_sub.Text + "','" + c_msg.Text + "','" + Session["userEmail"] + "')";
        SqlCommand cmd = new SqlCommand(query, conn);
        int status = cmd.ExecuteNonQuery();
        conn.Close();
        if (status > 0)
        {
            Query_Confirm.Visible = true;
            c_name.Text = "";
            c_sub.Text = "";
            c_msg.Text = "";
        }
        else
        {
            Query_Error.Visible = true;
        }
        conn.Close();
    }
}