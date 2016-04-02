<%@ Page Title="" Language="C#" MasterPageFile="~/shopmaster.master" AutoEventWireup="true" CodeFile="team.aspx.cs" Inherits="team" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

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
        <td colspan="3" style="text-align: center"><b style="mso-bidi-font-weight: normal; color: #660066; font-family: 'Maiandra GD';"><span style="font-size:36.0pt;line-height:115%;font-family:Gabriola;mso-fareast-font-family:
Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;
mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-IN;mso-fareast-language:
EN-US;mso-bidi-language:AR-SA"><span class="auto-style4">Web Development Team</span></span></b></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btn_home" runat="server" BackColor="#000066" Font-Bold="True" Font-Names="Maiandra GD" ForeColor="#FFFFCC" PostBackUrl="~/mainpsge.aspx" Text="Home" />
        </td>
    </tr>
    <tr>
        <td style="text-align: center">
            <asp:Image ID="Image1" runat="server" Height="153px" style="text-align: center" Width="138px" ImageUrl="~/images/ashish.jpg" />
        </td>
        <td style="text-align: center">
            <p class="MsoNormal">
                <b><span lang="EN-US" style="font-size: 20.0pt; line-height: 115%; font-family: &quot;Maiandra GD&quot;,&quot;sans-serif&quot;; color: #002060; mso-ansi-language: EN-US">Ashish Pal<o:p></o:p></span></b></p>
            <p class="MsoNormal">
                <b><span lang="EN-US" style="font-size: 14.0pt; line-height: 115%; font-family: &quot;Maiandra GD&quot;,&quot;sans-serif&quot;; color: #002060; mso-ansi-language: EN-US">CSE 3<sup>rd</sup> Year ,Batch 2013-2017</span></b></p>
            <p class="MsoNormal">
                <b><span lang="EN-US" style="font-size: 14.0pt; line-height: 115%; font-family: &quot;Maiandra GD&quot;,&quot;sans-serif&quot;; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Mangal; mso-bidi-theme-font: minor-bidi; color: #002060; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">Mobile : </span></b><span lang="EN-US" style="font-size: 14.0pt; line-height: 115%; font-family: &quot;Maiandra GD&quot;,&quot;sans-serif&quot;; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Mangal; mso-bidi-theme-font: minor-bidi; color: #002060; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">09451193721</span></p>
            <p class="MsoNormal">
                <b><span lang="EN-US" style="font-size: 16.0pt; line-height: 115%; font-family: &quot;Maiandra GD&quot;,&quot;sans-serif&quot;; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Mangal; mso-bidi-theme-font: minor-bidi; color: #002060; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">Email : </span></b><span lang="EN-US" style="font-size: 16.0pt; line-height: 115%; font-family: &quot;Maiandra GD&quot;,&quot;sans-serif&quot;; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Mangal; mso-bidi-theme-font: minor-bidi; color: #00B050; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">avspal2016@gmail.com</span></p>
            <p class="MsoNormal">
                &nbsp;</p>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: center">
            <asp:Image ID="Image2" runat="server" Height="153px" Width="138px" ImageUrl="~/images/sandeep.jpg" />
            <cc1:RoundedCornersExtender ID="Image2_RoundedCornersExtender" runat="server" Enabled="True" TargetControlID="Image2">
            </cc1:RoundedCornersExtender>
        </td>
        <td style="text-align: center">
            <p class="MsoNormal">
                <b><span lang="EN-US" style="font-size: 20.0pt; line-height: 115%; font-family: &quot;Maiandra GD&quot;,&quot;sans-serif&quot;; color: #002060; mso-ansi-language: EN-US">Sandeep Singh<o:p></o:p></span></b></p>
            <p class="MsoNormal">
                <b><span lang="EN-US" style="font-size: 14.0pt; line-height: 115%; font-family: &quot;Maiandra GD&quot;,&quot;sans-serif&quot;; color: #002060; mso-ansi-language: EN-US">CSE 3<sup>rd</sup> Year ,Batch 2013-2017</span></b></p>
            <p class="MsoNormal">
                <o:p><b><span lang="EN-US" style="font-size: 14.0pt; line-height: 115%; font-family: &quot;Maiandra GD&quot;,&quot;sans-serif&quot;; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Mangal; mso-bidi-theme-font: minor-bidi; color: #002060; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">Mobile : <span lang="EN-US" style="font-size: 14.0pt; line-height: 115%; font-family: &quot;Maiandra GD&quot;,&quot;sans-serif&quot;; color: #002060; mso-ansi-language: EN-US">08132860202<o:p></o:p></span></span></b></o:p></p>
            <p class="MsoNormal">
                <o:p>
                <o:p><b><span lang="EN-US" style="font-size: 16.0pt; line-height: 115%; font-family: &quot;Maiandra GD&quot;,&quot;sans-serif&quot;; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Mangal; mso-bidi-theme-font: minor-bidi; color: #002060; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">Email : </span></b><span lang="EN-US" style="font-size: 16.0pt; line-height: 115%; font-family: &quot;Maiandra GD&quot;,&quot;sans-serif&quot;; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Mangal; mso-bidi-theme-font: minor-bidi; color: #00B050; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">
                <span lang="EN-US" style="font-size: 16.0pt; line-height: 115%; font-family: &quot;Maiandra GD&quot;,&quot;sans-serif&quot;; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Mangal; mso-bidi-theme-font: minor-bidi; color: #00B050; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">sandeepsinghcse0</span>@gmail.com</span></o:p></o:p></p>
            <p class="MsoNormal">
                &nbsp;</p>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: center">
            <asp:Image ID="Image3" runat="server" Height="153px" Width="138px" ImageUrl="~/images/bhanu.jpg" />
            <cc1:RoundedCornersExtender ID="Image3_RoundedCornersExtender" runat="server" Enabled="True" TargetControlID="Image3">
            </cc1:RoundedCornersExtender>
        </td>
        <td style="text-align: center">
            <p class="MsoNormal">
                <b><span lang="EN-US" style="font-size: 20.0pt; line-height: 115%; font-family: &quot;Maiandra GD&quot;,&quot;sans-serif&quot;; color: #002060; mso-ansi-language: EN-US">Bhanu Pratap Singh Rajput<o:p></o:p></span></b></p>
            <p class="MsoNormal">
                <b><span lang="EN-US" style="font-size: 14.0pt; line-height: 115%; font-family: &quot;Maiandra GD&quot;,&quot;sans-serif&quot;; color: #002060; mso-ansi-language: EN-US">CSE 3<sup>rd</sup> Year ,Batch 2013-2017</span></b></p>
            <p class="MsoNormal">
                <o:p><b><span lang="EN-US" style="font-size: 14.0pt; line-height: 115%; font-family: &quot;Maiandra GD&quot;,&quot;sans-serif&quot;; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Mangal; mso-bidi-theme-font: minor-bidi; color: #002060; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">Mobile : </span></b><span lang="EN-US" style="font-size: 14.0pt; line-height: 115%; font-family: &quot;Maiandra GD&quot;,&quot;sans-serif&quot;; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Mangal; mso-bidi-theme-font: minor-bidi; color: #002060; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">08413931388</span></o:p></p>
            <p class="MsoNormal">
                <o:p><b><span lang="EN-US" style="font-size: 16.0pt; line-height: 115%; font-family: &quot;Maiandra GD&quot;,&quot;sans-serif&quot;; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Mangal; mso-bidi-theme-font: minor-bidi; color: #002060; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">Email : </span></b><span lang="EN-US" style="font-size: 16.0pt; line-height: 115%; font-family: &quot;Maiandra GD&quot;,&quot;sans-serif&quot;; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Mangal; mso-bidi-theme-font: minor-bidi; color: #00B050; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">bpratap22singh@gmail.com</span></o:p></p>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

