<%@ Page Title="" Language="C#" MasterPageFile="~/Main/Main.Master" AutoEventWireup="true" CodeFile="Forget.aspx.cs" Inherits="Event_Managament_Sysyem.Main.Forget" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <style>
       .container {
    width: 31%; /* Set your desired width */
    height: 250px; /* Set your desired height */
    margin: auto;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    padding: 18px;
    border: 3px solid #ccc;
    border-radius: 5px;
    background-color: #f9f9f9;
}
    </style>
    <!-- header section starts  -->
    <header class="header">

        <a href="#" class="logo">
            <img src="image/Mlogo.PNG" alt="">
        </a>

        <div id="header" style="align:center; background-color:transparent; color:white; padding:10px;">
  <h1>Event Management </h1>
</div>

    </header>
     <div class="container">
          <h1 style="text-align: center">FORGET PASSWORD</h1><br>

          <div class="form-group">
                <label for="email"><span class="auto-style2">Email Id:</span></label>
                <asp:TextBox ID="Textemail" Name="email" runat="server" ControlToValidate="Taxtemail" placeholder="Enter Your Email" TextMode="Email" Width="500px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatoremail" runat="server" ErrorMessage="Invalid Email id" ControlToValidate="Textemail" Display="Dynamic" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
         </div><br />

         <div class="from-group" style="text-align: center;">
             <asp:Label ID="lbmsg" runat="server"></asp:Label>
         </div>

          <div class="form-group" style="text-align: center;">
                <asp:Button ID="btnforget" runat="server" Text="Send" Width="270px" OnClick="btnforget_Click" />
         </div>         

          <div class="form-group" style="text-align: center;">
                <p style="font-size: 12px;">Back to! <a href="Login.aspx"  style="color: blue;">Login.</a></p>
          </div>
        </div>
</asp:Content>
