<%@ Page Title="" Language="C#" MasterPageFile="~/staffmaster.master" AutoEventWireup="true" CodeFile="staffchangepass.aspx.cs" Inherits="staffchangepass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .contentbox {
            width: 100%;
            background-image:url(file/staff2.jpg);
            background-repeat: no-repeat;
            background-size: 1200px 430px;
            height: 100%;
        }
        .auto-style9 {
            height: 40px;
        }
        .auto-style8 {
            width: 423px;
        }
        .auto-style10 {
            width: 183px;
        }
        .auto-style11 {
            width: 235px;
            text-align: left;
        }
        .auto-style12 {
            width: 423px;
            height: 30px;
        }
        .auto-style13 {
            width: 183px;
            height: 30px;
            }
        .auto-style14 {
            width: 235px;
            text-align: left;
            height: 30px;
        }
        .auto-style15 {
            height: 30px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="box">
    <table class="contentbox">
        <tr>
            <td class="auto-style9" colspan="4" style="font-weight: 700; font-size: x-large; text-decoration: underline; text-align: center">Change Password</td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style13">Current Password</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtcurrentpass" runat="server" style="text-align: left" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcurrentpass" ErrorMessage="Plz Enter Current Password" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style15"></td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style10">New Password</td>
            <td class="auto-style11">
                <asp:TextBox ID="txtnewpass" runat="server" style="text-align: left" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnewpass" ErrorMessage="Plz Enter New Password" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style10">Re-Enter Password</td>
            <td class="auto-style11">
                <asp:TextBox ID="txtrepass" runat="server" style="text-align: left" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtrepass" ErrorMessage="Plz Re-Enter Password" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnewpass" ControlToValidate="txtrepass" ErrorMessage="Re Enter Password Don't Match" ForeColor="Red">*</asp:CompareValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">
                <asp:Button ID="Button1" runat="server" style="font-weight: 700" Text="Update" OnClick="Button1_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        </div>
</asp:Content>

