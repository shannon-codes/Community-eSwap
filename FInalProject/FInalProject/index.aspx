<%@ Page Title="" Language="C#" MasterPageFile="~/Landing.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="FInalProject.WebForm1" %>


<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <div style="text-align:right">
        <asp:Button class="btn btn-success" ID="btn_logout" runat="server" Text="Logout" OnClick="btn_logout_Click" />&nbsp;&nbsp;
    <asp:Button ID="btn_signUp" class="btn btn-success" runat="server" Text="Sign Up" OnClick="btn_signUp_Click" />
&nbsp;&nbsp;
    <asp:Button ID="btn_login" class="btn btn-success" runat="server" Text="Login" OnClick="btn_login_Click" />
&nbsp;
    </div>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
        <div id ="Login">
            <br />
            <asp:Label ID="Label1" runat="server" Text="Enter The Type of Project You Are Looking For"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tbsearch" runat="server" Width="146px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_search" runat="server" Text="Search Project" OnClick="Button1_Click" />
            <br />
            <br />
            <br />
        </div>
    </asp:Content>
