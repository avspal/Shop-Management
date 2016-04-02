<%@ Page Title="" Language="C#" MasterPageFile="~/shopmaster.master" AutoEventWireup="true" CodeFile="change.aspx.cs" Inherits="change" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
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
    <table cellpadding="0" cellspacing="0" class="auto-style2">
        <tr>
            <td colspan="2" style="text-align: center"><b style="mso-bidi-font-weight: normal; color: #660066; font-family: 'Maiandra GD';"><span style="font-size:36.0pt;line-height:115%;font-family:Gabriola;mso-fareast-font-family:
Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;
mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-IN;mso-fareast-language:
EN-US;mso-bidi-language:AR-SA"><span class="auto-style5">Change Password</span></span></b></td>
            <td style="text-align: center">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center"><b style="mso-bidi-font-weight:normal"><span style="font-size:16.0pt;line-height:115%;font-family:&quot;Maiandra GD&quot;,&quot;sans-serif&quot;;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:
&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-IN;
mso-fareast-language:EN-US;mso-bidi-language:AR-SA">Userid :</span></b></td>
            <td>
                <asp:TextBox ID="txt_userid" runat="server" CssClass="tddata"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_userid" ErrorMessage="* Enter userid" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center"><b style="mso-bidi-font-weight:normal"><span style="font-size:16.0pt;line-height:115%;font-family:&quot;Maiandra GD&quot;,&quot;sans-serif&quot;;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:
&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-IN;
mso-fareast-language:EN-US;mso-bidi-language:AR-SA">New Password :</span></b></td>
            <td style="margin-left: 80px">
                <asp:TextBox ID="txt_new" runat="server" CssClass="tddata" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_new" ErrorMessage="* Enter new password" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center"><b style="mso-bidi-font-weight:normal"><span style="font-size:16.0pt;line-height:115%;font-family:&quot;Maiandra GD&quot;,&quot;sans-serif&quot;;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:
&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-IN;
mso-fareast-language:EN-US;mso-bidi-language:AR-SA">Confirm Password :</span></b></td>
            <td>
                <asp:TextBox ID="txt_confirm" runat="server" CssClass="tddata" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_confirm" ErrorMessage="* Confirm your new password" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_new" ControlToValidate="txt_confirm" ErrorMessage="* Password is not matching" ForeColor="#CC0000"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">&nbsp;</td>
            <td>
                <asp:Label ID="lbl_message" runat="server" Font-Bold="True"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">&nbsp;</td>
            <td>
                <asp:Button ID="btn_done" runat="server" BackColor="#000066" CssClass="button" Font-Bold="True" Font-Names="Maiandra GD" Font-Size="Large" ForeColor="#FFFFCC" Height="34px" OnClick="btn_done_Click" Text="Done" Width="59px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

