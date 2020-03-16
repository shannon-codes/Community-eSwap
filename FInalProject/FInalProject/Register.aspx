<%@ Page Title="" Language="C#" MasterPageFile="~/Landing.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FInalProject.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div style="text-align:right">
        <asp:Button class="btn btn-success" ID="btn_logout" runat="server" Text="Logout" OnClick="btn_logout_Click" CausesValidation="False" />&nbsp;&nbsp;
    <asp:Button ID="btn_signUp" class="btn btn-success" runat="server" Text="Sign Up" OnClick="btn_signUp_Click" CausesValidation="False" />
&nbsp;&nbsp;
    <asp:Button ID="btn_login" class="btn btn-success" runat="server" Text="Login" OnClick="btn_login_Click" CausesValidation="False" />
&nbsp;
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 800px; margin-bottom: 192px;">
        <tr>
            <td style="width: 131px">First Name:</td>
            <td style="width: 188px">
                <asp:TextBox ID="tbfname" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbfname" ErrorMessage="Cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td style="width: 131px">Last Name:</td>
            <td style="width: 188px">
                <asp:TextBox ID="tblname" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tblname" ErrorMessage="Cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 131px">Email:</td>
            <td style="width: 188px">
                <asp:TextBox ID="tbemail" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbemail" ErrorMessage="Cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Not a valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="tbemail"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 131px">Password:</td>
            <td style="width: 188px">
                <asp:TextBox ID="tbpwd" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbpwd" ErrorMessage="Cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td style="width: 131px; height: 29px;">Confirm Password:</td>
            <td style="width: 188px; height: 29px;">
                <asp:TextBox ID="tbcpwd" runat="server"></asp:TextBox>
            </td>
            <td style="height: 29px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tbcpwd" ErrorMessage="Cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbcpwd" ControlToValidate="tbpwd" ErrorMessage="Password dont match" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 131px; height: 26px">SkillSets</td>
            <td style="height: 26px; width: 188px;">
                <asp:TextBox ID="tbskills" runat="server"></asp:TextBox>
            </td>
            <td style="height: 26px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tbskills" ErrorMessage="Cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 131px; height: 26px">Account Type:</td>
            <td style="height: 26px; width: 188px;">
                <asp:RadioButton ID="rbstu" runat="server" GroupName="account" Text="Student" Checked="True" OnCheckedChanged="rbstu_CheckedChanged" AutoPostBack="True" />
&nbsp;<asp:RadioButton ID="rbemp" runat="server" GroupName="account" Text="Employer" AutoPostBack="True" />
            </td>
            <td style="height: 26px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 131px; height: 26px">&nbsp;</td>
            <td style="height: 26px; width: 188px;">
    <asp:Button ID="btnregister" runat="server" OnClick="btnregister_Click" Text="Register Now" />
            </td>
            <td style="height: 26px">
                &nbsp;</td>
        </tr>
    </table>
    </asp:Content>
