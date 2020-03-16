<%@ Page Title="" Language="C#" MasterPageFile="~/OrganizationSide/Organization.Master" AutoEventWireup="true" CodeBehind="OrgEditProj.aspx.cs" Inherits="FInalProject.WebForm11" %>
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
    <br />
    <br />
 <h2>Update Project</h2>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    </p>

    <table style="margin-right: 0px">
            <tr>
                <td style="width: 262px">
                    <asp:Label ID="lblProjName" runat="server" Text="Project Name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbPName" runat="server"></asp:TextBox>
                &nbsp;&nbsp;
                  
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbPName" ErrorMessage="Required"></asp:RequiredFieldValidator>
                  
                </td>
            </tr>
            <tr>
                <td style="width: 262px">
                    <asp:Label ID="lblProjManager" runat="server" Text="Project Manager: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbPMngr" runat="server"></asp:TextBox>
                &nbsp;&nbsp;
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbPMngr" ErrorMessage="Required"></asp:RequiredFieldValidator>
                   
                </td>
            </tr>
            <tr>
                <td style="width: 262px">
                    <asp:Label ID="Label1" runat="server" Text="Organization Name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbOrgName" runat="server"></asp:TextBox>
                &nbsp;&nbsp;
                  
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbOrgName" ErrorMessage="Required"></asp:RequiredFieldValidator>
                  
                </td>
            </tr>
            <tr>
                <td style="width: 262px">
                    <asp:Label ID="lbDesc" runat="server" Text="Description:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbDesc" runat="server" Height="158px" Width="630px" TextMode="MultiLine"></asp:TextBox>
                &nbsp;
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbDesc" ErrorMessage="Required"></asp:RequiredFieldValidator>
                   
                </td>
            </tr>
            <tr>
                <td style="width: 262px">
                    Swap (Compensation):</td>
                <td>
                    <asp:CheckBox ID="cbAssets" runat="server" Text="Swap Assets (i.e. Free Venue, Provide goods Instruments, Use of Vehicle, etc.):" />
&nbsp;&nbsp;
                    <asp:TextBox ID="tbAsset" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:CheckBox ID="cbBudget" runat="server" Text="Monetary Budget:" />
&nbsp;<asp:TextBox ID="tbBudget" runat="server"></asp:TextBox>
                    <br />
                </td>
            </tr>
             <tr>
                <td style="width: 262px">
                    <asp:Label ID="lbLocation" runat="server" Text="Location:"></asp:Label>
                 </td>
                <td>
                    <asp:TextBox ID="tbLoc" runat="server"></asp:TextBox>
                 &nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tbLoc" ErrorMessage="Required"></asp:RequiredFieldValidator>
                 </td>
            </tr>
             <tr>
                <td style="width: 262px">
                    <asp:Label ID="lbWeb" runat="server" Text="Website:"></asp:Label>
                 </td>
                <td>
                    <asp:TextBox ID="tbWeb" runat="server"></asp:TextBox>
                 &nbsp;&nbsp;
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tbWeb" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    
                 </td>
            </tr>
            <tr>
                <td style="width: 262px">
                    <asp:Label ID="lbSkills" runat="server" Text="Skills"></asp:Label>
                </td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxListSkills" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" Width="991px" CausesValidation="True">
                        <asp:ListItem>Big Data Analysis</asp:ListItem>
                        <asp:ListItem>Database Design</asp:ListItem>
                        <asp:ListItem>Database Management</asp:ListItem>
                        <asp:ListItem>Programming</asp:ListItem>
                        <asp:ListItem>Hardware</asp:ListItem>
                        <asp:ListItem>Training</asp:ListItem>
                        <asp:ListItem>Information Technology</asp:ListItem>
                        <asp:ListItem>Network Administration</asp:ListItem>
                        <asp:ListItem>Network Security</asp:ListItem>
                        <asp:ListItem>Operating Systems</asp:ListItem>
                        <asp:ListItem>Servers</asp:ListItem>
                        <asp:ListItem>Technical Support</asp:ListItem>
                        <asp:ListItem>Troubleshooting</asp:ListItem>
                        <asp:ListItem>Project Management</asp:ListItem>
                        <asp:ListItem>Engineering</asp:ListItem>
                        <asp:ListItem>Digital Photography</asp:ListItem>
                        <asp:ListItem>Blogging</asp:ListItem>
                        <asp:ListItem>Search Engine Optimization</asp:ListItem>
                        <asp:ListItem>Marketing Software</asp:ListItem>
                        <asp:ListItem>Social Media Platform</asp:ListItem>
                        <asp:ListItem>Technical Writing</asp:ListItem>
                        <asp:ListItem>Research</asp:ListItem>
                        <asp:ListItem>Video Creation</asp:ListItem>
                        <asp:ListItem>Video Editing</asp:ListItem>
                        <asp:ListItem>Cloud</asp:ListItem>
                        <asp:ListItem>Telecommunications</asp:ListItem>
                        <asp:ListItem>Accounting software</asp:ListItem>
                        <asp:ListItem>Human Resource Software</asp:ListItem>
                        <asp:ListItem>Artificial Intelligence</asp:ListItem>
                        <asp:ListItem>Inventory Management</asp:ListItem>
                    </asp:CheckBoxList>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Other skills:"></asp:Label>
                    <br />
                    <asp:TextBox ID="tbOtherSkills" runat="server" CssClass="mr-0" Width="393px"></asp:TextBox>
                    &nbsp;&nbsp;
                   
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="At least 1 Skill Required" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                   
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 262px">
                    Duration:</td>
                <td>
                    <asp:TextBox ID="tbDuration" runat="server" CssClass="mr-0" Width="393px"></asp:TextBox>
                &nbsp;&nbsp;
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="tbDuration" ErrorMessage="Required"></asp:RequiredFieldValidator>
                   
                </td>
            </tr>
            <tr>
                <td style="width: 262px">&nbsp;</td>
                <td>
    <asp:Button ID="btnUpdateProject" class="btn btn-info" runat="server" Text="Update" OnClick="btnUpdateProject_Click" />
                </td>
            </tr>
             </table>

</asp:Content>
