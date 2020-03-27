<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="studybuddyv1._3._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">

    <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate>
<p> Please log in to continue</p>
                <asp:Login ID="Login1" runat="server" CreateUserText="Create an Study Buddy Acount" CreateUserUrl="~/SignUp.aspx" DestinationPageUrl="~/Default.aspx">
    </asp:Login>
    <asp:LoginStatus ID="LoginStatus1" runat="server" />
        </AnonymousTemplate>
        <LoggedInTemplate>
            <p>Welcome Back to Studdy Buddy</p>
        </LoggedInTemplate>
    </asp:LoginView>
</asp:Content>
