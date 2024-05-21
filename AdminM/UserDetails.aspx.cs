using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Event_Managament_Sysyem.AdminM
{
    public partial class UserDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGridView();
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                string fullName = Textname.Text;
                string birthDate = Textdate.Text;
                string email = Textemail.Text;
                string contact = Textcontact.Text;
                string address = Textaddress.Text;
                string pincode = Textpincode.Text;
                string password = Textpassword.Text;

                // Hash the password
                //string hashedPassword = HashPassword(password);

                string connectionString = "Data Source=LAPTOP-GSU07MCF\\SQLEXPRESS;Initial Catalog=Event_Management_System;Integrated Security=True";

                string query = "INSERT INTO Tbl_Registration (FullName, BirthDate, Email, Contact, Address, Pincode, Password) " + "VALUES (@FullName, @BirthDate, @Email, @Contact, @Address, @Pincode, @Password)";


                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@FullName", fullName);
                        command.Parameters.AddWithValue("@BirthDate", birthDate);
                        command.Parameters.AddWithValue("@Email", email);
                        command.Parameters.AddWithValue("@Contact", contact);
                        command.Parameters.AddWithValue("@Address", address);
                        command.Parameters.AddWithValue("@Pincode", pincode);
                        command.Parameters.AddWithValue("@Password", password);
                        //command.Parameters.AddWithValue("@Password", hashedPassword);

                        connection.Open();
                        command.ExecuteNonQuery();
                    }
                }

                Textname.Text = "";
                Textdate.Text = "";
                Textemail.Text = "";
                Textcontact.Text = "";
                Textaddress.Text = "";
                Textpincode.Text = "";
                Textpassword.Text = "";

                string script = "alert('Registration us successfully');";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

            }
        }
        protected void BindGridView()
        {
            string connectionString = "Data Source=LAPTOP-GSU07MCF\\SQLEXPRESS;Initial Catalog=Event_Management_System;Integrated Security=True";
            string sql = "SELECT RegistrationID, FullName, BirthDate, Email, Contact, Address, Pincode FROM Tbl_Registration";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);

                    GridViewuser.DataSource = dataTable;
                    GridViewuser.DataBind();
                }
            }
        }
    }
}
