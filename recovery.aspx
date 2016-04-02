<%@ Page Title="" Language="C#" MasterPageFile="~/shopmaster.master" AutoEventWireup="true" CodeFile="recovery.aspx.cs" Inherits="recovery" %>

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
EN-US;mso-bidi-language:AR-SA"><span class="auto-style5">Password Recovery</span></span></b></td>
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
mso-fareast-language:EN-US;mso-bidi-language:AR-SA">UserId :</span></b></td>
            <td>
                <asp:TextBox ID="txt_userid" runat="server" CssClass="tddata"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_userid" ErrorMessage="* Enter your userid" ForeColor="#CC0000"></asp:RequiredFieldValidator>
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
mso-fareast-language:EN-US;mso-bidi-language:AR-SA">Security Question :</span></b></td>
            <td>
                <asp:DropDownList ID="drop_security" runat="server">
                    <asp:ListItem>--Select Question--</asp:ListItem>
                    <asp:ListItem>What is your maiden&#39;s name ?</asp:ListItem>
                    <asp:ListItem>What is your pet name ?</asp:ListItem>
                    <asp:ListItem>Which is your favorite book ?</asp:ListItem>
                    <asp:ListItem>Where is your birth place ?</asp:ListItem>
                    <asp:ListItem>Which is  your favourite city ?</asp:ListItem>
                    <asp:ListItem>Who is your favourite political leader ?</asp:ListItem>
                    <asp:ListItem>Which is your favourite mobile company?</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="drop_security" ErrorMessage="* Select question" ForeColor="#CC0000"></asp:RequiredFieldValidator>
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
mso-fareast-language:EN-US;mso-bidi-language:AR-SA">Answer :</span></b></td>
            <td>
                <asp:TextBox ID="txt_answer" runat="server" CssClass="tddata" AutoPostBack="True" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_answer" ErrorMessage="* Enter your answer" ForeColor="#CC0000"></asp:RequiredFieldValidator>
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
                <asp:Label ID="lbl_message" runat="server" Font-Bold="True" Font-Names="Maiandra GD" ForeColor="Maroon"></asp:Label>
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
                <asp:Button ID="btn_go" runat="server" BackColor="#000066" CssClass="button" Font-Bold="True" Font-Names="Maiandra GD" Font-Size="Large" ForeColor="#FFFFCC" Height="36px" OnClick="btn_go_Click" Text="Go" Width="42px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

