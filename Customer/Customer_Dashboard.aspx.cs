using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Event_Managament_Sysyem.Customer
{
    public partial class Customer_Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindDataList();
        }

        private void BindDataList()
        {
            string connectionString = "Data Source=LAPTOP-GSU07MCF\\SQLEXPRESS;Initial Catalog=Event_Management_System;Integrated Security=True";
            string eventsql = "SELECT EName, EDescription FROM tbl_events";
            string venuessql = "SELECT VName, VArea, VAddress FROM tbl_venues";
            string packagesql = "SELECT PName, PPrice, PDescription FROM tbl_Packages";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand eventcommand = new SqlCommand(eventsql, connection))
                {
                    using (SqlDataAdapter adapter = new SqlDataAdapter(eventcommand))
                    {
                        DataTable dataTable = new DataTable();
                        adapter.Fill(dataTable);

                        DataListevent.DataSource = dataTable;
                        DataListevent.DataBind();
                    }
                }

                using (SqlCommand venuescommand = new SqlCommand(venuessql, connection))
                {
                    using (SqlDataAdapter adapter = new SqlDataAdapter(venuescommand))
                    {
                        DataTable dataTable = new DataTable();
                        adapter.Fill(dataTable);

                        DataListvenues.DataSource = dataTable;
                        DataListvenues.DataBind();
                    }
                }
                using (SqlCommand packagecommand = new SqlCommand(packagesql, connection))
                {
                    using (SqlDataAdapter adapter = new SqlDataAdapter(packagecommand))
                    {
                        DataTable dataTable = new DataTable();
                        adapter.Fill(dataTable);

                        DataListpackage.DataSource = dataTable;
                        DataListpackage.DataBind();
                    }
                }
            }
        }
    }
}