<%@ Page Title="" Language="C#" MasterPageFile="~/staffmaster.master" AutoEventWireup="true" CodeFile="staffhome.aspx.cs" Inherits="staffhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <style>
    .contentbox {
            width: 100%;
            background-image:url(file/staffhome.jpg);
            background-repeat: no-repeat;
            background-size: 1200px 430px;
            height: 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="box">

    <table class="contentbox">
    <tr>
        <td colspan="4" style="text-align: center; font-size: x-large; font-weight: 700">&nbsp;</td>
    </tr>
</table>
        </div>
</asp:Content>

