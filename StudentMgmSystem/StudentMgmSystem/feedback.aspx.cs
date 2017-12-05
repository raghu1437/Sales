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

public partial class feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Page.Title = "Feedback";
        //dview1.Visible = true;
        lblNotify.Visible = false;
    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";        
        TextBox6.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        feedback f = new feedback();
        f.name = TextBox1.Text;
        f.phone = TextBox2.Text;
        f.email = TextBox3.Text;
        f.address = "";
        f.city = "";
        f.feedback1 = TextBox6.Text;
        feedback.insert(f);
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox6.Text = "";
        lblNotify.Text = "Thanks for your feedback";
        lblNotify.Visible = true;
        
    }

    protected void dview1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {
        //dview1.PageIndex = e.NewPageIndex;
        feedback.select();
    }
}
