<%@ Page Title="" Language="C#" MasterPageFile="~/shopmaster.master" AutoEventWireup="true" CodeFile="invoice.aspx.cs" Inherits="invoice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            background-color: #CCCCCC;
        }
        .auto-style4 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="auto-style2">
        <tr>
            <td style="text-align: center"><b style="mso-bidi-font-weight: normal; color: #660066; font-family: 'Maiandra GD';"><span style="font-size:36.0pt;line-height:115%;font-family:Gabriola;mso-fareast-font-family:
Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;
mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-IN;mso-fareast-language:
EN-US;mso-bidi-language:AR-SA"><span class="auto-style4">Invoice</span></span></b></td>
        </tr>
        <tr>
            <td style="text-align: right"><b style="mso-bidi-font-weight:normal; color: #000066;"><span style="font-size:16.0pt;line-height:115%;font-family:&quot;Maiandra GD&quot;,&quot;sans-serif&quot;;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:
&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-IN;
mso-fareast-language:EN-US;mso-bidi-language:AR-SA">Date :<asp:Label ID="lbl_date" runat="server" Font-Bold="True" Font-Names="Maiandra GD"></asp:Label>
                </span></b></td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp; <b style="mso-bidi-font-weight:normal; color: #000066;"><span style="font-size:16.0pt;line-height:115%;font-family:&quot;Maiandra GD&quot;,&quot;sans-serif&quot;;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:
&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-IN;
mso-fareast-language:EN-US;mso-bidi-language:AR-SA">Customer Name :&nbsp; </span>
                <asp:TextBox ID="txt_cname" runat="server" CssClass="tddata" Font-Bold="True" Font-Names="Maiandra GD"></asp:TextBox>
                </b>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp; &nbsp;<b style="mso-bidi-font-weight:normal; color: #000066;"><span style="font-size:16.0pt;line-height:115%;font-family:&quot;Maiandra GD&quot;,&quot;sans-serif&quot;;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:
&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-IN;
mso-fareast-language:EN-US;mso-bidi-language:AR-SA">Seller Name :&nbsp; </span>
                <asp:Label ID="lbl_sname" runat="server" Font-Bold="True" Font-Names="Maiandra GD"></asp:Label>
                </b></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp; <b style="mso-bidi-font-weight:normal; color: #000066;"><span style="font-size:16.0pt;line-height:115%;font-family:&quot;Maiandra GD&quot;,&quot;sans-serif&quot;;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:
&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-IN;
mso-fareast-language:EN-US;mso-bidi-language:AR-SA" class="auto-style4">List of Products :</span></b></td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="100%" Width="100%">
                    <AlternatingRowStyle BackColor="White" CssClass="gridalter" />
                    <Columns>
                        <asp:TemplateField HeaderText="Product Name">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("productname") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Brand">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("brand") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Sub Brand">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("sbrand") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Price(per unit)">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Quantity">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Total Individual Price(in ₹)">
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("totalprice") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" CssClass="gridheader" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" CssClass="gridrow" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right"><b style="mso-bidi-font-weight:normal; color: #000066;"><span style="font-size:16.0pt;line-height:115%;font-family:&quot;Maiandra GD&quot;,&quot;sans-serif&quot;;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:
&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-IN;
mso-fareast-language:EN-US;mso-bidi-language:AR-SA">Total Amount :</span></b><asp:Label ID="lbl_grand" runat="server" Font-Bold="True" Font-Names="Maiandra GD" Font-Size="Large" ForeColor="#006600"></asp:Label>
&nbsp;₹&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right"> &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right"> &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right"> &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right"> &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right"> <b style="mso-bidi-font-weight:normal; color: #000066; text-decoration: overline;"><span style="font-size:16.0pt;line-height:115%;font-family:&quot;Maiandra GD&quot;,&quot;sans-serif&quot;;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:
&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-IN;
mso-fareast-language:EN-US;mso-bidi-language:AR-SA">Seller Signature</span></b></td>
        </tr>
    </table>
</asp:Content>

