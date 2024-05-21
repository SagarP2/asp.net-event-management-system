using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Event_Managament_Sysyem.Customer
{
    public partial class Profile : System.Web.UI.Page
    {
        // In Customer_Profile.aspx.cs
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve user's data based on their email stored in session
                string TextEmail = Session["RegistrationID"].ToString();
                PopulateUserProfile(TextEmail);
            }
        }

        private void PopulateUserProfile(string TextEmail)
        {
            string connectionString = "Data Source=LAPTOP-GSU07MCF\\SQLEXPRESS;Initial Catalog=Event_Management_System;Integrated Security=True";
            string query = "SELECT FullName, BirthDate, Email, Contact, Address, Pincode FROM Tbl_Registration WHERE Email = @Email";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Email", TextEmail);
                        SqlDataReader reader = command.ExecuteReader();

                        if (reader.Read())
                        {
                            // Populate user profile fields
                            lblFullName.Text = reader["FullName"].ToString();
                            lblBirthDate.Text = reader["BirthDate"].ToString();
                            lblEmail.Text = reader["Email"].ToString();
                            lblContact.Text = reader["Contact"].ToString();
                            lblAddress.Text = reader["Address"].ToString();
                            lblPincode.Text = reader["Pincode"].ToString();
                        }
                        else
                        {
                            // User not found, handle accordingly
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle exceptions
            }
        }

        protected void Btnchangepassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Main/ChangePassword.aspx");
        }

        protected void Btnedit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Customer/Update.aspx");
        }

        protected void Btnlogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Main/Home.aspx");
        }

    }
}