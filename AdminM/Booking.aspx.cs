using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Event_Managament_Sysyem.AdminM
{
    public partial class Booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Populate dropdown lists with data
                PopulateEventDropDown();
                PopulateVenueDropDown();
                PopulatePackageDropDown();
                PopulateUserDropDown();

                // Load events, venues, and packages
                LoadEvents();
                LoadVenues();
                LoadPackages();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}