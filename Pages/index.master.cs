using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_index : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userEmail"] != null)
        {
            HL_SignUp.Visible = false;
            HL_LogIn.Visible = false;
            HL_LogOut.Visible = true;

        }
    }

    public HyperLink HyperLink1
    {
        get { return this.HL_SignUp; }
    }

    public HyperLink HyperLink2
    {
        get { return this.HL_LogIn; }
    }

    public LinkButton LinkButton
    {
        get { return this.HL_LogOut; }
    }

    protected void logOut(object sender, EventArgs e)
    {
        Session.Remove("userEmail");
        HL_SignUp.Visible = true;
        HL_LogIn.Visible = true;
        HL_LogOut.Visible = false;
        Response.Redirect("login.aspx");
    }

    
}
