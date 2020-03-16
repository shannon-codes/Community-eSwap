<%@ Page Title="" Language="C#" MasterPageFile="~/Landing.Master" AutoEventWireup="true" CodeBehind="Application.aspx.cs" Inherits="FInalProject.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div style="text-align:right">
        <asp:Button class="btn btn-success" ID="btn_logout" runat="server" Text="Logout" OnClick="btn_logout_Click" />&nbsp;&nbsp;
    &nbsp;&nbsp;
    &nbsp;
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Please fill out application form"></asp:Label>
    </p>
    <p>
        <table>
            <tr>
                <td>
                    <asp:Label ID="lblProjName" runat="server" Text="First Name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbFname" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbFname" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblProjManager" runat="server" Text="Last Name: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbLname" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbLname" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Email:</td>
                <td>
                    <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="tbEmail" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Project ID:</td>
                <td>
                    <asp:TextBox ID="tbProjectId" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbProjectId" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Organization Name:</td>
                <td>
                    <asp:TextBox ID="tbOrgName" runat="server"></asp:TextBox>
&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tbOrgName" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbDesc" runat="server" Text="Previous Projects:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbPProject" runat="server" Height="158px" TextMode="MultiLine" Width="630px"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbPProject" ErrorMessage="Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Swap (Compensation):</td>
                <td>
                    <asp:CheckBox ID="cbAssets" runat="server" OnCheckedChanged="cbAssets_CheckedChanged" Text="Assets (i.e. Free Venue, Provide goods Instruments, Use of Vehicle, etc.):" />
                    &nbsp;&nbsp;
                    <asp:TextBox ID="tbAsset" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:CheckBox ID="cbBudget" runat="server" Text="Monetary:" />
                    &nbsp;<asp:TextBox ID="tbBudget" runat="server"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbSkills" runat="server" Text="Skills"></asp:Label>
                </td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList2" runat="server" CausesValidation="True" RepeatColumns="4" RepeatDirection="Horizontal" Width="991px">
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
                </td>
            </tr>
            <tr>
                <td>Level of Experience:</td>
                <td>
                    <asp:TextBox ID="tbLOE" runat="server" CssClass="mr-0" Width="393px"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tbLOE" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnAddPr" runat="server" class="btn btn-info" OnClick="btnAddProject_Click" Text="Submit" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
