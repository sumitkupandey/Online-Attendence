<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="addcourse.aspx.cs" Inherits="addcourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
        height: 65px;
    }
    .auto-style9 {
        width: 188px;
        font-size: medium;
            text-align:left;
        }
    .auto-style10 {
        width: 207px;
        text-align: left;
    }
    .auto-style12 {
        font-size: large;
        text-align: left;
        height: 40px;
    }
    .auto-style13 {
        height: 42px;
    }
    .auto-style14 {
        width: 188px;
        font-size: large;
        height: 42px;
    }
    .auto-style15 {
        width: 207px;
        text-align: left;
        height: 42px;
    }
    .auto-style16 {
        height: 40px;
    }
        .auto-style17 {
            width: 312px;
        }
        .auto-style18 {
            width: 134px;
        }
        .auto-style19 {
            height: 47px;
        }
        .auto-style20 {
            font-size: medium;
        }
        .auto-style21 {
            width: 188px;
            text-align: left;
            height: 32px;
        }
        .auto-style22 {
            width: 207px;
            text-align: left;
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="box">
    <table class="contentbox">
        <tr>
            <td class="auto-style19" colspan="6" style="font-size: x-large; font-weight: 700; text-decoration: underline; text-align: center;">Add Course</td>
        </tr>
        <tr>
            <td class="auto-style17" rowspan="4">&nbsp;</td>
            <td class="auto-style18" rowspan="4">
                &nbsp;</td>
            <td class="auto-style21">Course Name</td>
            <td class="auto-style22">
                <asp:TextBox ID="txtcoursename" runat="server" style="margin-right: 0px;" Width="151px" placeholder="Course Name" CssClass="auto-style20"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcoursename" ErrorMessage="Plz Enter Course Name" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">Total Semester</td>
            <td class="auto-style22">
                <asp:TextBox ID="txtcoursesem" runat="server" style="margin-right: 0px;" Width="151px" placeholder="Semester" CssClass="auto-style20"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcoursesem" ErrorMessage="Plz Enter Semester Name" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">
                <asp:Button ID="Button1" runat="server" Height="26px" OnClick="Button1_Click" style="text-align: left; font-weight: 700" Text="Add" Width="46px" />
            </td>
            <td class="auto-style13"></td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style12" colspan="2">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
            </td>
            <td class="auto-style16"></td>
            <td class="auto-style16"></td>
        </tr>
        </table>
        </div>
</asp:Content>

