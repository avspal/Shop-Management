<%@ Page Title="" Language="C#" MasterPageFile="~/shopmaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
        background-color: #9ACD32;
    }
    .auto-style2 {
        height: 18px;
    }
    .auto-style3 {
        height: 64px;
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
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <table cellpadding="0" cellspacing="0" class="auto-style1" style="background-color: #CCCCCC">
    <tr>
        <td class="auto-style3" colspan="3" style="text-align: center">
            <p align="center" class="MsoNormal" style="text-align: center; color: #000066;">
                <b style="mso-bidi-font-weight:
normal"><span class="auto-style4" style="font-size:36.0pt;line-height:115%;mso-style-textoutline-type:
solid;mso-style-textoutline-fill-color:#7D7D7D;mso-style-textoutline-fill-alpha:
100.0%;mso-style-textoutline-outlinestyle-dpiwidth:.83pt;mso-style-textoutline-outlinestyle-linecap:
flat;mso-style-textoutline-outlinestyle-join:round;mso-style-textoutline-outlinestyle-pctmiterlimit:
0%;mso-style-textoutline-outlinestyle-dash:solid;mso-style-textoutline-outlinestyle-align:
center;mso-style-textoutline-outlinestyle-compound:simple;mso-style-textfill-type:
gradient;mso-style-textfill-fill-gradientfill-shadetype:linear;mso-style-textfill-fill-gradientfill-shade-linearshade-angle:
5400000;mso-style-textfill-fill-gradientfill-shade-linearshade-fscaled:no;
mso-style-textfill-fill-gradientfill-stoplist:&quot;0 \#FFFFFF -1 100000 tint=40000 satm=250000\,9000 \#FFFFFF -1 100000 tint=52000 satm=300000\,50000 \#7C7C7C -1 100000 shade=20000 satm=300000\,79000 \#FFFFFF -1 100000 tint=52000 satm=300000\,100000 \#FFFFFF -1 100000 tint=40000 satm=250000&quot;">User’s Details<o:p></o:p></span></b></p>
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
mso-fareast-language:EN-US;mso-bidi-language:AR-SA">User Id :</span></b></td>
        <td>
            <asp:Label ID="lbl_userid" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
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
mso-fareast-language:EN-US;mso-bidi-language:AR-SA">Name :</span></b></td>
        <td>
            <asp:TextBox ID="txt_name" runat="server" CssClass="tddata"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_name" ErrorMessage="* Enter your name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
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
mso-fareast-language:EN-US;mso-bidi-language:AR-SA">Password :</span></b></td>
        <td>
            <asp:TextBox ID="txt_password" runat="server" CssClass="tddata" TextMode="Password"></asp:TextBox>
            <cc1:PasswordStrength ID="PasswordStrength1" runat="server" TargetControlID="txt_password"></cc1:PasswordStrength>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_password" ErrorMessage="* Enter password" ForeColor="#CC0000"></asp:RequiredFieldValidator>
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
mso-fareast-language:EN-US;mso-bidi-language:AR-SA">Confirm Password :</span></b></td>
        <td>
            <asp:TextBox ID="txt_confirm" runat="server" CssClass="tddata" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_confirm" ErrorMessage="* Retype your password" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_password" ControlToValidate="txt_confirm" ErrorMessage="* Password is not matching" ForeColor="#CC0000"></asp:CompareValidator>
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
mso-fareast-language:EN-US;mso-bidi-language:AR-SA">Mobile No. :</span></b></td>
        <td>
            <asp:TextBox ID="txt_mobile" runat="server" CssClass="tddata"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_mobile" ErrorMessage="* Enter your mobile number" ForeColor="#CC0000"></asp:RequiredFieldValidator>
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
mso-fareast-language:EN-US;mso-bidi-language:AR-SA">Email id :</span></b></td>
        <td>
            <asp:TextBox ID="txt_email" runat="server" CssClass="tddata"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_email" ErrorMessage="* Enter your email id" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="* E-mail format is not correct" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
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
mso-fareast-language:EN-US;mso-bidi-language:AR-SA">Shop Address :</span></b></td>
        <td>
            <asp:TextBox ID="txt_address" runat="server" TextMode="MultiLine" CssClass="tddata"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_address" ErrorMessage="* Enter your shop's address" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2"></td>
        <td class="auto-style2"></td>
        <td class="auto-style2"></td>
    </tr>
    <tr>
        <td style="text-align: center"><b style="mso-bidi-font-weight:normal"><span style="font-size:16.0pt;line-height:115%;font-family:&quot;Maiandra GD&quot;,&quot;sans-serif&quot;;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:
&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-IN;
mso-fareast-language:EN-US;mso-bidi-language:AR-SA">Photo :</span></b></td>
        <td>
            <asp:FileUpload ID="file_photo" runat="server" />
&nbsp;&nbsp;
            <asp:Label ID="lbl_photo" runat="server" ForeColor="#CC0000"></asp:Label>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="file_photo" ErrorMessage="* Choose your profile photo" ForeColor="#CC0000"></asp:RequiredFieldValidator>
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
        <td>&nbsp;</td>
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
mso-fareast-language:EN-US;mso-bidi-language:AR-SA">Answer :</span></b></td>
        <td>
            <asp:TextBox ID="txt_answer" runat="server" CssClass="tddata"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Label ID="lbl_message" runat="server" ForeColor="#CC0000"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" BackColor="#000066" Font-Bold="True" Font-Size="Medium" Font-Strikeout="False" ForeColor="YellowGreen" OnClick="Button1_Click" Text="Submit" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

