<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="StudentResult.aspx.cs" Inherits="StudentMgmSystem.StudentResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                    AutoGenerateEditButton="True" DataSourceID="objmarksint"
                    ForeColor="White">
                    <Columns>
                        <asp:BoundField HeaderText="Student Id" DataField="rollno" ReadOnly="true" />
                        <asp:BoundField HeaderText="Course" DataField="subject" />
                        <asp:BoundField HeaderText="Sessional 1" DataField="sessional1" />
                        <asp:BoundField HeaderText="Sessional 2" DataField="sessional2" />
                        <asp:BoundField HeaderText="Attendance" DataField="attendance" />
                        <asp:BoundField HeaderText="Assignments" DataField="assignments" />
                        <asp:BoundField HeaderText="Total Marks" DataField="total" />
                    </Columns>
                </asp:GridView>
                <asp:ObjectDataSource runat="server" ID="objmarksint" TypeName="marksint" DataObjectTypeName="marksint" SelectMethod="selectStudentResult" InsertMethod="insert" UpdateMethod="update">
                    <SelectParameters>
                        <asp:SessionParameter Name="enrollmentNo" SessionField="user" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
    </table>
     <table>
        <tr>
            <td style="width: 496px" align="center">
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/studenthome.aspx">Back to Student Home</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table> 
</asp:Content>
