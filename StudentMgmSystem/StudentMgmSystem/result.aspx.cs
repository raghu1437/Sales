using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class result : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("branchrslt.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    
    SqlCommand cmd;
    SqlConnection cn;
    SqlDataReader dr;
    string q;
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        bing();

    }

    private void bing()
    {
        q = "select * from mresult where enrolmentno='" + TextBox3.Text + "' and batchid='" + TextBox2.Text + "'";
        cn = new SqlConnection(@"Data Source=HYRDCND5340CD1\SQL2014;Initial Catalog=inst_mgmt_sys;User ID=HRnet;Password=pword;Pooling=true;Min Pool Size=10;Max Pool Size=1000");
        cn.Open();
        cmd = new SqlCommand(q, cn);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
    }
}
