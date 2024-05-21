<%@ Page Title="" Language="C#" MasterPageFile="~/AdminM/admin.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="Event_Managament_Sysyem.AdminM.Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .booking-form {
            background-color: white;
            width: 1150px;
            height: 655px;
            padding: 20px;
            padding-left: 60px;
        }

        .second {
            margin-left: 1000px;
            padding: 20px;
        }
    </style>
    <div class="booking-form" style="background-color: white; margin-left: 350px;">
        <asp:Label ID="Label4" runat="server" Text="Booking Event" Style="font-size: 32px;"></asp:Label><br />
        <br />
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Event" Style="font-size: 15px;"></asp:Label><br />
            <asp:DropDownList ID="DropDownList1" runat="server" Style="width: 507px; height: 30px;">
                <asp:ListItem Text="-- Select Event --" Value="" Selected="True"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <br />

        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Venues" Style="font-size: 15px;"></asp:Label><br />
            <asp:DropDownList ID="DropDownList2" runat="server" Style="width: 507px; height: 30px;">
                <asp:ListItem Text="-- Select Venues --" Value="" Selected="True"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <br />

        <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="Package" Style="font-size: 15px;"></asp:Label><br />
            <asp:DropDownList ID="DropDownList3" runat="server" Style="width: 507px; height: 30px;">
                <asp:ListItem Text="-- Select Package --" Value="" Selected="True"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <br />

        <div class="form-group">
            <asp:Label ID="Label11" runat="server" Text="Catering Name" Style="font-size: 15px;"></asp:Label><br />
            <asp:TextBox runat="server" CssClass="form-control" placeholder="Enter Name" Style="height: 25px; color: black; width: 500px;"></asp:TextBox>
        </div>
        <br />

        <div class="form-group">
            <asp:Label ID="Label12" runat="server" Text="Catering Price" Style="font-size: 15px;"></asp:Label><br />
            <asp:TextBox runat="server" CssClass="form-control" placeholder="Enter Price" Style="height: 25px; color: black; width: 500px;" Font-Size="Smaller"></asp:TextBox>
        </div>
        <br />

        <div class="form-group">
            <asp:Label ID="Label13" runat="server" Text="Decorator Name" Style="font-size: 15px;"></asp:Label><br />
            <asp:TextBox runat="server" CssClass="form-control" placeholder="Enter Name" Style="height: 25px; color: black; width: 500px;"></asp:TextBox>
        </div>
        <br />

        <div class="form-group">
            <asp:Label ID="Label14" runat="server" Text="Decorator Price" Style="font-size: 15px;"></asp:Label><br />
            <asp:TextBox runat="server" CssClass="form-control" placeholder="Enter Price" Style="height: 25px; color: black; width: 500px;"></asp:TextBox>
        </div>
        <br />


        <div class="form-group">
            <asp:Label ID="Label15" runat="server" Text="Photographer Name" Style="font-size: 15px;"></asp:Label><br />
            <asp:TextBox runat="server" CssClass="form-control" placeholder="Enter Name" Style="height: 25px; color: black; width: 500px;"></asp:TextBox>
        </div>
        <br />


    </div>


    <div class="second" style="background-color: white; width: 400px; margin-right: 400px; margin-top: -640px;">
        <div class="form-group">
            <asp:Label ID="Label16" runat="server" Text="Photographer Price" Style="font-size: 15px;"></asp:Label><br />
            <asp:TextBox runat="server" CssClass="form-control" placeholder="Enter Price" Style="height: 25px; color: black; width: 500px;"></asp:TextBox>
        </div>
        <br />
        <div class="form-group">
            <asp:Label ID="Label17" runat="server" Text="Dj Name" Style="font-size: 15px;"></asp:Label><br />
            <asp:TextBox runat="server" CssClass="form-control" placeholder="Enter Name" Style="height: 25px; color: black; width: 500px;"></asp:TextBox>
        </div>
        <br />

        <div class="form-group">
            <asp:Label ID="Label18" runat="server" Text="Dj Price" Style="font-size: 15px;"></asp:Label><br />
            <asp:TextBox runat="server" CssClass="form-control" placeholder="Enter Price" Style="height: 25px; color: black; width: 500px;"></asp:TextBox>
        </div>
        <br />

        <div class="form-group">
            <asp:Label ID="Label5" runat="server" Text="Name" Style="font-size: 15px;"></asp:Label><br />
            <asp:DropDownList ID="DropDownList4" runat="server" Style="width: 507px; height: 30px;">
                <asp:ListItem Text="-- Select User --" Value="" Selected="True"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <br />

        <div class="form-group">
            <asp:Label ID="Label6" runat="server" Text="Address" Style="font-size: 15px;"></asp:Label><br />
            <asp:TextBox runat="server" CssClass="form-control" placeholder="Enter You Address" Style="height: 25px; color: black; width: 500px;"></asp:TextBox>
        </div>
        <br />

        <div class="form-group">
            <asp:Label ID="Label7" runat="server" Text="Phone" Style="font-size: 15px;"></asp:Label><br />
            <asp:TextBox runat="server" CssClass="form-control" placeholder="Enter You Phone" Style="height: 25px; color: black; width: 500px;"></asp:TextBox>
        </div>
        <br />

        <div class="form-group">
            <asp:Label ID="Label8" runat="server" Text="Email Id" Style="font-size: 15px;"></asp:Label><br />
            <asp:TextBox runat="server" CssClass="form-control" placeholder="Enter You Email Id" Style="height: 25px; color: black; width: 500px;"></asp:TextBox>
        </div>
        <br />

        <div class="form-group">
            <asp:Label ID="Label9" runat="server" Text="Event Date" Style="font-size: 15px;"></asp:Label><br />
            <asp:TextBox ID="Textdate" Name="date" runat="server" ControlToValidate="date" placeholder="Enter Your Birth Date" TextMode="Date" Width="200px" Height="30px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatordate" runat="server" ErrorMessage="Please Enter Date" ControlToValidate="Textdate" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group" style="margin-left: 300px; margin-top: -55px">
            <asp:Label ID="Label10" runat="server" Text="No Of People" Style="font-size: 15px;"></asp:Label><br />
            <asp:TextBox ID="Textpeople" Name="people" runat="server" ControlToValidate="Textcontact" placeholder="Enter no of people" TextMode="Number" Width="200px" Height="30px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorcontact" runat="server" ErrorMessage="3 Digit Only" ControlToValidate="Textpeople" Display="Dynamic" ForeColor="#CC0000" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
        </div>
        <br />
    </div>
    
     <div style="margin-left:660px;margin-top:-10px">
        <asp:Button ID="Button1" runat="server" Text="Book Event" style="width:600px;height:30px" Font-Size="Larger"  />
    </div>

</asp:Content>
