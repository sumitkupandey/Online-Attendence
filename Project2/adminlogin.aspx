<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .contentbox {
            width: 100%;
            background-image:url(file/admin.jpg);
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
            width: 302px;
        }
    .auto-style8 {
        height: 40px;
    }
    .auto-style9 {
        width: 421px;
        }
    .auto-style10 {
        width: 131px;
        font-size: large;
        font-weight: 700;
        height: 49px;
    }
    .auto-style11 {
        height: 49px;
        text-align: left;
    }
    .auto-style12 {
        width: 421px;
        height: 51px;
    }
    .auto-style13 {
        width: 131px;
        font-size: large;
        font-weight: 700;
        height: 51px;
    }
    .auto-style14 {
        width: 302px;
        height: 51px;
        text-align: left;
    }
    .auto-style15 {
        height: 51px;
    }
        .auto-style17 {
            width: 131px;
            font-size: large;
            font-weight: 700;
            height: 24px;
        }
        .auto-style18 {
            width: 302px;
            height: 24px;
        }
        .auto-style19 {
            height: 24px;
        }
    .auto-style21 {
        width: 131px;
        font-size: large;
        font-weight: 700;
        height: 46px;
    }
    .auto-style22 {
        width: 302px;
        height: 46px;
    }
    .auto-style23 {
        height: 46px;
    }
    .auto-style24 {
        width: 302px;
        text-align: left;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="box">
     <div class="contentbox">  
    <table class="contentbox">
    <tr>
        <td class="auto-style8" colspan="4" style="text-align: center; font-weight: 700; font-size: x-large; text-decoration: underline"></td>
    </tr>
    <tr>
        <td class="auto-style8" colspan="4" style="text-align: center; font-weight: 700; font-size: x-large; text-decoration: underline">Admin Login</td>
    </tr>
    <tr>
        <td class="auto-style9"></td>
        <td class="auto-style10">Username</td>
        <td class="auto-style11">
            <asp:TextBox ID="txtausername" runat="server" style="font-size: large"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtausername" ErrorMessage="Plz Enter Username" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        <td class="auto-style11">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9"></td>
        <td class="auto-style6">Password</td>
        <td class="auto-style24">
            <asp:TextBox ID="txtapassword" runat="server" style="font-size: large" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtapassword" ErrorMessage="Plz Enter Password" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12"></td>
        <td class="auto-style13"></td>
        <td class="auto-style14">
            <asp:Button ID="btnalogin" runat="server" Height="33px" OnClick="btnalogin_Click" style="font-weight: 700" Text="Login" Width="59px" />
        </td>
        <td class="auto-style15"></td>
    </tr>
    <tr>
        <td class="auto-style9"></td>
        <td class="auto-style21"></td>
        <td class="auto-style22">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
        </td>
        <td class="auto-style23"></td>
    </tr>
    <tr>
        <td class="auto-style9"></td>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style7">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9"></td>
        <td class="auto-style17"></td>
        <td class="auto-style18">
        </td>
        <td class="auto-style19"></td>
    </tr>
    <tr>
        <td class="auto-style9"></td>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style7">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9"></td>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style7">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
        </div>
        </div>
</asp:Content>

