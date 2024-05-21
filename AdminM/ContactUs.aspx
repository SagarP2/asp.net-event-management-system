<%@ Page Title="" Language="C#" MasterPageFile="~/AdminM/admin.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Event_Managament_Sysyem.AdminM.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <asp:Label ID="Label3" runat="server" Text="Contact Us Member List" Style="font-weight: bold; font-size:30px;  margin-left:750px"></asp:Label>
    </div><br />

    <div class="A" style="width:1200px; margin-left:350px;">
        <asp:GridView runat="server" ID="GridViewcontactus" CssClass="gridview" AutoGenerateColumns="true"></asp:GridView>
    </div>

</asp:Content>
