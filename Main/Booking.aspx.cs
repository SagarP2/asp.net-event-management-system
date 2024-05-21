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
    public partial class Booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDropDownList1();
            }
        }
        private void BindDropDownList1()
        {
            string connectionString = "Data Source=LAPTOP-GSU07MCF\\SQLEXPRESS;Initial Catalog=Event_Management_System;Integrated Security=True";

            string query = "SELECT EName FROM tbl_events";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.HasRows)
                    { 
                        DropDownList1.DataSource = reader;
                        DropDownList1.DataTextField = "EName"; 
                        
                        DropDownList1.DataBind();
                    }
                    reader.Close();
                }
            }
        }

        //protected void btnBook_Click(object sender, EventArgs e)
        //{
        //    //// Retrieve values from the form controls
        //string eventName = DropDownList1.SelectedValue;
        //string venueName = DropDownList2.SelectedValue;
        //string packageName = DropDownList3.SelectedValue;
        //string cateringName = cateringname.Text;
        //decimal cateringPrice = Convert.ToDecimal(cateringprice.Text);
        //string decoratorName = decoratorname.Text;
        //decimal decoratorPrice = Convert.ToDecimal(decoratorprice.Text);
        //string photographerName = photographername.Text;
        //decimal photographerPrice = Convert.ToDecimal(photographerprice.Text);
        //string djName = djname.Text;
        //decimal djPrice = Convert.ToDecimal(djprice.Text);
        //string userName = username.SelectedValue;
        //string address = addresss.Text;
        //string phone = phonee.Text;
        //string email = emaill.Text;
        //DateTime eventDate = Convert.ToDateTime(Textdate.Text);
        //int numberOfPeople = Convert.ToInt32(Textpeople.Text);

        //// Insert into database
        //string connectionString = ConfigurationManager.ConnectionStrings["YourConnectionString"].ConnectionString;
        //using (SqlConnection con = new SqlConnection(connectionString))
        //{
        //    string query = @"INSERT INTO Tbl_Booking (C_Id, P_Id, E_Id, V_Id, B_Date, Event_Date, No_Of_People, Event_Price)
        //                    VALUES (@C_Id, @P_Id, @E_Id, @V_Id, @B_Date, @Event_Date, @No_Of_People, @Event_Price, @Event_Name, @Venue_Name, @Package_Name, @Catering_Name, @Catering_Price, @Decorator_Name, @Decorator_Price, @Decorator_Price, @Photographer_Name, @Dj_Name, @Dj_Price, @User_Name, @Address, @Phone, @Email)";

        //    SqlCommand cmd = new SqlCommand(query, con);
        //    cmd.Parameters.AddWithValue("@C_Id", 1); // You need to replace this with the actual C_Id value
        //    cmd.Parameters.AddWithValue("@P_Id", 1); // You need to replace this with the actual P_Id value
        //    cmd.Parameters.AddWithValue("@E_Id", 1); // You need to replace this with the actual E_Id value
        //    cmd.Parameters.AddWithValue("@V_Id", 1); // You need to replace this with the actual V_Id value
        //    cmd.Parameters.AddWithValue("@B_Date", DateTime.Now);
        //    cmd.Parameters.AddWithValue("@Event_Date", eventDate);
        //    cmd.Parameters.AddWithValue("@No_Of_People", numberOfPeople);

        //    cmd.Parameters.AddWithValue("@Event_Name", eventName);
        //    cmd.Parameters.AddWithValue("@Venue_Name", venueName);
        //    cmd.Parameters.AddWithValue("@Package_Name", packageName);
        //    cmd.Parameters.AddWithValue("@Catering_Name", cateringName);
        //    cmd.Parameters.AddWithValue("@Catering_Price", cateringPrice);
        //    cmd.Parameters.AddWithValue("@Decorator_Name", decoratorName);
        //    cmd.Parameters.AddWithValue("@Decorator_Price", decoratorPrice);
        //    cmd.Parameters.AddWithValue("@Photographer_Name", photographerName);
        //    cmd.Parameters.AddWithValue("@Dj_Name", djName);
        //    cmd.Parameters.AddWithValue("@Dj_Price", djPrice);
        //    cmd.Parameters.AddWithValue("@User_Name", userName);
        //    cmd.Parameters.AddWithValue("@Address", address);
        //    cmd.Parameters.AddWithValue("@Phone", phone);
        //    cmd.Parameters.AddWithValue("@Email", email);

        //    // Calculate the total event price based on selected options
        //    decimal eventPrice = cateringPrice + decoratorPrice + photographerPrice + djPrice;
        //    cmd.Parameters.AddWithValue("@Event_Price", eventPrice);

        //    con.Open();
        //    int rowsAffected = cmd.ExecuteNonQuery();
        //    con.Close();

        //    if (rowsAffected > 0)
        //    {
        //        SuccessMessage.Text = "Booking successful!";
        //        // Booking successful
        //        // You can redirect to a confirmation page or show a success message
        //        Response.Write("Event Booked Successfully. Thanks for Choosing Us!.");
        //        Response.Redirect("~/Customer/Customer_Dashboard.aspx");
        //    }
        //    else
        //    {
        //        ErrorMessage.Text = "Booking failed. Please try again.";
        //        // Booking failed
        //        // You can show an error message
        //        Response.Write("An error occurred while Booking the Event. Please try again later.");
        //    }
        //}
        //}
        //private void PopulateEventDropDown()
        //{
        //    string connectionString = ConfigurationManager.ConnectionStrings["Data Source = LAPTOP - GSU07MCF\\SQLEXPRESS; Initial Catalog = Event_Management_System; Integrated Security = True"].ConnectionString;
        //    string query = "SELECT EName FROM tbl_events";
        //    using (SqlConnection connection = new SqlConnection(connectionString))
        //    {
        //        using (SqlCommand command = new SqlCommand(query, connection))
        //        {
        //            connection.Open();
        //            DropDownList1.DataSource = command.ExecuteReader();
        //            DropDownList1.DataTextField = "EName";
        //            DropDownList1.DataBind();
        //        }
        //    }
        //}

        //private void PopulateVenueDropDown()
        //{
        //    try
        //    {
        //        // Populate venue dropdown from database
        //        string connectionString = ConfigurationManager.ConnectionStrings["YourConnectionString"].ConnectionString;
        //        string query = "SELECT V_Id, Venue_Name FROM tbl_Venue";

        //        using (SqlConnection connection = new SqlConnection(connectionString))
        //        {
        //            using (SqlCommand command = new SqlCommand(query, connection))
        //            {
        //                connection.Open();
        //                SqlDataReader reader = command.ExecuteReader();

        //                if (reader.HasRows)
        //                {
        //                    DropDownList2.DataSource = reader;
        //                    DropDownList2.DataTextField = "Venue_Name";
        //                    DropDownList2.DataValueField = "V_Id";
        //                    DropDownList2.DataBind();
        //                }

        //                reader.Close();
        //            }
        //        }
        //        // Add a default option
        //        DropDownList2.Items.Insert(0, new ListItem("-- Select Venue --", ""));
        //    }
        //    catch
        //    {
        //        Response.Write("An error occurred while populating the user dropdown. Please try again later.");
        //    }
        //}

        //private void PopulatePackageDropDown()
        //{
        //    try
        //    {
        //        string connectionString = ConfigurationManager.ConnectionStrings["YourConnectionString"].ConnectionString;
        //        string query = "SELECT P_Id, PackageName FROM Package";
        //        using (SqlConnection connection = new SqlConnection(connectionString))
        //        {
        //            using (SqlCommand command = new SqlCommand(query, connection))
        //            {
        //                connection.Open();
        //                DropDownList3.DataSource = command.ExecuteReader();
        //                DropDownList3.DataTextField = "PackageName";
        //                DropDownList3.DataValueField = "P_Id";
        //                DropDownList3.DataBind();
        //            }
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        // Handle exceptions
        //        Response.Write("An error occurred while populating the user dropdown. Please try again later.");
        //    }
        //}

        //private void PopulateUserDropDown()
        //{
        //    try
        //    {
        //        string connectionString = ConfigurationManager.ConnectionStrings["YourConnectionString"].ConnectionString;
        //        string query = "SELECT UserId, UserName FROM Tbl_User"; // Adjust table and column names as per your database schema
        //        using (SqlConnection connection = new SqlConnection(connectionString))
        //        {
        //            using (SqlCommand command = new SqlCommand(query, connection))
        //            {
        //                connection.Open();
        //                SqlDataReader reader = command.ExecuteReader();
        //                if (reader.HasRows)
        //                {
        //                    while (reader.Read())
        //                    {
        //                        ListItem item = new ListItem();
        //                        item.Text = reader["UserName"].ToString();
        //                        item.Value = reader["UserId"].ToString();
        //                        username.Items.Add(item);
        //                    }
        //                }
        //            }
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        // Handle exceptions
        //        Response.Write("An error occurred while populating the user dropdown. Please try again later.");
        //    }

        //}

        // }

    }
}
