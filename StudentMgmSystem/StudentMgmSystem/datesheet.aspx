<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Inherits="datesheet" Title="Untitled Page" CodeBehind="datesheet.aspx.cs" %>

<%@ Import Namespace="inst_mgmt" %>
<script runat="server">

    protected void Button3_Click(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label2.Visible = false;
        //Label10.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
        //Label7.Visible = false;
        //Label8.Visible = false;
        Button1.Visible = false;
        GridView1.Visible = true;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        mcourse d = new mcourse();
        d.course_id = TextBox2.Text;
        d.course_duration = TextBox6.Text;
        d.eligibility = TextBox1.Text;
        d.course_name = TextBox5.Text;
        mcourse.insert(d);
        mcourse.select();

    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        mdatesheet.select();

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 128%">
        <tr>
            <td align="center" style="width: 381px">
                <asp:Button ID="Button2" runat="server" Text="Add New Course"
                    OnClick="Button2_Click" />
            </td>
            <td align="center">
                <asp:Button ID="Button3" runat="server" Text="View Course"
                    OnClick="Button3_Click" />
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 381px">&nbsp;</td>
            <td align="left">&nbsp;</td>
        </tr>
        <tr>
            <td align="center" style="width: 381px">
                <asp:Label ID="Label5" runat="server" Text="Course ID"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox2" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 381px">
                <asp:Label ID="Label2" runat="server" Text="Course Name"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox5" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 381px">
                <asp:Label ID="Label3" runat="server" Text="Duration"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox6" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 381px">
                <asp:Label ID="Label4" runat="server" Text="Eligibility"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBox1" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>

    </table>
    <table style="width: 95%">
        <tr>
            <td style="width: 264px; height: 273px;" align="center">&nbsp;<asp:Button ID="Button1" runat="server" Text="SUBMIT" Width="120px"
                OnClick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;
               
                <br />
                <table align="center" style="width: 330%">
                    <tr>
                        <td align="center">
                            <asp:Label ID="Label1" runat="server" ForeColor="#FFCC66" Height="20px"
                                Text="Course" Width="50px"></asp:Label>
                        </td>
                    </tr>
                </table>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                    Height="295px" Width="867px" AllowPaging="True"
                    OnPageIndexChanging="GridView1_PageIndexChanging"
                    AutoGenerateEditButton="True" ForeColor="White" DataSourceID="objdash"
                    Visible="False">
                    <Columns>
                        <asp:BoundField HeaderText="Course ID" DataField="course_id" />
                        <asp:BoundField HeaderText="Course Name" DataField="course_name" />
                        <asp:BoundField HeaderText="Course Duration" DataField="course_duration" />
                        <asp:BoundField HeaderText="Eligibility" DataField="eligibility" />
                    </Columns>
                </asp:GridView>
                <asp:ObjectDataSource runat="server" ID="objdash" TypeName="mcourse" DataObjectTypeName="mcourse" SelectMethod="select" InsertMethod="insert" UpdateMethod="update"></asp:ObjectDataSource>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 264px" align="justify">&nbsp;</td>
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

