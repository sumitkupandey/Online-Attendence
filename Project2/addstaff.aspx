<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="addstaff.aspx.cs" Inherits="addstaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        body{
            box-sizing:border-box;
            width:100%;
            height:430px;
        }
        .contentbox {
            width: 100%;
            background-image:url(file/admin1.jpg);
            background-repeat: no-repeat;
            background-size: 1200px 430px;
            height: 100%;
        }
    .auto-style8 {
        height: 66px;
        font-size: large;
        }
    .auto-style11 {
        width: 447px;
    }
    .auto-style12 {
            font-size: medium;
            border-color: blue;
            border-width: thin;
        }
        .auto-style13 {
            height: 60px;
            font-size: large;
        }
        .auto-style15 {
            font-size: medium;
        }
    .auto-style17 {
        color: black;
    }
        .auto-style18 {
            font-size: large;
        }
        .auto-style19 {
            font-size: large;
            text-align: left;
        }
        .auto-style20 {
            font-size: medium;
            height: 32px;
        }
        .auto-style21 {
            font-size: medium;
            height: 32px;
            text-align: left;
        }
        .auto-style22 {
            width: 447px;
            height: 84px;
        }
        .auto-style23 {
            font-size: medium;
            height: 84px;
        }
        .auto-style24 {
            font-size: medium;
            height: 84px;
            text-align: left;
        }
        .auto-style25 {
            height: 84px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="box">
    <table class="contentbox">
    <tr>
        <td class="auto-style13" colspan="4"><strong style="text-decoration: underline; font-size: xx-large">Add Staff</strong></td>
    </tr>
    <tr>
        <td class="auto-style22"></td>
        <td class="auto-style23">Username</td>
        <td class="auto-style24">
            <asp:TextBox ID="txtusername" runat="server" CssClass="auto-style12" placeholder="Username"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtusername" CssClass="auto-style15" ErrorMessage="Plz Enter Username No" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        <td class="auto-style25"></td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style20">First Name</td>
        <td class="auto-style21">
            <asp:TextBox ID="txtfname" runat="server" CssClass="auto-style12" placeholder="First Name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtfname" CssClass="auto-style15" ErrorMessage="Plz Enter First Name" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style20">Last Name</td>
        <td class="auto-style21">
            <asp:TextBox ID="txtlname" runat="server" CssClass="auto-style12" placeholder="Last Name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtlname" CssClass="auto-style15" ErrorMessage="Plz Enter Last Name" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style20">DOB</td>
        <td class="auto-style21">
            <asp:TextBox ID="txtdob" runat="server" CssClass="auto-style12" placeholder="Date Of Birth"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtdob" CssClass="auto-style15" ErrorMessage="Plz Enter Date Of Birth" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style20">Email ID</td>
        <td class="auto-style21">
            <asp:TextBox ID="txtemail" runat="server" CssClass="auto-style12" placeholder="Email ID"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtemail" CssClass="auto-style15" ErrorMessage="Plz Enter Email ID" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Plz Enter Valid Email ID" ForeColor="Red" style="font-size: medium" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style20">Mobile No</td>
        <td class="auto-style21">
            <asp:TextBox ID="txtmobile" runat="server" CssClass="auto-style12" placeholder="Mobile No"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtmobile" CssClass="auto-style15" ErrorMessage="Plz Enter Mobile No" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtmobile" CssClass="auto-style15" ErrorMessage="Invalid Mobile No" Operator="DataTypeCheck" style="color: #FF0000" Type="Integer">*</asp:CompareValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style18">&nbsp;</td>
        <td class="auto-style19">
            <asp:Button ID="Button1" runat="server" style="font-weight: 700" Text="ADD" OnClick="Button1_Click" Height="33px" Width="53px" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style18">&nbsp;</td>
        <td class="auto-style19">
            <asp:Label ID="tpass" runat="server" style="font-size: large" CssClass="auto-style17"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style18" colspan="2">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" style="font-size: medium" CssClass="auto-style17" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
        </div>
</asp:Content>