<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        
        .contentbox {
            width: 100%;
            background-image:url(file/loginbg.jpg);
            background-repeat: no-repeat;
            background-size: 1200px 430px;
            height: 100%;
        }
        .auto-style7 {
            font-size: x-large;
        }
        .auto-style8 {
            height: 23px;
        }
        .auto-style9 {
            height: 40px;
        }
        .auto-style10 {
            height: 31px;
        }
        .auto-style11 {
            height: 34px;
        }
        .auto-style12 {
            height: 65px;
        }
        
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="box">
    <table class="contentbox">
            <tr>
                <td style="text-align: center" class="auto-style10"></td>
            </tr>
            <tr>
                <td style="text-align: center;border-radius: 25px;background-color:blue;color:#FF5733;" class="auto-style9"><span class="auto-style7"><strong>Login</strong></span>
        <asp:Image ID="Image2" runat="server" Height="28px" ImageUrl="~/file/hand.gif" Width="25px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8" style="text-align: center"></td>
            </tr>
            <tr>
                <td class="auto-style8" style="text-align: center">&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center" class="auto-style12">
         
        <asp:Button ID="Button5" runat="server" Height="38px" OnClick="Button3_Click" style="font-weight: 700" Text="Admin" Width="70px" CssClass="glow-on-hover" />
                      
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button6" runat="server" height="38px" OnClick="Button4_Click" style="font-weight: 700" Text="Staff" width="70px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            </table>
    </div>
</asp:Content>
    

