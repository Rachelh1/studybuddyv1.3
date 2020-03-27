<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="EditUrl.aspx.cs" Inherits="studybuddyv1._3.Management.EditUrl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <h1>Edit Chat or Forum URLS for Universities</h1>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            <asp:TemplateField HeaderText="UniversityID" SortExpression="UniversityID">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceuni" DataTextField="Name" DataValueField="ID" SelectedValue='<%# Bind("UniversityID") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceuni" runat="server" ConnectionString="<%$ ConnectionStrings:StudyBuddyConnectionString1 %>" SelectCommand="SELECT [ID], [Name] FROM [University] ORDER BY [SortOrder]"></asp:SqlDataSource>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("UniversityID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ChatURL" HeaderText="ChatURL" SortExpression="ChatURL" />
            <asp:BoundField DataField="ForumURL" HeaderText="ForumURL" SortExpression="ForumURL" />
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:StudyBuddyConnectionString1 %>" DeleteCommand="DELETE FROM [UniversityURL] WHERE [ID] = @ID" InsertCommand="INSERT INTO [UniversityURL] ([UniversityID], [ChatURL], [ForumURL]) VALUES (@UniversityID, @ChatURL, @ForumURL)" ProviderName="<%$ ConnectionStrings:StudyBuddyConnectionString1.ProviderName %>" SelectCommand="SELECT [ID], [UniversityID], [ChatURL], [ForumURL] FROM [UniversityURL]" UpdateCommand="UPDATE [UniversityURL] SET [UniversityID] = @UniversityID, [ChatURL] = @ChatURL, [ForumURL] = @ForumURL WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UniversityID" Type="Int32" />
                <asp:Parameter Name="ChatURL" Type="String" />
                <asp:Parameter Name="ForumURL" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="UniversityID" Type="Int32" />
                <asp:Parameter Name="ChatURL" Type="String" />
                <asp:Parameter Name="ForumURL" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>


        <h1>Edit Chat or Forum URLS for Courses</h1>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:TemplateField HeaderText="CourseID" SortExpression="CourseID">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSourceCourse" DataTextField="Name" DataValueField="ID" SelectedValue='<%# Bind("CourseID") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceCourse" runat="server" ConnectionString="<%$ ConnectionStrings:StudyBuddyConnectionString1 %>" SelectCommand="SELECT [ID], [Name] FROM [Course] ORDER BY [SortOrder]"></asp:SqlDataSource>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("CourseID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ChatURL" HeaderText="ChatURL" SortExpression="ChatURL" />
                <asp:BoundField DataField="ForumURL" HeaderText="ForumURL" SortExpression="ForumURL" />
            </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudyBuddyConnectionString1 %>" DeleteCommand="DELETE FROM [CourseURL] WHERE [ID] = @ID" InsertCommand="INSERT INTO [CourseURL] ([CourseID], [ChatURL], [ForumURL]) VALUES (@CourseID, @ChatURL, @ForumURL)" ProviderName="<%$ ConnectionStrings:StudyBuddyConnectionString1.ProviderName %>" SelectCommand="SELECT [ID], [CourseID], [ChatURL], [ForumURL] FROM [CourseURL]" UpdateCommand="UPDATE [CourseURL] SET [CourseID] = @CourseID, [ChatURL] = @ChatURL, [ForumURL] = @ForumURL WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CourseID" Type="Int32" />
                    <asp:Parameter Name="ChatURL" Type="Int32" />
                    <asp:Parameter Name="ForumURL" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CourseID" Type="Int32" />
                    <asp:Parameter Name="ChatURL" Type="Int32" />
                    <asp:Parameter Name="ForumURL" Type="String" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>


        <h1>Edit Chat or Forum URLS for courses within a specific university</h1>
            <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource3" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:TemplateField HeaderText="CourseID" SortExpression="CourseID">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSourcecourse" DataTextField="Name" DataValueField="ID" SelectedValue='<%# Bind("CourseID") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourcecourse" runat="server" ConnectionString="<%$ ConnectionStrings:StudyBuddyConnectionString1 %>" SelectCommand="SELECT [ID], [Name] FROM [Course] ORDER BY [SortOrder]"></asp:SqlDataSource>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("CourseID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="UniversityID" SortExpression="UniversityID">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSourceUni" DataTextField="Name" DataValueField="ID" SelectedValue='<%# Bind("UniversityID") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceUni" runat="server" ConnectionString="<%$ ConnectionStrings:StudyBuddyConnectionString1 %>" SelectCommand="SELECT [ID], [Name] FROM [University] ORDER BY [SortOrder]"></asp:SqlDataSource>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("UniversityID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ChatURL" HeaderText="ChatURL" SortExpression="ChatURL" />
                <asp:BoundField DataField="ForumURL" HeaderText="ForumURL" SortExpression="ForumURL" />
            </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:StudyBuddyConnectionString1 %>" DeleteCommand="DELETE FROM [UniCourseURL] WHERE [ID] = @ID" InsertCommand="INSERT INTO [UniCourseURL] ([CourseID], [UniversityID], [ChatURL], [ForumURL]) VALUES (@CourseID, @UniversityID, @ChatURL, @ForumURL)" ProviderName="<%$ ConnectionStrings:StudyBuddyConnectionString1.ProviderName %>" SelectCommand="SELECT [ID], [CourseID], [UniversityID], [ChatURL], [ForumURL] FROM [UniCourseURL]" UpdateCommand="UPDATE [UniCourseURL] SET [CourseID] = @CourseID, [UniversityID] = @UniversityID, [ChatURL] = @ChatURL, [ForumURL] = @ForumURL WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CourseID" Type="Int32" />
                    <asp:Parameter Name="UniversityID" Type="Int32" />
                    <asp:Parameter Name="ChatURL" Type="String" />
                    <asp:Parameter Name="ForumURL" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CourseID" Type="Int32" />
                    <asp:Parameter Name="UniversityID" Type="Int32" />
                    <asp:Parameter Name="ChatURL" Type="String" />
                    <asp:Parameter Name="ForumURL" Type="String" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

</asp:Content>
