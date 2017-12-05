<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="StudentCoursesEnrolled.aspx.cs" Inherits="StudentMgmSystem.StudentCoursesEnrolled" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <p style="width: 847px">
        <asp:DetailsView ID="studentCourse" runat="server" AllowPaging="True"
             AutoGenerateRows="False" Height="50px"
            Width="293px" DataSourceID="objstu1">
            <Fields>
                <asp:BoundField HeaderText="Course Id"   DataField="course_id" SortExpression="course_id" ReadOnly="true"/>
                <asp:BoundField HeaderText="Course Name" DataField="course_name" SortExpression="course_name" ReadOnly="true"/>
                <asp:BoundField HeaderText="Duration" DataField="course_duration" SortExpression="course_duration" ReadOnly="true"/>
                <asp:BoundField HeaderText="Eligibility" DataField="eligibility" SortExpression="eligibility" ReadOnly="true"/>
            </Fields>
        </asp:DetailsView>
        <asp:ObjectDataSource runat="server" ID="objstu1" TypeName="mcourse" DataObjectTypeName="mcourse" SelectMethod="selectCourse" InsertMethod="insert" UpdateMethod="update">
            <SelectParameters>
                <asp:SessionParameter Name="courseId" SessionField="course" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </p>
    <table>
        <tr>
            <td style="width: 496px" align="center">
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/studenthome.aspx">Back to Student Home</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table> 
</asp:Content>
