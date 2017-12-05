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

public partial class Default5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataReader dr;
    string q;
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        q = "select * from mpasswords where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
        cn = new SqlConnection(@"Data Source=HYRDCND5340CD1\SQL2014;Initial Catalog=inst_mgmt_sys;User ID=HRnet;Password=pword;Pooling=true;Min Pool Size=10;Max Pool Size=1000");
        cn.Open();
        cmd = new SqlCommand(q, cn);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label2.Text = dr[0].ToString();
        }
        Session["user"] = dr[3].ToString();
        Session["usertype"] = Label2.Text;
        if (Label2.Text.ToLower() == "admin")
        { Response.Redirect("Admin.aspx"); }
        else
        {
            if (Label2.Text.ToLower() == "faculty")
            { Response.Redirect("facultyhome.aspx"); }
            else
            {
                if (Label2.Text.ToLower() == "student")
                { Response.Redirect("studenthome.aspx"); }
                else
                {
                    if (Label2.Text.ToLower() == "alumni")
                    { Response.Redirect("alumnihome.aspx"); }
                    else
                    { Response.Write("You are not a valid user."); }
                }
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}
