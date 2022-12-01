<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="addsubject.aspx.cs" Inherits="addsubject" %>

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
            text-align: left;
        }
        .auto-style11 {
            width: 123px;
        }
        .auto-style13 {
            height: 66px;
        }
        .auto-style14 {
            width: 422px;
            font-size: x-large;
            }
        .auto-style16 {
            text-align: left;
            height: 32px;
        }
        .auto-style17 {
            height: 32px;
        }
        .auto-style18 {
            font-size: medium;
        }
        .auto-style19 {
            text-align: left;
            width: 169px;
            font-size: medium;
            height: 32px;
        }
        .auto-style21 {
            text-align: left;
            font-size: medium;
            height: 32px;
        }
        .auto-style22 {
            width: 422px;
            font-size: x-large;
            height: 52px;
        }
        .auto-style23 {
            width: 123px;
            height: 52px;
        }
        .auto-style24 {
            height: 52px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="box">
    <table class="contentbox">
        <tr>
            <td colspan="4" style="font-size: x-large; font-weight: 700; text-decoration: underline" class="auto-style13">Add Subject</td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style19">Select Course</td>
            <td class="auto-style16">
                <asp:DropDownList ID="dropcourse" runat="server" CssClass="auto-style18" width="184px" height="27px" OnSelectedIndexChanged="dropcourse_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="dropcourse" CssClass="auto-style18" ErrorMessage="Plz Select Course" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style17"></td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style21">Select Semester</td>
            <td class="auto-style21">
                <asp:DropDownList ID="dropsem" runat="server" CssClass="auto-style18" width="184px" height="27px" AutoPostBack="True">
                </asp:DropDownList>
                <asp:DropDownList ID="dropsem1" runat="server" CssClass="auto-style18" width="184px" height="27px" AutoPostBack="True">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="dropsem1" CssClass="auto-style18" ErrorMessage="Plz Select Semester" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style21">Subject</td>
            <td class="auto-style21">
                <asp:TextBox ID="txtsubject" runat="server" CssClass="auto-style18" width="176px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtsubject" CssClass="auto-style18" ErrorMessage="Plz Enter Course" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22"></td>
            <td class="auto-style23"></td>
            <td style="text-align: left" class="auto-style24">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ADD" style="font-weight: 700" />
            </td>
            <td class="auto-style24"></td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style11">&nbsp;</td>
            <td style="text-align: left">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table></div>
</asp:Content>

