<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="studenthome.aspx.cs" Inherits="StudentMgmSystem.studenthome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
        <tr>
            <td align="left" style="width: 187px; height: 223px">
                <asp:Image ID="Image1" runat="server" Height="218px" Width="243px"
                    ImageUrl="~/images/Schools-Education-Cartoonville-Teacher.jpg" />
            </td>
            <td align="left" style="height: 223px">
                <asp:Image ID="Image2" runat="server" Height="216px" Width="672px"
                    ImageUrl="~/images/studentimage.jpg" />
            </td>
        </tr>
        <tr>
            <td style="width: 187px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 187px"></td>
            <td align="center">Welcome to Students Portal</td>
        </tr>
        <tr>
            <td style="width: 187px" align="center">
                <h3>Quick Links</h3>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 187px" align="center">
                <%--<asp:HyperLink ID="HyperLink1" runat="server"  >View 
                My Profile</asp:HyperLink>--%>
                <asp:LinkButton runat="server" ID="lnkStudentProf" OnClick="lnkStudentProf_Click">My Profile</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 187px" align="center">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/StudentCoursesEnrolled.aspx">View Courses</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 187px" align="center">
                <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/StudentResult.aspx">View Result</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>      
        
    </table>
    <p style="width: 847px">
        <asp:DetailsView ID="dvstuProf" runat="server" AllowPaging="True"
             AutoGenerateRows="False" Height="50px"
            Width="293px" DataSourceID="objstu1">
            <Fields>
                <asp:BoundField HeaderText="Student Id" DataField="enrolmentno" SortExpression="enrolmentno" ReadOnly="true"/>
                <asp:BoundField HeaderText="First Name" DataField="firstname" SortExpression="firstname" ReadOnly="true"/>
                <asp:BoundField HeaderText="Last Name" DataField="lastname" SortExpression="lastname" ReadOnly="true"/>
                <asp:BoundField HeaderText="Contact" DataField="phone" SortExpression="phone" ReadOnly="true"/>
            </Fields>
        </asp:DetailsView>
        <asp:ObjectDataSource runat="server" ID="objstu1" TypeName="mstudent" DataObjectTypeName="mstudent" SelectMethod="selectStudent" InsertMethod="insert" UpdateMethod="update">
            <SelectParameters>
                <asp:SessionParameter Name="enrollmentNo" SessionField="user" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </p>
</asp:Content>
