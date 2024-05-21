<%@ Page Title="" Language="C#" MasterPageFile="~/AdminM/admin.Master" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="Event_Managament_Sysyem.AdminM.UserDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .A {
            margin-left: 890px;
            font-size:12px;
            
        }
        .container {
            width: 30%; /* Set your desired width */
            height: 657px; /* Set your desired height */
            margin-left:-170px;
            position: absolute;
            top: 56%;
            left: 45%;
            transform: translate(-50%, -50%);
            padding: 20px;
            border: 3px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

    </style>

    <div class="container">
        <h1 style="text-align: center;margin-top:-5px;">REGISTRATION FORM</h1>

        <div class="form-group">
            <label for="name"><span class="auto-style2">Full Name:</span></label>
            <asp:TextBox ID="Textname" runat="server" ControlToValidate="Taxtname" placeholder="Enter Your Full Name" TextMode="SingleLine" Width="500px" Height="25px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="name" runat="server" ErrorMessage="Please Enter Name" ControlToValidate="Textname" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <label for="date"><span class="auto-style2">Birth Date:</span></label>
            <asp:TextBox ID="Textdate" Name="date" runat="server" ControlToValidate="date" placeholder="Enter Your Birth Date" TextMode="Date" Width="500px" Height="25px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatordate" runat="server" ErrorMessage="Please Enter Date" ControlToValidate="Textdate" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <label for="email"><span class="auto-style2">Email Id:</span></label>
            <asp:TextBox ID="Textemail" Name="email" runat="server" ControlToValidate="Taxtemail" placeholder="Enter Your Email" TextMode="Email" Width="500px" Height="25px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatoremail" runat="server" ErrorMessage="Invalid Email id" ControlToValidate="Textemail" Display="Dynamic" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatoremail" runat="server" ErrorMessage="Please Enter Email" ControlToValidate="Textemail" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <label for="contact"><span class="auto-style2">Contact:</span></label>
            <asp:TextBox ID="Textcontact" Name="contact" runat="server" ControlToValidate="Textcontact" placeholder="Enter Your Contact" TextMode="Number" Width="500px" Height="25px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorcontact" runat="server" ErrorMessage="10 Digit Only" ControlToValidate="Textcontact" Display="Dynamic" ForeColor="#CC0000" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorcontact" runat="server" ErrorMessage="Please Enter Contact" ControlToValidate="Textcontact" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <label for="text"><span class="auto-style2">Address:</span></label>
            <asp:TextBox ID="Textaddress" Name="address" runat="server" ControlToValidate="Taxtaddress" placeholder="Enter Your Address" TextMode="MultiLine" Width="500px" Height="65px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatoraddress" runat="server" ErrorMessage="Please Enter Address" ControlToValidate="Textaddress" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <label for="number"><span class="auto-style2">City Pincode:</span></label>
            <asp:TextBox ID="Textpincode" Name="pincode" runat="server" ControlToValidate="Taxtpincode" placeholder="Enter Your City Pincode" TextMode="Number" Width="500px" Height="25px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorpincode" runat="server" ErrorMessage="6 Digit Only" ControlToValidate="Textpincode" Display="Dynamic" ForeColor="#CC0000" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorpincode" runat="server" ErrorMessage="Please Enter Pincode" ControlToValidate="Textpincode" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label for="password"><span class="auto-style2">Password:</span></label>
            <asp:TextBox ID="Textpassword" Name="password" runat="server" ControlToValidate="Taxtpassword" placeholder="Enter Your Password" TextMode="Password" Width="500px" Height="25px"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidatorpassword" runat="server" ErrorMessage="Password Between 4 to 6" ClientValidationFunction="chkpwdlen" ControlToValidate="Textpassword" Display="Dynamic" ForeColor="Red"></asp:CustomValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorpassword" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="Textpassword" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </div><br />

        <div class="form-group">
            <asp:Button style="text-align: center" ID="btnRegister" runat="server" Text="Registration" Width="507px" height="45px" OnClick="btnRegister_Click" Font-Size="15pt" />
        </div>
    </div>
    <div class="A">
        <asp:GridView runat="server" ID="GridViewuser" CssClass="gridview" AutoGenerateColumns="true"></asp:GridView>
    </div>
</asp:Content>
