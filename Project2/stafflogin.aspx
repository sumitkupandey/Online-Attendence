<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="stafflogin.aspx.cs" Inherits="stafflogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .contentbox {
            width: 100%;
            background-image:url(file/staff.jpg);
            background-repeat: no-repeat;
            background-size: 1200px 430px;
            height: 100%;
        }
        .auto-style4 {
            width: 100%;
            height: 100%;
        }
        .auto-style5 {
            width: 421px;
        }
        .auto-style6 {
            width: 131px;
            font-size: large;
        font-weight: 700;
    }
        .auto-style7 {
            width: 268px;
        }
        .auto-style8 {
            height: 40px;
        }
        .auto-style16 {
            width: 100%;
            height: 431px;
        }
        .auto-style20 {
            width: 268px;
            height: 45px;
        }
        .auto-style27 {
            width: 421px;
            }
        .auto-style33 {
            width: 421px;
            height: 45px;
        }
        .auto-style34 {
            width: 131px;
            font-size: large;
            font-weight: 700;
            height: 45px;
        }
        .auto-style35 {
            height: 45px;
        }
        .auto-style36 {
            width: 421px;
            height: 50px;
        }
        .auto-style37 {
            width: 131px;
            font-size: large;
            font-weight: 700;
            height: 50px;
        }
        .auto-style38 {
            width: 268px;
            height: 50px;
        }
        .auto-style39 {
            height: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="box">
        <div class="contentbox">
    <table class="auto-style16">
        <tr>
            <td class="auto-style8" colspan="4" style="text-align: center; font-weight: 700; font-size: x-large; text-decoration: underline"></td>
        </tr>
        <tr>
            <td class="auto-style8" colspan="4" style="text-align: center; font-weight: 700; font-size: x-large; text-decoration: underline">Staff&nbsp; Login</td>
        </tr>
        <tr>
            <td class="auto-style33"></td>
            <td class="auto-style34">Username</td>
            <td class="auto-style35" colspan="2">
                <asp:TextBox ID="txtsusername" runat="server" style="font-size: large"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtsusername" ErrorMessage="Plz Enter Username" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style33"></td>
            <td class="auto-style34">Password</td>
            <td class="auto-style20">
                <asp:TextBox ID="txtspassword" runat="server" style="font-size: large" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtspassword" ErrorMessage="Plz Enter Password" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style35"></td>
        </tr>
        <tr>
            <td class="auto-style36"></td>
            <td class="auto-style37"></td>
            <td class="auto-style38">
                <asp:Button ID="btnalogin" runat="server" Height="33px" style="font-weight: 700" Text="Login" Width="59px" OnClick="btnalogin_Click" />
            </td>
            <td class="auto-style39"></td>
        </tr>
        <tr>
            <td class="auto-style27"></td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
        </div>
        </div>
</asp:Content>
