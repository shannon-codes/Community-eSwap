<%@ Page Title="" Language="C#" MasterPageFile="~/Landing.Master" AutoEventWireup="true" CodeBehind="JobSearch.aspx.cs" Inherits="FInalProject.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div style="text-align:right">
        <asp:Button class="btn btn-success" ID="btn_logout" runat="server" Text="Logout" OnClick="btn_logout_Click" style="height: 31px" />&nbsp;&nbsp;
    <asp:Button ID="btn_signUp" class="btn btn-success" runat="server" Text="Sign Up" OnClick="btn_signUp_Click" />
&nbsp;&nbsp;
    <asp:Button ID="btn_login" class="btn btn-success" runat="server" Text="Login" OnClick="btn_login_Click" />
&nbsp;
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="projectid" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
            Width="100%" CssClass="mygrdContent" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" 
            AllowPaging="True">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="projectid" HeaderText="Project ID" InsertVisible="False" ReadOnly="True" SortExpression="projectid" />
                <asp:BoundField DataField="ProjectName" HeaderText="Project Name" SortExpression="ProjectName" />
                <asp:BoundField DataField="ProjectManager" HeaderText="Project Manager" SortExpression="ProjectManager" />
                <asp:BoundField DataField="OrgName" HeaderText="Organization" SortExpression="OrgName" />
                <asp:BoundField DataField="Skills" HeaderText="Preferred Skills" SortExpression="Skills" />
                <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CommunityESwapConnectionString %>" DeleteCommand="DELETE FROM [ProjectsTable] WHERE [projectid] = @projectid" InsertCommand="INSERT INTO [ProjectsTable] ([ProjectName], [OrgName], [PostedDate], [Duration], [Skills]) VALUES (@ProjectName, @OrgName, @PostedDate, @Duration, @Skills)" SelectCommand="SELECT [projectid], [ProjectName], [ProjectManager], [OrgName], [Skills], [Duration] FROM [ProjectsTable] WHERE (([ProjectName] LIKE '%' + @ProjectName + '%') OR ([Skills] LIKE '%' + @Skills + '%'))" UpdateCommand="UPDATE [ProjectsTable] SET [ProjectName] = @ProjectName, [OrgName] = @OrgName, [PostedDate] = @PostedDate, [Duration] = @Duration, [Skills] = @Skills WHERE [projectid] = @projectid">
            <DeleteParameters>
                <asp:Parameter Name="projectid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProjectName" Type="String" />
                <asp:Parameter Name="OrgName" Type="String" />
                <asp:Parameter DbType="Date" Name="PostedDate" />
                <asp:Parameter Name="Duration" Type="String" />
                <asp:Parameter Name="Skills" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter DefaultValue="  " Name="ProjectName" SessionField="search" Type="String" />
                <asp:SessionParameter DefaultValue=" " Name="Skills" SessionField="search" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProjectName" Type="String" />
                <asp:Parameter Name="OrgName" Type="String" />
                <asp:Parameter DbType="Date" Name="PostedDate" />
                <asp:Parameter Name="Duration" Type="String" />
                <asp:Parameter Name="Skills" Type="String" />
                <asp:Parameter Name="projectid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

</asp:Content>
