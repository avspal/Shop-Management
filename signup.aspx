<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/Site.css" />
    <link rel="stylesheet" type="text/css" href="css/Main.css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border-color: #FFFFFF;
            background-color: #000000;
        }
        .auto-style2 {
            text-decoration: underline;
        }
        .auto-style3 {
            height: 28px;
        }
        .auto-style4 {
            width: 467px;
        }
        .auto-style5 {
            height: 28px;
            width: 467px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table cellpadding="0" cellspacing="0" class="auto-style1" style="background-color: yellowgreen">
            <tr>
                <td colspan="3" style="text-align: center">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center; font-family: Calibri;">
                    <h1 class="auto-style2" style="color: #000099"><strong>User&#39;s Details</strong></h1>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">User ID :</td>
                <td class="auto-style4">
                    <asp:Label ID="lbl_userid" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center" class="auto-style3">Name :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_name" runat="server" CssClass="tddata"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_name" ErrorMessage="* Enter your name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">Password :</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txt_password" runat="server" TextMode="Password" CssClass="tddata"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_password" ErrorMessage="* Enter password " ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">Confirm Password :</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txt_confirm" runat="server" TextMode="Password" CssClass="tddata"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_confirm" ErrorMessage="* Enter confirm password" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_password" ControlToValidate="txt_confirm" ErrorMessage="* Password is not matching" ForeColor="#CC0000"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">Mobile No. :</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txt_mobile" runat="server" CssClass="tddata"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_mobile" ErrorMessage="* Enter your name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">Email id : </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txt_email" runat="server" CssClass="tddata"></asp:TextBox>
                &nbsp;&nbsp;&nbsp; eg : somthing@gmail.com</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_email" ErrorMessage="* Enter your email" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="* email format is not valid" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">Shop Address :</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txt_address" runat="server" TextMode="MultiLine" CssClass="tddata"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_address" ErrorMessage="* Enter your shop's address" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">Photo :</td>
                <td class="auto-style4">
                    <asp:FileUpload ID="file_photo" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="lbl_message" runat="server" ForeColor="#CC0000"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="btn_submit" runat="server" BackColor="#000099" CssClass="button" ForeColor="#99FF33" Text="submit" OnClick="btn_submit_Click" Font-Bold="True" Font-Size="Large" Height="34px" Width="88px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
