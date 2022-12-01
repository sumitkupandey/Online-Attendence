<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="adminchangepass.aspx.cs" Inherits="adminchangepass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
    .auto-style8 {
        width: 423px;
    }
    .contentbox {
            width: 100%;
            background-image:url(file/admin1.jpg);
            background-repeat: no-repeat;
            background-size: 1200px 430px;
            height: 100%;
        }
    .auto-style10 {
        width: 183px;
    }
    .auto-style11 {
            width: 253px;
            text-align: left;
        }
        .auto-style12 {
            font-size: medium;
        }
        .auto-style13 {
            width: 169px;
            height: 32px;
            font-size: medium;
        }
        .auto-style15 {
            height: 100%;
            
            text-decoration: underline;
            font-size: x-large;
            font-weight: 700;
            
        }
        .auto-style17 {
            text-decoration: underline;
            font-size: x-large;
            font-weight: 700;
            width: 358px;
        }
        .auto-style18 {
            height: 153px;
            text-decoration: underline;
            font-size: x-large;
            font-weight: 700;
            width: 358px;
        }
        .auto-style19 {
            width: 183px;
            height: 153px;
        }
        .auto-style20 {
            width: 253px;
            text-align: left;
            height: 153px;
        }
        .auto-style21 {
            height: 153px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="box">
        <table class="contentbox">
    <tr>
        <td class="auto-style15" colspan="4">Change Password</td>
    </tr>
    <tr>
        <td class="auto-style17"></td>
        <td class="auto-style13">Current Password</td>
        <td class="auto-style11">
            <asp:TextBox ID="txtcurrentpass" runat="server" style="text-align: left" CssClass="auto-style12"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcurrentpass" ErrorMessage="Plz Enter Current Password" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        <td class="auto-style12">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style17"></td>
        <td class="auto-style13">New Password</td>
        <td class="auto-style11">
            <asp:TextBox ID="txtnewpass" runat="server" style="text-align: left" CssClass="auto-style12" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnewpass" ErrorMessage="Plz Enter New Password" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        <td class="auto-style12">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style17"></td>
        <td class="auto-style13">Re-Enter Password</td>
        <td class="auto-style11">
            <asp:TextBox ID="txtrepass" runat="server" style="text-align: left" CssClass="auto-style12" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtrepass" ErrorMessage="Plz Re-Enter Password" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnewpass" ControlToValidate="txtrepass" ErrorMessage="Re Enter Password Don't Match" ForeColor="Red">*</asp:CompareValidator>
        </td>
        <td class="auto-style12">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style17"></td>
        <td class="auto-style10" style="font-size: large">&nbsp;</td>
        <td class="auto-style11">
            <asp:Button ID="Button1" runat="server" style="font-weight: 700" Text="Update" OnClick="Button1_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style18"></td>
        <td class="auto-style19" style="font-size: large"></td>
        <td class="auto-style20">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
        </td>
        <td class="auto-style21"></td>
    </tr>
    <tr>
        <td class="auto-style17"></td>
        <td class="auto-style10" style="font-size: large">&nbsp;</td>
        <td class="auto-style11">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
        </div>
</asp:Content>

