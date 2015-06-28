using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

public partial class contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void save_Click(object sender, EventArgs e)
    {
        string msgBody = "Name = " + textname.Text + "</br> Email = " + txtemail.Text + "</br>" + txtmessage.Text;
        try
        {

            SmtpClient client = new SmtpClient("smtp.gmail.com");
            client.Port = 587;
            client.EnableSsl = false;
            client.Timeout = 100000;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;
            client.Credentials = new NetworkCredential("jani.parixit@gmail.com", "immortal007");
            MailMessage msg = new MailMessage();
            msg.To.Add("jani.parixit@gmail.com");
            msg.From = new MailAddress("jani.parixit@gmail.com");
            msg.Subject = txtsubject.Text;
            msg.Body = msgBody;
            client.Send(msg);


            /*MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("mail.gmail.com");

            mail.From = new MailAddress("akhiltours@gmail.com");
            mail.To.Add("akhilnatrajtravels@gmail.com");
            mail.Subject = txtsubject.Text;
            mail.Body = msgBody;
            SmtpServer.Port = 465;
            SmtpServer.Credentials = new System.Net.NetworkCredential("akhiltours@gmail.com", "book7890");
            SmtpServer.EnableSsl = true;
            SmtpServer.Send(mail);*/
            lblStatus.Text="Thanks for contacting us. We'll get back to you soon!";
            lblStatus.Visible = true;
        }
        catch (Exception ex)
        {
            lblStatus.Visible = true;
            lblStatus.Text="There might be an error, Please try after some time.";
        }
        finally {
            
        }
    }
}