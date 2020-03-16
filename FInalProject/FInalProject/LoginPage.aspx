<%@ Page Title="" Language="C#" MasterPageFile="~/Landing.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="FInalProject.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div style="text-align:right">
      
    <asp:Button ID="btn_signUp" class="btn btn-success" runat="server" Text="Sign Up" OnClick="btn_signUp_Click" />
&nbsp;&nbsp;

    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />

        Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbemail" runat="server"></asp:TextBox>
        <br />
        <br />
        Password:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbpwd" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
        <br />

</asp:Content>
