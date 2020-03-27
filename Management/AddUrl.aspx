<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="AddUrl.aspx.cs" Inherits="studybuddyv1._3.Management.AddUrl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <hr />
    <h1>Add Chat and Forum URLs</h1>
       <p>Click </p><a href="#">here</a><p> to view or edit forums and chat rooms</p>
        <h2>Add a forum and chat url for a university</h2>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="DataUni" Height="50px" Width="125px" OnPageIndexChanging="DetailsView1_PageIndexChanging" DefaultMode="Insert">
            <Fields>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="false" ReadOnly="True" SortExpression="ID" />
                
                <asp:TemplateField HeaderText="University" SortExpression="UniversityID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("UniversityID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="ID" SelectedValue='<%# Bind("UniversityID") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudyBuddyConnectionString1 %>" SelectCommand="SELECT [ID], [Name] FROM [University] ORDER BY [SortOrder]"></asp:SqlDataSource>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("UniversityID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ChatURL" HeaderText="ChatURL" SortExpression="ChatURL" />
                <asp:BoundField DataField="ForumURL" HeaderText="ForumURL" SortExpression="ForumURL" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        
        <asp:SqlDataSource ID="DataUni" runat="server" ConnectionString="<%$ ConnectionStrings:StudyBuddyConnectionString1 %>" SelectCommand="SELECT [ID], [UniversityID], [ChatURL], [ForumURL] FROM [UniversityURL]" DeleteCommand="DELETE FROM [UniversityURL] WHERE [ID] = @ID" InsertCommand="INSERT INTO [UniversityURL] ([UniversityID], [ChatURL], [ForumURL]) VALUES (@UniversityID, @ChatURL, @ForumURL)" UpdateCommand="UPDATE [UniversityURL] SET [UniversityID] = @UniversityID, [ChatURL] = @ChatURL, [ForumURL] = @ForumURL WHERE [ID] = @ID">
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

    <h2>Add a forum and chat url for a course</h2>
        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="DataCourse" DefaultMode="Insert" Height="50px" Width="187px">
        <Fields>
            <asp:TemplateField HeaderText="Course" SortExpression="CourseID">
                <EditItemTemplate>

                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="ID" SelectedValue='<%# Bind("CourseID") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:StudyBuddyConnectionString1 %>" SelectCommand="SELECT [ID], [Name] FROM [Course] ORDER BY [SortOrder]"></asp:SqlDataSource>

                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ChatURL" HeaderText="ChatURL" SortExpression="ChatURL" />
            <asp:BoundField DataField="ForumURL" HeaderText="ForumURL" SortExpression="ForumURL" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="DataCourse" runat="server" ConnectionString="<%$ ConnectionStrings:StudyBuddyConnectionString1 %>" DeleteCommand="DELETE FROM [CourseURL] WHERE [ID] = @ID" InsertCommand="INSERT INTO [CourseURL] ([CourseID], [ChatURL], [ForumURL]) VALUES (@CourseID, @ChatURL, @ForumURL)" SelectCommand="SELECT [CourseID], [ChatURL], [ForumURL], [ID] FROM [CourseURL]" UpdateCommand="UPDATE [CourseURL] SET [CourseID] = @CourseID, [ChatURL] = @ChatURL, [ForumURL] = @ForumURL WHERE [ID] = @ID">
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



    <h2>Add a forum and chat for a course within a certain university</h2>



    <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource3" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            
            <asp:TemplateField HeaderText="University" SortExpression="UniversityID">
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource5" DataTextField="Name" DataValueField="ID" SelectedValue='<%# Bind("UniversityID") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:StudyBuddyConnectionString1 %>" SelectCommand="SELECT [ID], [Name] FROM [University] ORDER BY [SortOrder]"></asp:SqlDataSource>
                </InsertItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Course" SortExpression="CourseID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CourseID") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource4" DataTextField="Name" DataValueField="ID" SelectedValue='<%# Bind("CourseID") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:StudyBuddyConnectionString1 %>" SelectCommand="SELECT [ID], [Name] FROM [Course] ORDER BY [SortOrder]"></asp:SqlDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("CourseID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:BoundField DataField="ChatURL" HeaderText="ChatURL" SortExpression="ChatURL" />
            <asp:BoundField DataField="ForumURL" HeaderText="ForumURL" SortExpression="ForumURL" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:StudyBuddyConnectionString1 %>" DeleteCommand="DELETE FROM [UniCourseURL] WHERE [ID] = @ID" InsertCommand="INSERT INTO [UniCourseURL] ([CourseID], [UniversityID], [ChatURL], [ForumURL]) VALUES (@CourseID, @UniversityID, @ChatURL, @ForumURL)" SelectCommand="SELECT [ID], [CourseID], [UniversityID], [ChatURL], [ForumURL] FROM [UniCourseURL]" UpdateCommand="UPDATE [UniCourseURL] SET [CourseID] = @CourseID, [UniversityID] = @UniversityID, [ChatURL] = @ChatURL, [ForumURL] = @ForumURL WHERE [ID] = @ID">
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



    <hr />
    
    </asp:Content>
