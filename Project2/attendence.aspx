<%@ Page Title="" Language="C#" MasterPageFile="~/staffmaster.master" AutoEventWireup="true" CodeFile="attendence.aspx.cs" Inherits="attendence" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .contentbox {
            width: 100%;
            background-image:url(file/staff2.jpg);
            background-repeat: no-repeat;
            background-size: 1200px 430px;
            height: 100%;
        }
        .auto-style6 {
            height: 35px;
        }
        .auto-style7 {
            font-size: medium;
        }
        .auto-style8 {
            height: 35px;
            font-size: medium;
            }
        .auto-style9 {
            height: 35px;
            width: 411px;
        }
        .auto-style10 {
            width: 411px;
        }
        .auto-style11 {
            font-size: medium;
            width: 175px;
        }
        .auto-style12 {
            width: 133px;
            font-size: medium;
        }
        .auto-style13 {
            height: 66px;
        }
        .auto-style14 {
            width: 411px;
            height: 22px;
        }
        .auto-style15 {
            width: 175px;
            height: 22px;
        }
        .auto-style16 {
            height: 22px;
        }
        .auto-style17 {
            width: 175px;
            text-align: right;
        }
        .auto-style18 {
            font-size: medium;
        }
        .auto-style19 {
            width: 411px;
            height: 23px;
        }
        .auto-style20 {
            height: 23px;
        }
        .auto-style21 {
            font-size: medium;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="box">
    <table class="contentbox">
        <tr>
            <td colspan="4" style="text-align: center; font-weight: 700; text-decoration: underline; font-size: x-large" class="auto-style13">Attendence Seat</td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style8">Course<br class="auto-style7" />
            </td>
            <td class="auto-style8" colspan="2">
                <asp:DropDownList ID="dropcourse" runat="server"  width="184px" height="27px" OnSelectedIndexChanged="dropcourse_SelectedIndexChanged" AutoPostBack="True" CssClass="auto-style21">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="dropcourse" CssClass="auto-style18" ErrorMessage="Plz Select Course" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">Semester</td>
            <td>
                <asp:DropDownList ID="dropsem" runat="server" CssClass="auto-style12" width="184px" height="27px" AutoPostBack="True">
                </asp:DropDownList>
                <asp:DropDownList ID="dropsem1" runat="server" CssClass="auto-style12" width="184px" height="27px" AutoPostBack="True" OnSelectedIndexChanged="dropsem1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="dropsem1" CssClass="auto-style18" ErrorMessage="Plz Select Semester" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">Subject</td>
            <td>
                <asp:DropDownList ID="dropsubject" runat="server" CssClass="auto-style12" width="184px" height="27px" AutoPostBack="True">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="dropsubject" CssClass="auto-style18" ErrorMessage="Plz Select Subject" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" style="font-weight: 700" Text="Go" Width="46px" OnClick="Button1_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style15"></td>
            <td class="auto-style16">
                </td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td colspan="2" rowspan="5">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="fname" HeaderText="First Name" />
                        <asp:BoundField DataField="lname" HeaderText="Last Name" />
                        <asp:TemplateField HeaderText="Attendence">
                            <ItemTemplate>
                                <asp:RadioButton ID="radiop" runat="server" Checked="True" GroupName="attendence" Text="P" />
                                &nbsp;
                                <asp:RadioButton ID="radioa" runat="server" GroupName="attendence" Text="A" />
                                &nbsp;
                                <asp:RadioButton ID="radiol" runat="server" GroupName="attendence" Text="L" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19"></td>
            <td class="auto-style20"></td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td rowspan="2" class="auto-style17">
                <asp:Button ID="btnsubmit" runat="server" OnClick="Button2_Click" style="font-weight: 700; text-align: right" Text="Submit" />
            </td>
            <td rowspan="4">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td rowspan="2" class="auto-style17">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
        </tr>
    </table>
        </div>
</asp:Content>

