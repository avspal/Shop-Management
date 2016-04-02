<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="sales.aspx.cs" Inherits="sales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style4 {
        width: 100%;
        background-color: #CCCCCC;
    }
        .auto-style5 {
            width: 100%;
            text-decoration: underline;
            background-color: #CCCCCC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="auto-style4">
    <tr>
        <td style="text-align: center"><b style="mso-bidi-font-weight: normal; color: #660066; font-family: 'Maiandra GD';"><span style="font-size:36.0pt;line-height:115%;font-family:Gabriola;mso-fareast-font-family:
Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;
mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-IN;mso-fareast-language:
EN-US;mso-bidi-language:AR-SA"><span class="auto-style5">Sales Report</span></span></b></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:DropDownList ID="drop_year" runat="server" OnSelectedIndexChanged="drop_year_SelectedIndexChanged" AutoPostBack="True">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="drop_month" runat="server" OnSelectedIndexChanged="drop_month_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem>--Select Month--</asp:ListItem>
                <asp:ListItem>January</asp:ListItem>
                <asp:ListItem>February</asp:ListItem>
                <asp:ListItem>March</asp:ListItem>
                <asp:ListItem>April</asp:ListItem>
                <asp:ListItem>May</asp:ListItem>
                <asp:ListItem>June</asp:ListItem>
                <asp:ListItem>July</asp:ListItem>
                <asp:ListItem>August</asp:ListItem>
                <asp:ListItem>September</asp:ListItem>
                <asp:ListItem>October</asp:ListItem>
                <asp:ListItem>November</asp:ListItem>
                <asp:ListItem>December</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="drop_day" runat="server" OnSelectedIndexChanged="drop_day_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem>--Select Day--</asp:ListItem>
                <asp:ListItem>01</asp:ListItem>
                <asp:ListItem>02</asp:ListItem>
                <asp:ListItem>03</asp:ListItem>
                <asp:ListItem>04</asp:ListItem>
                <asp:ListItem>05</asp:ListItem>
                <asp:ListItem>06</asp:ListItem>
                <asp:ListItem>07</asp:ListItem>
                <asp:ListItem>08</asp:ListItem>
                <asp:ListItem>09</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
                <asp:ListItem>23</asp:ListItem>
                <asp:ListItem>24</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>26</asp:ListItem>
                <asp:ListItem>27</asp:ListItem>
                <asp:ListItem>28</asp:ListItem>
                <asp:ListItem>29</asp:ListItem>
                <asp:ListItem>30</asp:ListItem>
                <asp:ListItem>31</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="margin-left: 80px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                <AlternatingRowStyle BackColor="White" CssClass="gridalter" />
                <Columns>
                    <asp:TemplateField HeaderText="Year">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("year") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Month">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("month") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Day">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("day") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Product Name">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("productname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Brand">
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("brand") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Sub brand">
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("sbrand") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Price (per item)">
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Quantity">
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Total Individual Price">
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("totalprice") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" CssClass="gridheader" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" CssClass="gridrow" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td style="margin-left: 80px">&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right; margin-left: 80px"><b style="mso-bidi-font-weight:normal; color: #000066;"><span style="font-size:16.0pt;line-height:115%;font-family:&quot;Maiandra GD&quot;,&quot;sans-serif&quot;;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:
&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-IN;
mso-fareast-language:EN-US;mso-bidi-language:AR-SA">Total Amount :</span></b><asp:Label ID="lbl_grand" runat="server" Font-Bold="True" Font-Names="Maiandra GD" Font-Size="Large" ForeColor="#006600"></asp:Label>
&nbsp;₹&nbsp;&nbsp; </td>
    </tr>
</table>
</asp:Content>

