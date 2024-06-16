<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Configurator.aspx.vb" Inherits="CarConfigurator.Configurator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 800px;
            border-collapse: collapse;
            border-style: solid;
            border-width: 1px;
        }
        .auto-style2 {
            text-decoration: underline;
        }
        .auto-style3 {
            width: 1000px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Last name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="First name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Offer date"></asp:Label>
                    </td>
                    <td>
                        <asp:Calendar ID="calOfferDate" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
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
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Offer expiration date"></asp:Label>
                    </td>
                    <td>
                        <asp:Calendar ID="calExpirationDate" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
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
                </tr>
            </table>
            <br />

            <span class="auto-style2"><strong>Car configurator</strong></span><br />
            <table class="auto-style3">
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Equipment level"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="cmbEquipmentLevel" runat="server">
                            <asp:ListItem Selected="True">Standard</asp:ListItem>
                            <asp:ListItem>Evolved</asp:ListItem>
                            <asp:ListItem>Advanced</asp:ListItem>
                            <asp:ListItem>Premium</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Warranty type"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="rblWarranty" runat="server">
                            <asp:ListItem Selected="True" Value="2">Standard (2 years)</asp:ListItem>
                            <asp:ListItem Value="5">Extended (5 years)</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Optionals"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="rblOptionals" runat="server" AutoPostBack="True">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem Selected="True">No</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:CheckBoxList ID="cblOptionals" runat="server" RepeatDirection="Horizontal" Visible="False">
                            <asp:ListItem>Alloy Wheels</asp:ListItem>
                            <asp:ListItem>Climatronic</asp:ListItem>
                            <asp:ListItem>Automatic pilot</asp:ListItem>
                            <asp:ListItem>Road alert</asp:ListItem>
                            <asp:ListItem>Navigation</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Discounts"></asp:Label>
                    </td>
                    <td>
                        <asp:CheckBox ID="chkWholePayment" runat="server" Font-Bold="True" Font-Italic="True" Text="Whole payment" TextAlign="Left" />
&nbsp;&nbsp;
                        <asp:CheckBox ID="chkCASCO" runat="server" Font-Bold="True" Font-Italic="True" Text="CASCO Insurance" TextAlign="Left" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnDisplayOffer" runat="server" BackColor="#FF3300" Font-Bold="True" Font-Italic="True" Font-Underline="True" ForeColor="White" Text="Display offer" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
