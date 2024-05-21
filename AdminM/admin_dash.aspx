<%@ Page Title="" Language="C#" MasterPageFile="~/AdminM/admin.Master" AutoEventWireup="true" CodeBehind="admin_dash.aspx.cs" Inherits="Event_Managament_Sysyem.AdminM.admin_dash" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .container {
            width: 70%; /* Set your desired width */
            height: 657px; /* Set your desired height */
            margin-left: 210px;
            position: absolute;
            top: 56%;
            left: 46.5%;
            transform: translate(-50%, -50%);
            padding: 20px;
            border: 3px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
    </style>
    <div class="container">
        <asp:Calendar runat="server" Height="660px" Width="1210px"></asp:Calendar>
    </div>
</asp:Content>