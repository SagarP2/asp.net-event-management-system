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
    public partial class AddVenues : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGridView();
        }

        protected void btnaddvenues_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                string venuesName = txtName.Text;
                string venuesArea = txtArea.Text;
                string venuesAddress = txtAddress.Text;

                string connectionString = "Data Source=LAPTOP-GSU07MCF\\SQLEXPRESS;Initial Catalog=Event_Management_System;Integrated Security=True";

                string sql = "INSERT INTO tbl_venues (vname, varea, vaddress) VALUES (@VName, @VArea ,@VAddress)";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        command.Parameters.AddWithValue("@VName", venuesName);
                        command.Parameters.AddWithValue("@VArea", venuesArea);
                        command.Parameters.AddWithValue("@VAddress", venuesAddress);

                        connection.Open();
                        command.ExecuteNonQuery();
                    }
                }
                txtName.Text = "";
                txtArea.Text = "";
                txtAddress.Text = "";

                string script = "alert('Add Venues us successfully');";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

            }
        }

                protected void BindGridView()
        {
            string connectionString = "Data Source=LAPTOP-GSU07MCF\\SQLEXPRESS;Initial Catalog=Event_Management_System;Integrated Security=True";
            string sql = "SELECT * FROM tbl_venues";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);

                    GridViewVenues.DataSource = dataTable;
                    GridViewVenues.DataBind();
                }
            }
        } 
    }
}
  