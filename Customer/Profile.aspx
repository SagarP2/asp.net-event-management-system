<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Event_Managament_Sysyem.Customer.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .customer-profile {
            width: 100%;
            max-width: 600px;
            margin: 0 auto;
            font-family: Arial, sans-serif;
            padding: 2em;
            border: 1px solid #ccc;
            box-shadow: 0px 2px 5px rgba(0,0,0,0.1);
        }

            .customer-profile h1 {
                font-size: 2em;
                color: #333;
                margin-top: 0;
            }

            .customer-profile p {
                font-size: 1.7em;
                margin-bottom: 1em;
            }

            .customer-profile .profile-section {
                margin-top: 1em;
            }

                .customer-profile .profile-section h2 {
                    font-size: 10em; /* Changed font size to 4em */
                    color: #808080;
                    margin-top: 0;
                    margin-bottom: 0.5em;
                }

                .customer-profile .profile-section p {
                    margin-top: 0;
                }

            .customer-profile .profile-image {
                text-align: center; /* Changed text-align to center */
                margin-bottom: 2em;
            }

                .customer-profile .profile-image img {
                    width: 100%;
                    max-width: 200px;
                    height: auto;
                    border-radius: 50%;
                }

            .customer-profile .profile-details {
                text-align: left;
                margin-bottom: 1em;
            }
    </style>
    <!-- header section starts  -->
    <header class="header">

        <a href="#" class="logo">
            <img src="image/Mlogo.PNG" alt="">
        </a>

        <div id="header" style="align:center; background-color:transparent; color:white; padding:10px;">
  <h1>Event Management System</h1>
</div>

    </header>
    <div class="customer-profile">
        <div class="profile-image">
             <a href="Customer_Dashboard.aspx">
            <img src="image/profile.png" style="width: 50px; height: 50px;"></a>
  
            <h1>Customer Profile</h1>
        </div>
        <div class="profile-details">
            <p>
                Full Name:
                    <asp:Label ID="lblFullName" runat="server"></asp:Label>
            </p>
            <p>
                Birth Date:
                    <asp:Label ID="lblBirthDate" runat="server"></asp:Label>
            </p>
            <p>
                Email:
                    <asp:Label ID="lblEmail" runat="server"></asp:Label>
            </p>
            <p>
                Contact:
                    <asp:Label ID="lblContact" runat="server"></asp:Label>
            </p>
            <p>
                Address:
                    <asp:Label ID="lblAddress" runat="server"></asp:Label>
            </p>
            <p>
                Pincode:
                    <asp:Label ID="lblPincode" runat="server"></asp:Label>
            </p>
            <br />
            
            <asp:Button ID="Btnedit" runat="server" Text="Edit" Width="300px" OnClick="Btnedit_Click"/><br /><br />
            <asp:Button ID="Btnchangepassword" runat="server" Text="Change Password" Width="300px" OnClick="Btnchangepassword_Click"/><br /><br />
            <asp:Button ID="Btnlogout" runat="server" Text="Logout" Width="300px" OnClick="Btnlogout_Click"/>  

        </div>
    </div>
</asp:Content>
