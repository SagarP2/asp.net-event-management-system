<%@ Page Title="" Language="C#" MasterPageFile="~/Main/Main.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="Event_Managament_Sysyem.Main.Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- header section starts  
    <header class="header">

        <a href="~/Customer.Customer_DashBoard.aspx" class="logo">
            <img src="image/Mlogo.PNG" alt="">
        </a>

        <div id="header" style="align: center; background-color: transparent; color: white; padding: 10px;">
            <h1>Event Management System</h1>
        </div>
    </header>-->
    <style>
        body {
            background-color: aliceblue;
        }

        .booking-form {
            width: 1150px;
            height: 655px;
        }

        .second {
            margin-left: 860px;
            padding: 20px;
        }
    </style>

    <div class="booking-form" style="margin-left: 260px; margin-top: 100px;">
        <asp:Label ID="Label4" runat="server" Text="Booking Event" Style="font-size: 32px;"></asp:Label><br /><br />
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Event" Style="font-size: 15px;"></asp:Label><br />
            <asp:DropDownList ID="DropDownList1" runat="server" Style="width: 500px; height: 30px; border: 1px solid;">
                <asp:ListItem Text="-- Select Events --" Value="" Selected="True"></asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Venues" Style="font-size: 15px;"></asp:Label><br />
            <asp:DropDownList ID="DropDownList2" runat="server" Style="width: 500px; height: 30px; border: 1px solid;" AutoPostBack="True">
                <asp:ListItem Text="-- Select Venues --" Value="" Selected="True"></asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="Package" Style="font-size: 15px;"></asp:Label><br />
            <asp:DropDownList ID="DropDownList3" runat="server" Style="width: 500px; height: 30px; border: 1px solid;" AutoPostBack="True">
                <asp:ListItem Text="-- Select Package --" Value="" Selected="True"></asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="form-group">
            <asp:Label ID="Label11" runat="server" Text="Catering Name" Style="font-size: 15px;"></asp:Label><br />
            <asp:TextBox ID="cateringname" runat="server" CssClass="form-control" placeholder="Enter Name" Style="height: 25px; color: black; width: 500px; border: 1px solid;"></asp:TextBox>
        </div><br />

        <div class="form-group">
            <asp:Label ID="Label12" runat="server" Text="Catering Price" Style="font-size: 15px;"></asp:Label><br />
            <asp:TextBox ID="cateringprice" runat="server" CssClass="form-control" placeholder="Enter Price" Style="height: 25px; color: black; width: 500px; border: 1px solid;"></asp:TextBox>
        </div><br />

        <div class="form-group">
            <asp:Label ID="Label13" runat="server" Text="Decorator Name" Style="font-size: 15px;"></asp:Label><br />
            <asp:TextBox ID="decoratorname" runat="server" CssClass="form-control" placeholder="Enter Name" Style="height: 25px; color: black; width: 500px; border: 1px solid;"></asp:TextBox>
        </div><br />

        <div class="form-group">
            <asp:Label ID="Label14" runat="server" Text="Decorator Price" Style="font-size: 15px;"></asp:Label><br />
            <asp:TextBox ID="decoratorprice" runat="server" CssClass="form-control" placeholder="Enter Price" Style="height: 25px; color: black; width: 500px; border: 1px solid;"></asp:TextBox>
        </div><br />

        <div class="form-group">
            <asp:Label ID="Label15" runat="server" Text="Photographer Name" Style="font-size: 15px;"></asp:Label><br />
            <asp:TextBox ID="photographername" runat="server" CssClass="form-control" placeholder="Enter Name" Style="height: 25px; color: black; width: 500px; border: 1px solid;"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label ID="Label16" runat="server" Text="Photographer Price" Style="font-size: 15px;"></asp:Label><br />
            <asp:TextBox ID="photographerprice" runat="server" CssClass="form-control" placeholder="Enter Price" Style="height: 25px; color: black; width: 500px; border: 1px solid;"></asp:TextBox>
        </div><br /><br />

    </div>

    <div class="second" style=" width: 400px; margin-top: -600px;">
        <div class="form-group">
            <asp:Label ID="Label17" runat="server" Text="Dj Name" Style="font-size: 15px;"></asp:Label><br />
            <asp:TextBox ID="djname" runat="server" CssClass="form-control" placeholder="Enter Name" Style="height: 25px; color: black; width: 500px; border: 1px solid;"></asp:TextBox>
        </div><br />

        <div class="form-group">
            <asp:Label ID="Label18" runat="server" Text="Dj Price" Style="font-size: 15px;"></asp:Label><br />
            <asp:TextBox ID="djprice" runat="server" CssClass="form-control" placeholder="Enter Price" Style="height: 25px; color: black; width: 500px; border: 1px solid;"></asp:TextBox>
        </div><br />

        <div class="form-group">
            <asp:Label ID="Label5" runat="server" Text="Name" Style="font-size: 15px;"></asp:Label><br />
            <asp:DropDownList ID="username" runat="server" Style="width: 500px; height: 30px; border: 1px solid;">
                <asp:ListItem Text="-- Select User --" Value="" Selected="True"></asp:ListItem>
            </asp:DropDownList>
        </div><br />

        <div class="form-group">
            <asp:Label ID="Label6" runat="server" Text="Address" Style="font-size: 15px;"></asp:Label><br />
            <asp:TextBox ID="addresss" runat="server" CssClass="form-control" placeholder="Enter You Address" Style="height: 25px; color: black; width: 500px; border: 1px solid;"></asp:TextBox>
        </div><br />

        <div class="form-group">
            <asp:Label ID="Label7" runat="server" Text="Phone" Style="font-size: 15px;"></asp:Label><br />
            <asp:TextBox ID="phonee" runat="server" CssClass="form-control" placeholder="Enter You Phone" Style="height: 25px; color: black; width: 500px; border: 1px solid;"></asp:TextBox>
        </div><br />

        <div class="form-group">
            <asp:Label ID="Label8" runat="server" Text="Email Id" Style="font-size: 15px;"></asp:Label><br />
            <asp:TextBox ID="emaill" runat="server" CssClass="form-control" placeholder="Enter You Email Id" Style="height: 25px; color: black; width: 500px; border: 1px solid;"></asp:TextBox>
        </div><br />

        <div class="form-group">
            <asp:Label ID="Label9" runat="server" Text="Event Date" Style="font-size: 15px;"></asp:Label><br />
            <asp:TextBox ID="Textdate" Name="date" runat="server" ControlToValidate="date" placeholder="Enter Your Birth Date" TextMode="Date" Width="500px" Height="30px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatordate" runat="server" ErrorMessage="Please Enter Date" ControlToValidate="Textdate" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <asp:Label ID="Label10" runat="server" Text="No Of People" Style="font-size: 15px;"></asp:Label><br />
            <asp:TextBox ID="Textpeople" Name="people" runat="server" ControlToValidate="Textcontact" placeholder="Enter no of people" TextMode="Number" Width="500px" Height="30px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorcontact" runat="server" ErrorMessage="3 Digit Only" ControlToValidate="Textpeople" Display="Dynamic" ForeColor="#CC0000" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
        </div><br />
    </div>

    <div style="margin-left: 550px; margin-top: -15px"><br />
        <asp:Button ID="Button1" runat="server" Text="Book Event" Style="width: 600px; background-color: yellow; color: black; height: 43px" Font-Size="20px" /><br />
        <asp:Label ID="SuccessMessage" runat="server" ForeColor="Green" Visible="False" Font-Size="Larger"></asp:Label><br />
        <asp:Label ID="ErrorMessage" runat="server" ForeColor="Red" Visible="False" Font-Size="Larger"></asp:Label></div>

</asp:Content>
