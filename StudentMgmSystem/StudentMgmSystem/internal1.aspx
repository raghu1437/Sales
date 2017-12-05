
<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Inherits="internal1" Title="Untitled Page" Codebehind="internal1.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="center">
                Welcome to Tests Page</td>
        </tr>
    </table>
    <table style="width: 100%">
        <tr>
            <td style="width: 496px">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 496px; height: 10px;">
                </td>
            <td style="height: 10px">
                </td>
        </tr>
        <tr>
            <td style="width: 496px" align="center">
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                    Text="New Test" Width="170px" />
            </td>
            <td align="center">
                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                    Text="View Results" Width="170px" />
            </td>
        </tr>
        <tr></tr>        
        <tr>
            <td align="center" style="width: 496px">
                <asp:Label ID="Label2" runat="server" Text="Select Student Id"></asp:Label>
            </td>
            <td align="left">
                <asp:DropDownList ID="ddlStudentId" runat="server" OnSelectedIndexChanged="ddlStudentId_SelectedIndexChanged"
                    AutoPostBack="True"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 496px; height: 25px">
                <asp:Label ID="Label3" runat="server" Text="Select Course"></asp:Label>
                
            </td>
            <td align="left" style="height: 25px">
                <asp:DropDownList ID="ddlCourses" runat="server"></asp:DropDownList>

            </td>
        </tr>
        <tr>
            <td align="center" style="width: 496px">
                <asp:Label ID="Label4" runat="server" Text="Marks(Sessionals)"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox3" runat="server" Width="220px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox3" ErrorMessage="Please enter Sessionals1 Marks" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td align="center" style="width: 496px">
                <asp:Label ID="Label5" runat="server" Text="Marks(Sessionals)"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox4" runat="server" Width="220px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox4" ErrorMessage="Please enter Sessionals2 Marks" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td align="center" style="width: 496px">
                <asp:Label ID="Label6" runat="server" Text="Marks(Attendance)"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox5" runat="server" Width="220px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="TextBox5" ErrorMessage="Please enter Attendance Marks" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td align="center" style="width: 496px">
                <asp:Label ID="Label7" runat="server" Text="Marks(Assignments)" ></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox6" runat="server" Width="220px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="TextBox6" ErrorMessage="Please enter Assignment Marks" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
        </tr>        
        <tr>
            <td align="center" style="width: 496px">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" style="width: 496px">
                <asp:Button ID="Button1" runat="server" Text="Submit" Width="120px" 
                    onclick="Button1_Click" />
            </td>
            <td align="center">
                <asp:Button ID="Button2" runat="server" Text="Cancel" Width="120px" 
                    onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 496px">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
    </table>
    <table style="width: 100%">
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    AutoGenerateEditButton="True" DataSourceID="objmarksint" 
                    ForeColor="White" >
                <Columns>
                <asp:BoundField  HeaderText="Student Id" DataField="rollno" ReadOnly="true"/>
                <asp:BoundField  HeaderText="Course" DataField="subject"/>
                <asp:BoundField  HeaderText="Sessional 1" DataField="sessional1"/>
                <asp:BoundField  HeaderText="Sessional 2" DataField="sessional2"/>
                <asp:BoundField  HeaderText="Attendance" DataField="attendance"/>
                <asp:BoundField  HeaderText="Assignments" DataField="assignments"/>
                <asp:BoundField  HeaderText="Total Marks" DataField="total"/>
                </Columns>
                </asp:GridView>
                <asp:ObjectDataSource runat="server" ID="objmarksint" TypeName="marksint" DataObjectTypeName="marksint" SelectMethod="select" InsertMethod="insert" UpdateMethod="update"></asp:ObjectDataSource>
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td style="width: 496px" align="center">
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/facultyhome.aspx">Back to Faculty Page</asp:HyperLink>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin.aspx">Back to Admin Page</asp:HyperLink>
            
            </td>
            <td>&nbsp;</td>
        </tr>
    </table> 
</asp:Content>

