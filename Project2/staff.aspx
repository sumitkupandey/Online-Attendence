<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="staff.aspx.cs" Inherits="staff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .contentbox {
            width: 100%;
            background-image:url(file/admin1.jpg);
            background-repeat: no-repeat;
            background-size: 1200px 430px;
            height: 100%;
        }
    .auto-style12 {
        width: 416px;
    }
    .auto-style13 {
        width: 190px;
    }
    .auto-style14 {
        width: 281px;
    }
    .auto-style15 {
        width: 416px;
        height: 23px;
    }
    .auto-style16 {
        width: 190px;
        height: 23px;
    }
    .auto-style17 {
        width: 281px;
        height: 23px;
    }
    .auto-style18 {
        height: 23px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="box">
    <table class="contentbox">
    <tr>
        <td class="auto-style2" colspan="4"><strong>Staff</strong></td>
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style13"><strong>All Staff</strong></td>
        <td class="auto-style14">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Staff" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style15"></td>
        <td class="auto-style16">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                <Columns>
                    <asp:BoundField DataField="fname" HeaderText="First Name" />
                    <asp:BoundField DataField="lname" HeaderText="Last Name" />
                </Columns>
                <EmptyDataTemplate>
                    <asp:Button ID="Button2" runat="server" Text="Button" />
                </EmptyDataTemplate>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
        </td>
        <td class="auto-style17"></td>
        <td class="auto-style18"></td>
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style14">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
        </div>
</asp:Content>

