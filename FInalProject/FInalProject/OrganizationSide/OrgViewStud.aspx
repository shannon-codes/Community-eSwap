<%@ Page Title="" Language="C#" MasterPageFile="~/OrganizationSide/Organization.Master" AutoEventWireup="true" CodeBehind="OrgViewStud.aspx.cs" Inherits="FInalProject.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ApplicationId" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ApplicationId" HeaderText="ApplicationId" InsertVisible="False" ReadOnly="True" SortExpression="ApplicationId" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Skills" HeaderText="Skills" SortExpression="Skills" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="LevelOfExperience" HeaderText="LevelOfExperience" SortExpression="LevelOfExperience" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CommunityESwapConnectionString %>" SelectCommand="SELECT [ApplicationId], [FirstName], [LastName], [Skills], [Email], [LevelOfExperience] FROM [Application]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
    <br />
</asp:Content>
