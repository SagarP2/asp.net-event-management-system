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
    public partial class AddCatering : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGridView();
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                string name = txtname.Text;
                string price = txtprice.Text;
               
                string connectionString = "Data Source=LAPTOP-GSU07MCF\\SQLEXPRESS;Initial Catalog=Event_Management_System;Integrated Security=True"; // Connection string from web.config
                string query = "INSERT INTO tbl_Catering (name, price) VALUES (@Name, @Price)";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Name", name);
                        command.Parameters.AddWithValue("@Price", price);
                      
                        connection.Open();
                        command.ExecuteNonQuery();
                    }
                }

                txtname.Text = "";
                txtprice.Text = "";
              
                string script = "alert('Add Catering us successfully');";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            }
        }
        private void BindGridView()
        {
            string connectionString = "Data Source=LAPTOP-GSU07MCF\\SQLEXPRESS;Initial Catalog=Event_Management_System;Integrated Security=True";
            string sql = "SELECT * FROM tbl_Catering";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);

                    GridViewcatering.DataSource = dataTable;
                    GridViewcatering.DataBind();
                }
            }
        }
    }
}