using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Event_Managament_Sysyem.Main
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindDataList();
        }

        private void BindDataList()
        {
            string connectionString = "Data Source=LAPTOP-GSU07MCF\\SQLEXPRESS;Initial Catalog=Event_Management_System;Integrated Security=True";
            string sql = "SELECT EName, EDescription FROM tbl_events";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                    {
                        DataTable dataTable = new DataTable();
                        adapter.Fill(dataTable);

                        DataListevent.DataSource = dataTable;
                        DataListevent.DataBind();
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid) 
            {

                string name = nameTextBox.Text;
                string email = emailTextBox.Text;
                string number = numberTextBox.Text;
                string subject = subjectTextBox.Text;
                string message = messageTextBox.Text;

                string connectionString = "Data Source=LAPTOP-GSU07MCF\\SQLEXPRESS;Initial Catalog=Event_Management_System;Integrated Security=True"; // Connection string from web.config
                string query = "INSERT INTO tbl_contactUss (Name, Email, Number, Subject, Message) VALUES (@Name, @Email, @Number, @Subject, @Message)";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Name", name);
                        command.Parameters.AddWithValue("@Email", email);
                        command.Parameters.AddWithValue("@Number", number);
                        command.Parameters.AddWithValue("@Subject", subject);
                        command.Parameters.AddWithValue("@Message", message);

                        connection.Open();
                        command.ExecuteNonQuery();
                    }
                }

                nameTextBox.Text = "";
                emailTextBox.Text = "";
                numberTextBox.Text = "";
                subjectTextBox.Text = "";
                messageTextBox.Text = "";

                string script = "alert('Contact us successfully');";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            }
        }
    }
}