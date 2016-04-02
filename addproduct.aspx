<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="addproduct.aspx.cs" Inherits="addproduct" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
        width: 100%;
        background-color: #FFFFCC;
    }
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
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="auto-style3" style="background-color: #CCCCCC">
    <tr>
        <td colspan="3" style="text-align: center"><b style="mso-bidi-font-weight: normal; color: #660066; font-family: 'Maiandra GD';"><span style="font-size:36.0pt;line-height:115%;font-family:Gabriola;mso-fareast-font-family:
Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;
mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-IN;mso-fareast-language:
EN-US;mso-bidi-language:AR-SA"><span class="auto-style4">Product Details</span></span></b></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: center">
            <p class="MsoNormal" style="font-family: 'Maiandra GD'">
                <b style="mso-bidi-font-weight:normal"><span style="font-size:24.0pt;line-height:115%;font-family:Gabriola">User Id :<o:p></o:p></span></b></p>
        </td>
        <td>
            <asp:Label ID="lbl_userid" runat="server" Font-Bold="True" Font-Names="Maiandra GD" Font-Size="X-Large"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: center">
            <p class="MsoNormal">
                <b style="mso-bidi-font-weight:normal"><span style="font-size:24.0pt;line-height:115%;font-family:Gabriola">Product Id :<o:p></o:p></span></b></p>
        </td>
        <td>
            <asp:Label ID="lbl_productid" runat="server" Font-Bold="True" Font-Names="Maiandra GD" Font-Size="X-Large"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: center">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: center">
            <p class="MsoNormal">
                <b style="mso-bidi-font-weight:normal"><span style="font-size:24.0pt;line-height:115%;font-family:Gabriola">Product Name :<o:p></o:p></span></b></p>
            
        </td>
        <td>
            <asp:TextBox ID="txt_productname" runat="server" CssClass="tddata" Font-Bold="True" Font-Names="Maiandra GD" Font-Size="Large" AutoPostBack="True"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Enter product name" ControlToValidate="txt_productname" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
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
            <asp:TextBox ID="txt_price" runat="server" CssClass="tddata" Font-Bold="True" Font-Names="Maiandra GD" Font-Size="Large" AutoPostBack="True"></asp:TextBox>
        &nbsp;Rs.</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Enter product price" ControlToValidate="txt_price" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
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
            <asp:TextBox ID="txt_brand" runat="server" CssClass="tddata" Font-Bold="True" Font-Names="Maiandra GD" Font-Size="Large"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="* Enter product brand" ControlToValidate="txt_brand" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
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
            <asp:TextBox ID="txt_subbrand" runat="server" CssClass="tddata" Font-Bold="True" Font-Names="Maiandra GD"></asp:TextBox>
&nbsp;&nbsp;&nbsp; (Required if existis)</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
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
            <asp:TextBox ID="txt_quantity" runat="server" CssClass="tddata" Font-Bold="True" Font-Names="Maiandra GD" Font-Size="Large"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="* Enter quantity of product" ControlToValidate="txt_quantity" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btn_add" runat="server" BackColor="#000066" CssClass="button" Font-Bold="True" Font-Names="Maiandra GD" Font-Size="Large" ForeColor="#99FF66" Height="45px" Text="Add" Width="90px" OnClick="btn_add_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbl_message" runat="server" Font-Bold="True" Font-Names="Maiandra GD" Font-Size="Large"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

