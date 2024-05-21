using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Event_Managament_Sysyem.Main
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtemail.Focus();
            }
        }

        protected void btnchage_Click(object sender, EventArgs e)
        {
            string newpassword = txtnewpwd.Text;
            string email = txtemail.Text;

            // Check if the old password matches
            string connectionString = "Data Source=LAPTOP-GSU07MCF\\SQLEXPRESS;Initial Catalog=Event_Management_System;Integrated Security=True";
            string query = "SELECT Email FROM Tbl_Registration WHERE Email = @Email";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Email", email);

                    // Update the password in the database
                    string query1 = "UPDATE Tbl_Registration SET Password = @Password WHERE Email = @Email";

                    using (SqlCommand command1 = new SqlCommand(query1, connection))
                    {
                        command1.Parameters.AddWithValue("@Password", newpassword);
                        command1.Parameters.AddWithValue("@Email", email);

                        int rowsAffected = command1.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            //lblmsg.Text = "Password changed successfully.";
                            //Response.Redirect("~/Main/Login.aspx");               
                            // Show pop-up message
                            string script = "alert('Password changed successfully.'); window.location.href = '" + ResolveUrl("~/Main/Login.aspx") + "';";
                            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

                        }
                        else
                        {
                            //ClientScript.RegisterStartupScript(this.GetType(), "Error", "<script>alert('Please try again.');</script>"); // lblmsg.Text = "Error changing password.";

                            string errorScript = "alert('Error changing password. Please try again.');";
                            ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", errorScript, true);

                        }
                    }
                }
            }
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Customer/Profile.aspx");
        }
    }
}