<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContactForm.ascx.cs" Inherits="studybuddyv1._3.Controls.WebUserControl1" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>

<table class="auto-style1" runat="server" id="FormTable">
    <tr>
        <td colspan="3"><h1>Contact Form</h1></td>
    </tr>
    <tr>
        <td>Name:</td>
        <td>
            <asp:TextBox ID="Name" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" CssClass="ErrorMessage" ErrorMessage="Enter your name">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Email Address:</td>
        <td>
            <asp:TextBox ID="EmailAddress" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailAddress" ErrorMessage="Enter a valid e-mail address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">**</asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailAddress" ErrorMessage="Enter an e-mail address">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Comments:</td>
        <td>
            <asp:TextBox ID="Comments" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter a comment">*</asp:RequiredFieldValidator>
        </td>
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
        <td>
            <asp:Button ID="SendButton" runat="server" Text="Send" OnClick="SendButton_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
           <tr>
          <td colspan="3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" HeaderText="Please correct the following errors:" />
          </td>
        </tr>
</table>
<asp:Label ID="Message" runat="server" Text="Your message has been sent" Visible="false" />
        </ContentTemplate>
    </asp:UpdatePanel>


