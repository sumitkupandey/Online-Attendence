<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="addstudent.aspx.cs" Inherits="addstudent" %>

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
    .auto-style10 {
        font-size: large;
    }
    .auto-style11 {
            width: 365px;
        }
    .auto-style13 {
        height: 31px;
        font-size: large;
        text-align: left;
    }
    .auto-style14 {
            height: 31px;
            text-align: center;
        }
        .auto-style18 {
            width: 365px;
            height: 32px;
        }
        .auto-style20 {
            height: 32px;
        }
    .auto-style23 {
        color: black;
    }
        .auto-style24 {
            height: 32px;
            text-align: left;
        }
        .auto-style25 {
            font-size: large;
            text-align: left;
        }
        .auto-style26 {
            height: 65px;
            font-size: large;
        }
        .auto-style27 {
            height: 31px;
            font-size: large;
            text-align: left;
            width: 365px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="contentbox">
    <tr>
        <td class="auto-style25" rowspan="11"></td>
    </tr>
    <tr>
        <td class="auto-style26" colspan="3"><strong style="text-decoration: underline; font-size: xx-large">Add Student</strong></td>
    </tr>
    <tr>
        <td class="auto-style27"></td>
        <td class="auto-style14">Select Course</td>
        <td class="auto-style13">
            <asp:DropDownList ID="dropcourse" runat="server" CssClass="text" width="168px" DataTextField="course" DataValueField="course" OnSelectedIndexChanged="dropcourse_SelectedIndexChanged" AutoPostBack="True">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="dropcourse" ErrorMessage="Plz Select Course" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style27"></td>
        <td class="auto-style14">Semester</td>
        <td class="auto-style13">
                <asp:DropDownList ID="dropsem" runat="server" AutoPostBack="True" Height="19px" width="168px" CssClass="text">
                </asp:DropDownList>
                <asp:DropDownList ID="dropsem1" runat="server" height="27px" width="168px" CssClass="text">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="dropsem1" ErrorMessage="Plz Select Semester" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style20">First Name</td>
        <td class="auto-style24">
            <asp:TextBox ID="txtsfname" runat="server" CssClass="text" placeholder="First Name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtsfname" ErrorMessage="Plz Enter First Name" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style20">Last Name</td>
        <td class="auto-style24">
            <asp:TextBox ID="txtslname" runat="server" CssClass="text" placeholder="Last Name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtslname" ErrorMessage="Plz Enter Last Name" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style20">DOB</td>
        <td class="auto-style24">
            <asp:TextBox ID="txtsdob" runat="server" CssClass="text" placeholder="DOB"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtsdob" ErrorMessage="Plz Enter Date Of Birth" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style18"></td>
        <td class="auto-style20">Email ID</td>
        <td class="auto-style24">
            <asp:TextBox ID="txtsemail" runat="server" CssClass="text" placeholder="Email ID"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtsemail" ErrorMessage="Plz Enter Email ID" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtsemail" ErrorMessage="Invalid Email ID" style="color: #FF0000; " ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style20">Mobile No</td>
        <td class="auto-style24">
            <asp:TextBox ID="txtsmobile" runat="server" CssClass="text" placeholder="Mobile No"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtsmobile" ErrorMessage="Plz Enter Mobile No" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtsmobile" ErrorMessage="Invalid Mobile No" Operator="DataTypeCheck" style="color: #FF0000; " Type="Integer">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style18"></td>
        <td class="auto-style20">&nbsp;</td>
        <td class="auto-style24">
            <asp:Button ID="Button1" runat="server" style="font-weight: 700" Text="ADD" OnClick="Button1_Click" CssClass="btn" />
        </td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style25">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" style="font-size: medium" CssClass="auto-style23" />
        </td>
    </tr>
</table>
</asp:Content>

