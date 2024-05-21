<%@ Page Title="" Language="C#" MasterPageFile="~/AdminM/admin.Master" AutoEventWireup="true" CodeBehind="AddEvent.aspx.cs" Inherits="Event_Managament_Sysyem.AdminM.AddEvent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style type="text/css">
        .style12 {
            width: 145px;
        }

        .style14 {
            width: 132px;
        }

        .style17 {
            height: 21px;
        }
        .A{
            margin-left:500px;
        }
    </style>

    <table class="style1" style="height: 256px; width: 50%; border: 2px solid; margin-left: 500px; margin-top: 50px">
        <tr>
            <td colspan="2" class="tblhead">Add Event</td>
        </tr>
        <tr>
            <td class="style12">&nbsp;</td>
            <td class="style14">&nbsp;</td>
        </tr>
        <tr>
            <td class="style12">&nbsp;</td>
            <td class="style14">&nbsp;</td>
        </tr>
        <tr>
            <td class="lbl">Event Name : </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtname" runat="server" placeholder="Enter Event Name" CssClass="txt" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ControlToValidate="txtname" ErrorMessage="Enter Event"
                    ForeColor=" #ADD8E6"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="lbl">Event Description : </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtDescription" runat="server" placeholder="Enter Event Description" CssClass="txt" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ControlToValidate="txtDescription" ErrorMessage="Enter Description"
                    ForeColor=" #ADD8E6"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style17"></td>
            <td style="text-align: left" class="style17">
                <asp:Button ID="btnadd" runat="server" CssClass="btn"
                    Style="margin-top: 14px" Text="Add Event" Width="200px"
                    Height="40px" OnClick="btnadd_Click" />
            </td>

        </tr>
       
        <tr>
            <td class="style17">&nbsp;</td>
            <td style="text-align: left" class="style17">&nbsp;</td>
        </tr>
        <tr>
            <td class="style12">&nbsp;</td>
            <td class="style14"></td>
        </tr>

    </table>
    
    <div class="A">
    <asp:GridView runat="server" ID="GridViewEvents" CssClass="gridview" AutoGenerateColumns="true"></asp:GridView>
</div>
</asp:Content>
