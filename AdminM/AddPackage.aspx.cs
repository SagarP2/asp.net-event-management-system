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
    public partial class AddPackage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGridView();
        }

        protected void btnaddpackage_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string PackageName = txtname.Text;
                string PackagePrice = txtPrice.Text;
                string PackageDescription = txtDescription.Text;

                string connectionString = "Data Source=LAPTOP-GSU07MCF\\SQLEXPRESS;Initial Catalog=Event_Management_System;Integrated Security=True";

                string sql = "INSERT INTO tbl_packages (pname, pprice, pdescription) VALUES (@PName, @PPrice, @PDescription)";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        command.Parameters.AddWithValue("@PName", PackageName);
                        command.Parameters.AddWithValue("@PPrice", PackagePrice);
                        command.Parameters.AddWithValue("@PDescription", PackageDescription);

                        connection.Open();
                        command.ExecuteNonQuery();
                    }
                }
                txtname.Text = "";
                txtPrice.Text = "";
                txtDescription.Text = "";

                string script = "alert('Add Package us successfully');";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

            }
        }

        protected void BindGridView()
        {
            string connectionString = "Data Source=LAPTOP-GSU07MCF\\SQLEXPRESS;Initial Catalog=Event_Management_System;Integrated Security=True";
            string sql = "SELECT * FROM tbl_packages";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);

                    GridViewPackage.DataSource = dataTable;
                    GridViewPackage.DataBind();
                }
            }
        }
    }
}
    