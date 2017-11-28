using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class Admin_CustomerCardDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Count > 0)
        {
            if (Page.IsPostBack != true)
            {
                GetCardDetails(Convert.ToInt32(Request.QueryString["uid"].ToString()));
            }
        }
    }

    private void GetCardDetails(int uid)
    {
        da = new SqlDataAdapter("select tc.cardcheckid,tc.cardname,tc.cdate from tbl_cardtype tc inner join tbl_login tl on tl.uid=tc.uid where tc.uid=" + uid + " ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_ts");
        GridView1.DataSource = ds.Tables["tbl_ts"].DefaultView;
        GridView1.DataBind();
    }


    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GetCardDetails(Convert.ToInt32(Request.QueryString["uid"].ToString()));

    }
}
