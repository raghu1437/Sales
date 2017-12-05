<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Inherits="Default12" Title="Untitled Page" Codebehind="Default12.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="width: 847px">
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
            AutoGenerateEditButton="True" AutoGenerateRows="False" Height="50px" 
            onpageindexchanging="DetailsView1_PageIndexChanging" Width="293px" DataSourceID="objstu">
        <Fields>
                   <asp:BoundField HeaderText="Student Id" DataField="enrolmentno" ReadOnly="true"/>
                   <asp:BoundField HeaderText="First Name" DataField="firstname"/>
                   <asp:BoundField HeaderText="Last Name" DataField="lastname"/>
                   <asp:BoundField HeaderText="Course Id" DataField="courseid" ReadOnly="true"/>                   
                   <asp:BoundField HeaderText="Contact No" DataField="phone"/>                    
                    </Fields>
                    </asp:DetailsView>
                    <asp:ObjectDataSource runat="server" ID="objstu" TypeName="mstudent" DataObjectTypeName="mstudent" SelectMethod="select" InsertMethod="insert" UpdateMethod="update"></asp:ObjectDataSource>
    </p>
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

