<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="EnrollStudentsToCourse.aspx.cs" Inherits="StudentMgmSystem.EnrollStudentsToCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
        <tr>
            <td align="left" style="width: 187px; height: 223px">
                <asp:Image ID="Image1" runat="server" Height="218px" Width="243px"
                    ImageUrl="~/images/Schools-Education-Cartoonville-Teacher.jpg" />
            </td>
            <td align="left" style="height: 223px">
                <asp:Image ID="Image2" runat="server" Height="216px" Width="672px"
                    ImageUrl="~/images/teacher_banner.jpg" />
            </td>
        </tr>
        <tr>
            <td style="width: 187px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 187px"></td>
            <td align="center">Enroll Students to Courses</td>
        </tr>
        <tr>
            <td style="width: 200px;">
                <asp:Label ID="lblstudents" runat="server">Students</asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlStudents" runat="server"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 200px;">
                <asp:Label ID="Label1" runat="server">Courses</asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlCourses" runat="server"></asp:DropDownList>
            </td>
        </tr>
         <tr>
           
            <td>
                <asp:Button ID="btnEnroll" runat="server" Text="Enroll" Onclick="btnEnroll_Click"></asp:Button>
            </td>
        </tr>

    </table>
    <table>
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
