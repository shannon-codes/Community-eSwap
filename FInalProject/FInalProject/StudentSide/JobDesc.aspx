<%@ Page Title="" Language="C#" MasterPageFile="~/Landing.Master" AutoEventWireup="true" CodeBehind="JobDesc.aspx.cs" Inherits="FInalProject.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div style="text-align:right">
        <asp:Button class="btn btn-success" ID="btn_logout" runat="server" Text="Logout" OnClick="btn_logout_Click" />&nbsp;&nbsp;
    <asp:Button ID="btn_signUp" class="btn btn-success" runat="server" Text="Sign Up" OnClick="btn_signUp_Click" />
&nbsp;&nbsp;
    <asp:Button ID="btn_login" class="btn btn-success" runat="server" Text="Login" OnClick="btn_login_Click" />
&nbsp;
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
        <h2>Project Title:&nbsp;&nbsp;&nbsp;
        <asp:Label ID="ptitle" runat="server" Text="Label"></asp:Label></h2>
        Project Id:&nbsp;
        <asp:Label ID="pid" runat="server" Text="Label"></asp:Label>
        <br />
        Organisation Name:
        <asp:Label ID="porg" runat="server" Text="Label"></asp:Label><br />
        Project Manager:&nbsp;
        <asp:Label ID="pmn" runat="server" Text="Label"></asp:Label>
        <br />
        Duration:
        <asp:Label ID="pdur" runat="server" Text="Label"></asp:Label>
        <br />
        Location:
        <asp:Label ID="ploc" runat="server" Text="Label"></asp:Label>
        <br />
        Applications submitted:
        <asp:Label ID="papps" runat="server" Text="Label"></asp:Label>
        <br />
        Posted Date:
        <asp:Label ID="pdate" runat="server" Text="Label"></asp:Label>
        <br />

    <h3><b>Project Description</b></h3>
        <asp:Label ID="pdesc" runat="server" Text="Label"></asp:Label>    
        <br />
        <br />
     <h3><b>Compensatation/Assets</b></h3>
        <p>
            <asp:Label ID="passets" runat="server" Text="Label"></asp:Label>
        </p>

    <h3><b>Top Skills</b></h3>
        <asp:Label ID="pskills" runat="server" Text="Label"></asp:Label>    
        <br />
        <br />
        <asp:Label ID="lblerror" runat="server" Text="Label"></asp:Label>
        <br />
    <br />

</asp:Content>
