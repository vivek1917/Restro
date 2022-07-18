using System;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Text;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;

public partial class Pages_booking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        b_date.Attributes["min"] = DateTime.Now.ToString("yyyy-MM-dd");
        if (Session["userEmail"] == null)
        {
            alert_BookingPage.Visible = true;
            Btn_Booking.Enabled = false;
            Btn_Booking.CssClass = "btn btn-primary w-100 py-3";
            Btn_Reset.Enabled = false;
            Btn_Reset.CssClass = "btn btn-secondary w-100 py-3";
        }
    }

    protected void Button_Booking(object sender, EventArgs e)
    {
        //Inserting Data into Db
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = @"Data Source = (LocalDB)\MSSQLLocalDB; 
                                AttachDbFilename = |DataDirectory|\Database.mdf; Integrated Security = True";
        conn.Open();
        String query = "insert into BookingData(tb_name,tb_dat,tb_nop, tb_msg, tb_email)" +
        "values('" + b_name.Text + "','" + b_date.Text + "','" + b_nop.Text + "','" + b_msg.Text + "','" + Session["userEmail"] + "')";
        SqlCommand cmd = new SqlCommand(query, conn);
        int status = cmd.ExecuteNonQuery();
        conn.Close();

        if (status > 0)
        {
            Booking_Confirm.Visible = true;
            Btn_Receipt.Visible = true;
        }
        else
        {
            Booking_Error.Visible = true;
        }
        conn.Close();
    }

    [Obsolete]
    protected void Button_Receipt(object sender, EventArgs e)
    {
        //Generating Booking_Receipt
        Random rnd = new Random();
        int orderNo = rnd.Next(1000, 9999);
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);
        StringBuilder sb = new StringBuilder();

        sb.Append("<table width='100%' cellspacing='0' cellpadding='2'>");
        sb.Append("<tr><td align='center' style='background-color: #18B5F0' colspan = '2'><h2><b>Restoran</b><h2></td></tr>");
        sb.Append("<tr><td colspan = '2'></td></tr>");
        sb.Append("<tr><td><b>Order No: </b>");
        sb.Append(orderNo);
        sb.Append("</td><td align = 'right'><b>Date: </b>");
        sb.Append(DateTime.Now);
        sb.Append(" </td></tr>");
        sb.Append("<tr><td colspan = '2'><b>Customer Name: </b>");
        sb.Append(b_name.Text);
        sb.Append("</td></tr>");
        sb.Append("<tr><td colspan = '2'><b>Date: </b>");
        sb.Append(b_date.Text.Trim());
        sb.Append(" </td></tr>");
        sb.Append("<tr><td colspan = '2'><b>No. of People: </b>");
        sb.Append(b_nop.Text);
        sb.Append(" </td></tr>");
        sb.Append("</table>");
        sb.Append("<br />");

        StringReader sr = new StringReader(sb.ToString());
        Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
        HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        PdfWriter writer = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        pdfDoc.Open();
        htmlparser.Parse(sr);
        pdfDoc.Close();
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=Receipt_" + orderNo + ".pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Write(pdfDoc);
        Response.End();
    }


    protected void Button_Reset(object sender, EventArgs e)
    {
        b_name.Text = "";
        b_date.Text = "";
        b_nop.Text = "1";
        b_msg.Text = "";
        Btn_Receipt.Visible = false;
        Booking_Confirm.Visible = false;
    }
}