<%@ Page Title="" Language="C#" MasterPageFile="~/Main/Main.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Event_Managament_Sysyem.Main.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
       .container {
    width: 31%; /* Set your desired width */
    height: 360px; /* Set your desired height */
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
  <h1>Event Management</h1>
</div>

    </header>
     <div class="container"/>
          <h1 style="text-align: center">CHANGE PASSWORD</h1><br>

        <div class="form-group">
              <label>Email Id :</label>
            <asp:TextBox ID="txtemail" Name="email" runat="server" ControlToValidate="txtemail" placeholder="Enter Your Email" TextMode="Email" Width="500px"></asp:TextBox>
             
          </div>
        
          <%-- <div class="form-group">
               <label>Old Password :</label>
               <asp:TextBox ID="txtoldpwd" Name="old" runat="server" ControlToValidate="txtoldpwd" placeholder="Enter Your Old Password" TextMode="password" Width="500px"></asp:TextBox>
               
          </div>--%>

          <div class="form-group">
               <label>New Password :</label>
              <asp:TextBox ID="txtnewpwd" Name="new" runat="server" ControlToValidate="txtnewpwd" placeholder="Enter Your new Password" TextMode="password" Width="500px"></asp:TextBox>
       
          </div>
    <div>
         <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
    </div>
        
        <div class="form-group" style="text-align: center;">
            <asp:Button style="text-align:center" ID="btnchage" runat="server" Text="Change"  Width="150px" OnClick="btnchage_Click" />
            <asp:Button style="text-align:center" ID="btncancel" runat="server" Text="Cancel"  Width="150px" OnClick="btncancel_Click" />
           
          </div>

          

</asp:Content>
