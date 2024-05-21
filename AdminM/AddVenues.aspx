<%@ Page Title="" Language="C#" MasterPageFile="~/AdminM/admin.Master" AutoEventWireup="true" CodeBehind="AddVenues.aspx.cs" Inherits="Event_Managament_Sysyem.AdminM.AddVenues" %>
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
            <td colspan="2" class="tblhead">Add Venues</td>
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
            <td class="lbl">Venues Name : </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtName" runat="server" placeholder="Enter Venues Name" CssClass="txt" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ControlToValidate="txtName" ErrorMessage="Enter Venues"
                    ForeColor=" #ADD8E6"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td class="lbl">Venues Area : </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtArea" runat="server" placeholder="Enter Venues Area" CssClass="txt" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                    ControlToValidate="txtArea" ErrorMessage="Enter Area"
                    ForeColor=" #ADD8E6"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="lbl">Venues Address : </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtAddress" runat="server" placeholder="Enter Venues Address" CssClass="txt" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ControlToValidate="txtAddress" ErrorMessage="Enter Address"
                    ForeColor=" #ADD8E6"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style17"></td>
            <td style="text-align: left" class="style17">
                <asp:Button ID="btnaddvenues" runat="server" CssClass="btn"
                    Style="margin-top: 14px" Text="Add Venues" Width="200px" Height="40px" OnClick="btnaddvenues_Click"/>
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
    <asp:GridView runat="server" ID="GridViewVenues" CssClass="gridview" AutoGenerateColumns="true"></asp:GridView>
</div>
</asp:Content>
