using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Event_Managament_Sysyem.Main
{
    public partial class Forget : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnforget_Click(object sender, EventArgs e)
        {
            string email = "";
            string password = "";
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-GSU07MCF\\SQLEXPRESS;Initial Catalog=Event_Management_System;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select username, password from tbl_data where email=@email", con);
            cmd.Parameters.AddWithValue("email", Textemail.Text);
            con.Open();
            using (SqlDataReader sdr = cmd.ExecuteReader())
            {

                if (sdr.Read())
                {
                    email = sdr["email"].ToString();
                    password = sdr["password"].ToString();

                }

            }
            con.Close();

            if (!string.IsNullOrEmpty(password))
            {
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("21bmiit076@gmail.com");
                msg.To.Add(Textemail.Text);
                msg.Subject = " Recover your Password";
                msg.Body = ("Your Email is:" + email + "<br/><br/>" + "Your Password is:" + password);
                msg.IsBodyHtml = true;

                SmtpClient smt = new SmtpClient();
                smt.Host = "smtp.gmail.com";
                System.Net.NetworkCredential ntwd = new NetworkCredential();
                ntwd.UserName = "21bmiit076@gmail.com"; //Your Email ID  
                ntwd.Password = "sagar2003"; // Your Password  
                smt.UseDefaultCredentials = true;
                smt.Credentials = ntwd;
                smt.Port = 587;
                smt.EnableSsl = true;
                smt.Send(msg);
               
            }
            else
            {
                //lbmsg = "email and Password Sent Successfully";
            }
        }

    }
}