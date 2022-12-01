<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="course.aspx.cs" Inherits="course" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
    .auto-style11 {
        width: 85px;
    }
    .contentbox {
            width: 100%;
            background-image:url(file/admin1.jpg);
            background-repeat: no-repeat;
            background-size: 1200px 430px;
            height: 100%;
        }
    .auto-style12 {
        width: 546px;
    }
    .auto-style13 {
        font-size: x-large;
        text-decoration: underline;
            height: 105px;
        }
    .auto-style14 {
        font-weight: bold;
    }
    .auto-style16 {
        width: 85px;
        font-size: large;
    }
    .auto-style17 {
        width: 194px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="box">
    <table class="contentbox">
    <tr>
        <td class="auto-style13" colspan="4"><strong>Courses</strong></td>
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style16"><strong>All Course</strong></td>
        <td class="auto-style17"><strong>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style14" Text="Add Courses" OnClick="Button1_Click" />
            </strong></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style11">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" style="text-align: left">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="course" HeaderText="Course" />
                        <asp:TemplateField></asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
        <td class="auto-style17">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
        </div>
</asp:Content>

