<%@ Page Title="" Language="C#" MasterPageFile="~/OrganizationSide/Organization.Master" AutoEventWireup="true" CodeBehind="OrgShowAllProj.aspx.cs" Inherits="FInalProject.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <asp:LinkButton ID="lbLogout" class="navbar-brand" runat="server" OnClick="lbLogout_Click">Log Out</asp:LinkButton>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
         <asp:LinkButton ID="lbProjects" CausesValidation="False" class="nav-link" runat="server" OnClick="lbProjects_Click">Projects</asp:LinkButton>
      </li>
      <li class="nav-item">
         <asp:LinkButton ID="lbStudents" CausesValidation="False" class="nav-link" runat="server" OnClick="lbStudents_Click">Students</asp:LinkButton>
      </li>
        
    </ul>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    Welcome</p>
<p>
    <asp:Button ID="btnAddProject" class="btn btn-info" runat="server" Text="+ New Project" OnClick="btnAddProject_Click" />
    </p>
    <p>
        <strong>Your Projects:</strong></p>
<p>
    <asp:GridView class="table table-striped" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="projectid"
        Width="100%" CssClass="mygrdContent" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" 
            AllowPaging="True">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="projectid" HeaderText="projectid" InsertVisible="False" ReadOnly="True" SortExpression="projectid" />
            <asp:BoundField DataField="ProjectName" HeaderText="ProjectName" SortExpression="ProjectName" />
            <asp:BoundField DataField="PostedDate" HeaderText="PostedDate" SortExpression="PostedDate" />
            <asp:BoundField DataField="AppCount" HeaderText="AppCount" SortExpression="AppCount" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CommunityESwapConnectionString %>" SelectCommand="SELECT [projectid], [ProjectName], [PostedDate], [AppCount] FROM [ProjectsTable] WHERE ([userid] = @userid) ORDER BY [PostedDate] DESC" DeleteCommand="DELETE FROM [ProjectsTable] WHERE [projectid] = @projectid" InsertCommand="INSERT INTO [ProjectsTable] ([ProjectName], [PostedDate], [AppCount]) VALUES (@ProjectName, @PostedDate, @AppCount)" UpdateCommand="UPDATE [ProjectsTable] SET [ProjectName] = @ProjectName, [PostedDate] = @PostedDate, [AppCount] = @AppCount WHERE [projectid] = @projectid">
        <DeleteParameters>
            <asp:Parameter Name="projectid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProjectName" Type="String" />
            <asp:Parameter DbType="Date" Name="PostedDate" />
            <asp:Parameter Name="AppCount" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="userid" SessionField="userid" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProjectName" Type="String" />
            <asp:Parameter DbType="Date" Name="PostedDate" />
            <asp:Parameter Name="AppCount" Type="Int32" />
            <asp:Parameter Name="projectid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<p>
    &nbsp;</p>
</asp:Content>
