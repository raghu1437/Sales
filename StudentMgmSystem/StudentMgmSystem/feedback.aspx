<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Inherits="feedback" Title="" CodeBehind="feedback.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    <table style="width: 100%">
        <tr>
            <td align="center">HAVE ANY QUERY....PLEASE FEEL FREE TO FILL THE FEEDBACK FORM....</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width: 100%">
        <tr>
            <td style="width: 461px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td align="center" style="width: 461px">Name</td>
            <td align="left">
                <asp:TextBox ID="TextBox1" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 461px">Contact No</td>
            <td align="left">
                <asp:TextBox ID="TextBox2" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 461px">Mail Id</td>
            <td align="left">
                <asp:TextBox ID="TextBox3" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 461px">Feedback</td>
            <td align="left">
                <asp:TextBox ID="TextBox6" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 461px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td align="center" style="width: 461px">
                <asp:Button ID="Button1" runat="server" Text="SUBMIT" Width="170px"
                    OnClick="Button1_Click" />
            </td>
            <td align="center">
                <asp:Button ID="Button2" runat="server" Text="CANCEL" Width="170px"
                    OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
    <%--<table style="width: 100%">
        <tr>
            <td align="center">&nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:DetailsView ID="dview1" runat="server" DataSourceID="objfeed"
                    AllowPaging="True" AutoGenerateColumns="False" AutoGenerateEditButton="False"
                    ForeColor="White" OnPageIndexChanging="dview1_PageIndexChanging"
                    Width="554px">
                    <Fields>
                        <asp:BoundField HeaderText="Name" DataField="name" SortExpression="name" ReadOnly="true" />
                        <asp:BoundField HeaderText="Contact No" DataField="name" SortExpression="name" ReadOnly="true" />
                        <asp:BoundField HeaderText="Mail Id" DataField="email" SortExpression="email" ReadOnly="true" />
                        <asp:BoundField HeaderText="Feedback" DataField="feedback1" SortExpression="feedback1" ReadOnly="true" />
                        
                    </Fields>
                </asp:DetailsView>
                <asp:ObjectDataSource runat="server" ID="objfeed" TypeName="feedback" DataObjectTypeName="feedback" SelectMethod="select" UpdateMethod="update" InsertMethod="insert"></asp:ObjectDataSource>
            </td>
        </tr>
    </table>--%>
    <asp:Label ID="lblNotify" runat="server" Visible="false"></asp:Label>
    <table>
        <tr>
            <td style="width: 496px" align="center">
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/home.aspx">Back to Home Page</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

