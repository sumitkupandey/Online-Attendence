<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="bymonth.aspx.cs" Inherits="attendence_group_admin_bymonth" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style19 {
            width: 465px;
            height: 34px;
        }
        .auto-style20 {
            height: 34px;
            width: 224px;
            font-size: medium;
        }
        .auto-style16 {
            font-size: medium;
        }
        .auto-style18 {
            font-size: medium;
        }
        .auto-style21 {
            height: 30px;
        }
        .auto-style12 {
            width: 133px;
            font-size: medium;
        }
        .auto-style22 {
            text-align: left;
        }
        .auto-style23 {
            width: 465px;
            height: 34px;
            text-align: left;
        }
        .auto-style25 {
            height: 30px;
            width: 169px;
        }
        .auto-style27 {
            text-align: left;
            height: 30px;
            font-size: medium;
        }
        .auto-style28 {
            font-size: x-large;
            height: 30px;
        }
        .auto-style30 {
            height: 32px;
            width: 224px;
            font-size: medium;
        }
        .auto-style31 {
            text-align: left;
            height: 32px;
        }
        .auto-style32 {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td colspan="4" style="text-align: center; font-size: x-large; font-weight: 700; text-decoration: underline">By Month<br />
                <br /></td>
        </tr>
        <tr>
            <td class="auto-style19"></td>
            <td style="text-align: left" class="auto-style20">Course</td>
            <td class="auto-style23">
                <asp:DropDownList ID="dropcourse" runat="server"  width="184px" height="27px" OnSelectedIndexChanged="dropcourse_SelectedIndexChanged" AutoPostBack="True" CssClass="auto-style16">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="dropcourse" CssClass="auto-style18" ErrorMessage="Plz Select Course" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br class="auto-style7" /></td>
            <td class="auto-style32"></td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td style="text-align: left" class="auto-style30">Semester</td>
            <td class="auto-style31">
                <asp:DropDownList ID="dropsem" runat="server" CssClass="auto-style12" width="184px" height="27px" AutoPostBack="True">
                </asp:DropDownList>
                <asp:DropDownList ID="dropsem1" runat="server" CssClass="auto-style12" width="184px" height="27px" AutoPostBack="True" OnSelectedIndexChanged="dropsem1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="dropsem1" CssClass="auto-style18" ErrorMessage="Plz Select Semester" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td style="text-align: left" class="auto-style10">Subject</td>
            <td class="auto-style22">
                <asp:DropDownList ID="dropsubject" runat="server" CssClass="auto-style12" width="184px" height="27px" AutoPostBack="True">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="dropsubject" CssClass="auto-style18" ErrorMessage="Plz Select Subject" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td style="text-align: left" class="auto-style10">Date</td>
            <td class="auto-style22">
                <asp:DropDownList ID="dropmonth" runat="server" width="54px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="dropyear" runat="server">
                    <asp:ListItem>2020</asp:ListItem>
                    <asp:ListItem>2021</asp:ListItem>
                    <asp:ListItem>2022</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td style="text-align: left" class="auto-style25"></td>
            <td class="auto-style27">
                <asp:Button ID="Button1" runat="server" style="font-weight: 700" Text="See" OnClick="Button1_Click" />
            </td>
            <td class="auto-style28"></td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td style="text-align: left" class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td style="text-align: right; color: #FF0000;" class="auto-style10">
                <asp:Label ID="show" runat="server" style="font-size: large; font-weight: 700; text-align: right; text-decoration: underline"></asp:Label>
            </td>
            <td class="auto-style9"></td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td style="text-align: left" class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td style="text-align: left" class="auto-style10" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="fname" HeaderText="First Name" />
                        <asp:BoundField DataField="lname" HeaderText="Last Name" />
                        <asp:BoundField DataField="classdate" HeaderText="Date" />
                        <asp:BoundField DataField="subject" HeaderText="Subject" />
                        <asp:BoundField DataField="att" HeaderText="Attendence" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
            </td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td style="text-align: left" class="auto-style10" colspan="2">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td style="text-align: left" class="auto-style10" colspan="2">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

