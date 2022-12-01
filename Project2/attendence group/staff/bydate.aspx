<%@ Page Title="" Language="C#" MasterPageFile="~/staffmaster.master" AutoEventWireup="true" CodeFile="bydate.aspx.cs" Inherits="attendence_group_staff_bysubject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .contentbox {
            width: 100%;
            background-image:url(file/staff2.jpg);
            background-repeat: no-repeat;
            background-size: 1200px 430px;
            height: 100%;
        }
        .auto-style6 {
            width: 465px;
        }
        .auto-style7 {
            width: 355px;
            font-size: medium;
        }
        .auto-style8 {
            width: 465px;
            height: 22px;
        }
        .auto-style9 {
            height: 22px;
        }
        .auto-style10 {
            height: 22px;
            width: 224px;
            font-size: medium;
        }
        .auto-style12 {
            width: 133px;
            font-size: medium;
        }
        .auto-style13 {
            width: 224px;
            font-size: medium;
        }
        .auto-style16 {
            font-size: medium;
        }
        .auto-style18 {
            font-size: medium;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="contentbox">
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center; font-size: x-large; font-weight: 700; text-decoration: underline">By Date<br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td style="text-align: left" class="auto-style13">Course</td>
            <td class="auto-style6">
                <asp:DropDownList ID="dropcourse" runat="server"  width="184px" height="27px" OnSelectedIndexChanged="dropcourse_SelectedIndexChanged" AutoPostBack="True" CssClass="auto-style16">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="dropcourse" CssClass="auto-style18" ErrorMessage="Plz Select Course" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br class="auto-style7" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td style="text-align: left" class="auto-style13">Semester</td>
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
            <td class="auto-style8"></td>
            <td style="text-align: left" class="auto-style10">Subject</td>
            <td>
                <asp:DropDownList ID="dropsubject" runat="server" CssClass="auto-style12" width="184px" height="27px" AutoPostBack="True">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="dropsubject" CssClass="auto-style18" ErrorMessage="Plz Select Subject" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style16">Date</td>
            <td>
                <asp:TextBox ID="txtdate" runat="server" CssClass="auto-style16"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style16" height="24px" ImageUrl="~/file/cal.png" OnClick="ImageButton1_Click" Width="33px" CausesValidation="False" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtdate" CssClass="auto-style18" ErrorMessage="Plz Select Date Of Birth" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged" Width="200px">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <WeekendDayStyle BackColor="#FFFFCC" />
                </asp:Calendar>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="See" style="font-weight: 700" Width="53px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style16">
                <asp:Label ID="show" runat="server" style="font-size: large; font-weight: 700; color: #FF0000; text-decoration: underline"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style16" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="fname" HeaderText="First Name" />
                        <asp:BoundField DataField="lname" HeaderText="Last Name" />
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
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style16" colspan="2">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

