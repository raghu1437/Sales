<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Inherits="useracc" Title="Untitled Page" CodeBehind="useracc.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 960px; height: 528px;" align="left">
        <tr>
            <td style="width: 496px" align="center">Student/Faculty ID</td>
            <td align="left">
                <asp:TextBox ID="TextBox1" runat="server" Width="230px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="req1" ControlToValidate="TextBox1" ErrorMessage="Please enter a valid numeric value" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
                
            </td>
        </tr>
        <tr>
            <td style="width: 496px" align="center">
                <asp:Label ID="lblUserType" runat="server">User Type</asp:Label></td>
            <td>
                <asp:DropDownList ID="ddlUsertype" runat="server">
                    <asp:ListItem Text="Student" />
                    <asp:ListItem Text="Faculty" />
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 496px" align="center">First Name</td>
            <td align="left">
                <asp:TextBox ID="TextBox2" runat="server" Width="230px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox2" ErrorMessage="Please enter First Name" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 496px" align="center">Last Name</td>
            <td align="left">
                <asp:TextBox ID="TextBox3" runat="server" Width="230px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox3" ErrorMessage="Please enter Last Name" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td style="width: 496px" align="center">Contact No</td>
            <td align="left">
                <asp:TextBox ID="TextBox19" runat="server" Width="230px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox19" ErrorMessage="Please enter contact number" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
                
            </td>
        </tr>
        <tr>
            <td style="width: 496px" align="center">Password</td>
            <td align="left">
                <asp:TextBox ID="TextBox4" runat="server" Width="230px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox4" ErrorMessage="Please enter password" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td style="width: 496px" align="center">&nbsp;</td>
            <td align="left">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblNotify" runat="server" Visible="false" Font-Bold="true" Font-Size="Medium" ForeColor="#00ff00"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 496px" align="center">&nbsp;</td>
            <td align="left">
                <asp:Button ID="Button1" runat="server" Text="SUBMIT" Width="101px"
                    OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 496px">&nbsp;</td>
            <td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
         <tr>
            <td style="width: 496px" align="center">
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/facultyhome.aspx">Back to Faculty Page</asp:HyperLink>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin.aspx">Back to Admin Page</asp:HyperLink>
            
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

