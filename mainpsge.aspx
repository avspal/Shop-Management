<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="mainpsge.aspx.cs" Inherits="mainpsge" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

 p.MsoNormal
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:10.0pt;
	margin-left:0cm;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
        .auto-style4 {
        height: 203px;
        text-decoration: underline;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="auto-style1" style="background-color: #CCCCCC" width="100%">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center">
                <p class="MsoNormal">
                    <b style="mso-bidi-font-weight:normal"><span style="font-size:24.0pt;line-height:115%;font-family:&quot;Maiandra GD&quot;,&quot;sans-serif&quot;" class="auto-style4">Customer Billing</span></b></p>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
            <p class="MsoNormal">
                <b style="mso-bidi-font-weight:normal"><span style="font-size:24.0pt;line-height:115%;font-family:Gabriola">Product Name :</span></b></p>
            
            </td>
            <td>
                <asp:DropDownList ID="drop_pname" runat="server" CssClass="tddata" Font-Bold="True" Font-Names="Maiandra GD" Height="100%" Width="239px" AutoPostBack="True" OnSelectedIndexChanged="drop_pname_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="drop_pname" ErrorMessage="* Select product" Font-Bold="True" Font-Names="Maiandra GD" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
            <p class="MsoNormal">
                <b style="mso-bidi-font-weight:normal"><span style="font-size:24.0pt;line-height:115%;font-family:Gabriola">
                <o:p>&nbsp;Brand :<o:p></o:p></o:p></span></b></p>
            </td>
            <td>
                <asp:DropDownList ID="drop_brand" runat="server" CssClass="tddata" Height="100%" Width="243px" AutoPostBack="True" OnSelectedIndexChanged="drop_brand_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="drop_brand" ErrorMessage="* Select brand of the product" Font-Bold="True" Font-Names="Maiandra GD" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <p class="MsoNormal">
                    <b style="mso-bidi-font-weight:normal"><span style="font-size:24.0pt;line-height:115%;font-family:Gabriola">Sub-Brand :<o:p></o:p></span></b></p>
            </td>
            <td>
                <asp:DropDownList ID="drop_sbrand" runat="server" Height="100%" Width="254px" AutoPostBack="True" OnSelectedIndexChanged="drop_sbrand_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
            <p class="MsoNormal">
                <b style="mso-bidi-font-weight:normal"><span style="font-size:24.0pt;line-height:115%;font-family:Gabriola">Price :<o:p></o:p></span></b></p>
            </td>
            <td>
                <asp:DropDownList ID="drop_price" runat="server" Height="100%" Width="260px" AutoPostBack="True">
                </asp:DropDownList>
&nbsp;&nbsp; <strong>₹</strong></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="drop_price" ErrorMessage="* Select price of product" Font-Bold="True" Font-Names="Maiandra GD" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
            <p class="MsoNormal">
                <b style="mso-bidi-font-weight:normal"><span style="font-size:24.0pt;line-height:115%;font-family:Gabriola">Quantity :</span></b></p>
            </td>
            <td>
                <asp:TextBox ID="txt_quantity" runat="server" CssClass="tddata"></asp:TextBox>
&nbsp;&nbsp; (Number of peices)</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">&nbsp;</td>
            <td>
                <asp:Button ID="btn_add" runat="server" BackColor="#000066" CssClass="button" Font-Bold="True" Font-Names="Maiandra GD" ForeColor="#FFFF99" Height="37px" Text="Add" Width="66px" OnClick="btn_add_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">&nbsp;</td>
            <td style="text-align: right">
                <asp:Button ID="btn_clear" runat="server" BackColor="#000066" Font-Bold="True" Font-Names="Maiandra GD" Font-Size="Large" ForeColor="#FFFFCC" OnClick="btn_clear_Click" Text="Clear List" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">&nbsp;</td>
            <td>
                <b style="mso-bidi-font-weight:normal"><span style="font-size:24.0pt;line-height:115%;font-family:Gabriola; text-decoration: underline;"><o:p>List of Products :</o:p></span></b></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">&nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="100%" Width="100%" OnRowDeleting="GridView1_RowDeleting">
                    <AlternatingRowStyle CssClass="gridalter" />
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
                        <asp:TemplateField HeaderText="Total Price(in ₹)">
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("totalprice") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField HeaderText="Remove" ShowDeleteButton="True" />
                    </Columns>
                    <HeaderStyle CssClass="gridheader" />
                    <RowStyle CssClass="gridrow" />
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">&nbsp;</td>
            <td style="text-align: right">
                <asp:Button ID="btn_invoice" runat="server" BackColor="#000066" Font-Bold="True" Font-Names="Maiandra GD" ForeColor="#FFFFCC" OnClick="btn_invoice_Click" Text="Generate Invoice" Height="33px" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

