using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Net.Mail;


namespace studybuddyv1._3.Controls
{
	public partial class WebUserControl1 : System.Web.UI.UserControl
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void SendButton_Click(object sender, EventArgs e)
		{
			if (Page.IsValid)
			{
				string fileName = Server.MapPath("~/App_Data/ContactForm.txt");
				string mailBody = File.ReadAllText(fileName);

				mailBody = mailBody.Replace("##Name##", Name.Text);
				mailBody = mailBody.Replace("##Email##", EmailAddress.Text);
				mailBody = mailBody.Replace("##Comments##", Comments.Text);

				MailMessage myMessage = new MailMessage();
				myMessage.Subject = "Response from Study Buddy";
				myMessage.Body = mailBody;

				myMessage.From = new MailAddress("rachelc.college@gmail.com", "Rachel Cunningham");
				myMessage.To.Add(new MailAddress("rachelc.college@gmail.com", "Rachel Cunningham"));
				myMessage.ReplyToList.Add(new MailAddress(EmailAddress.Text));

				SmtpClient mySmtpClient = new SmtpClient();
				mySmtpClient.Send(myMessage);

				Message.Visible = true;
				FormTable.Visible = true;



			}
		}
	}
}