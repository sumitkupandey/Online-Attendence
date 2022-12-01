<%@ Page Title="" Language="C#" MasterPageFile="~/staffmaster.master" AutoEventWireup="true" CodeFile="attendencereport1.aspx.cs" Inherits="attendencereport1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <style>
        .contentbox {
            width: 100%;
            background-image:url(file/staff2.jpg);
            background-repeat: no-repeat;
            background-size: 1200px 430px;
            height: 100%;
        }
        .auto-style8 {
            height: 320px;
        }
        .auto-style9 {
            height: 38px;
        }
        .auto-style10 {
            height: 186px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="box">
     <table class="contentbox">
    <tr>
        <td class="auto-style9"></td>
        <td style="text-align: center; font-weight: 700; font-size: x-large; text-decoration: underline;" class="auto-style9">
        </td>
        <td class="auto-style9"></td>
    </tr>
    <tr>
        <td class="auto-style10"></td>
        <td style="text-align: center; font-weight: 700; font-size: x-large; text-decoration: underline;" class="auto-style10">
            <br />
            Attendence<br />
            <br />
            <asp:Button ID="btnsubject" runat="server" Height="36px" style="font-weight: 700" Text="By Date" width="102px" OnClick="btnsubject_Click" />
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" height="36px" style="font-weight: 700" Text="By Month" width="102px" OnClick="Button3_Click" />
        </td>
        <td class="auto-style10"></td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td style="text-align: center; font-weight: 700; font-size: x-large; text-decoration: underline;" class="auto-style8">
        </td>
        <td class="auto-style8">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td style="text-align: center; font-weight: 700; font-size: x-large; text-decoration: underline;" class="auto-style8">
            &nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
    </tr>
</table>
   </div>
</asp:Content>

