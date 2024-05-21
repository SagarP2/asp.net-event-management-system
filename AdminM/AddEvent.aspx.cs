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
    public partial class AddEvent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGridView();
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                string eventName = txtname.Text;
                string descriptionValue = txtDescription.Text;

                string connectionString = "Data Source=LAPTOP-GSU07MCF\\SQLEXPRESS;Initial Catalog=Event_Management_System;Integrated Security=True";

                string sql = "INSERT INTO tbl_events (ename, edescription) VALUES (@EName, @EDescription)";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        command.Parameters.AddWithValue("@EName", eventName);
                        command.Parameters.AddWithValue("@EDescription", descriptionValue);

                        connection.Open();
                        command.ExecuteNonQuery();
                    }
                }
                txtname.Text = "";
                txtDescription.Text = "";

                string script = "alert('Add Event us successfully');";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            }
        }

        protected void BindGridView()
        {
            string connectionString = "Data Source=LAPTOP-GSU07MCF\\SQLEXPRESS;Initial Catalog=Event_Management_System;Integrated Security=True";
            string sql = "SELECT * FROM tbl_events";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);

                    GridViewEvents.DataSource = dataTable;
                    GridViewEvents.DataBind();
                }
            }
        }
    }
}