<%@ Page Title="" Language="C#" MasterPageFile="~/OrganizationSide/Organization.Master" AutoEventWireup="true" CodeBehind="OrgViewProj.aspx.cs" Inherits="FInalProject.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Button ID="btnUpdate" class="btn btn-info" runat="server" Text="Update" OnClick="btnUpdate_Click" />&nbsp
        <asp:Button ID="btnDelete" class="btn btn-info" runat="server" Text="Delete" OnClick="btnDelete_Click" />
    </p>
    <h2>
        <asp:Label ID="Label1" runat="server" Text="View of Your Posted Project:"></asp:Label>
    </h2>
    <h2>Project Title:&nbsp;&nbsp;&nbsp;
        <asp:Label ID="ptitle" runat="server" Text="Label"></asp:Label>
    </h2>
    <strong>Date Posted:</strong>
    <asp:Label ID="pDate" runat="server" Text="Label"></asp:Label>
    <br />
    <strong>Project Id:</strong>&nbsp;
    <asp:Label ID="pid" runat="server" Text="Label"></asp:Label>
    <br />
    <strong>Organization Name:
    </strong>
    <asp:Label ID="porg" runat="server" Text="Label"></asp:Label>
    <br />
    <strong>Organization Website:
    </strong>
    <asp:Label ID="pweb" runat="server" Text="Label"></asp:Label>
    <br />
    <strong>Project Manager:&nbsp;
    </strong>
    <asp:Label ID="pmn" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <h3><b>Project Description</b></h3>
    <asp:Label ID="pdesc" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <h4><strong>Swap Assets or Compensation:</strong></h4>
    <asp:Label ID="pAssets" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <h4><b>Requested Skills:</b></h4>
    <asp:Label ID="pskills" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <strong>Duration:
    </strong>
    <asp:Label ID="pdur" runat="server" Text="Label"></asp:Label>
    <br />
    <strong>Location:
    </strong>
    <asp:Label ID="ploc" runat="server" Text="Label"></asp:Label>
    <br />
    <strong>Number of Applications Submitted:</strong>
    <asp:Label ID="papps" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
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
