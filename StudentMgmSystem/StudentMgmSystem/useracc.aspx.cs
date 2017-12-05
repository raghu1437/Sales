using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class useracc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblNotify.Visible = false;
        if (Session["usertype"].ToString() == "admin")
        {
            HyperLink2.Visible = false;
            HyperLink1.Visible = true;
        }


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int value;
        decimal comtact;
        if (TextBox1.Text.Length==7 && int.TryParse(TextBox1.Text,out value))
        {
            if (TextBox19.Text.Length == 10 && decimal.TryParse(TextBox19.Text, out comtact))
            {
                mstudent m = new mstudent();
                m.enrolmentno = TextBox1.Text;
                m.firstname = TextBox2.Text;
                m.lastname = TextBox3.Text;
                m.courseid = "";
                m.referenceno = "";
                m.address1 = "";
                m.address2 = "";
                m.address3 = "";
                m.city = "";
                m.pin = "";
                m.state = "";
                m.email = "";
                m.dob = "";
                m.fathername = "";
                m.mothername = "";
                m.category = "";
                m.gender = "";
                m.phone = TextBox19.Text;
                mstudent.insert(m);
                //mpassword k = new mpassword();
                //k.username = TextBox1.Text;
                //k.password = TextBox2.Text;
                //k.usertype = "student";
                //mpassword.insert(k);

                string query = @"INSERT INTO [dbo].[mpasswords]
           ([usertype]
           ,[username]
           ,[password]
           ,[enrollmentno])
     VALUES
           (@usertype
           ,@username
           ,@password
           ,@enrollmentno)";
                SqlConnection con = new SqlConnection(@"Data Source=HYRDCND5340CD1\SQL2014;Initial Catalog=inst_mgmt_sys;User ID=HRnet;Password=pword;Pooling=true;Min Pool Size=10;Max Pool Size=1000");
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                string guid1 = Guid.NewGuid().ToString();
                cmd.Parameters.AddWithValue("@usertype", ddlUsertype.SelectedValue);
                cmd.Parameters.AddWithValue("@username", TextBox1.Text);
                cmd.Parameters.AddWithValue("@password", TextBox4.Text);
                cmd.Parameters.AddWithValue("@enrollmentno", TextBox1.Text);
                con.Open();
                int s1 = cmd.ExecuteNonQuery();
                con.Close();
                if (s1 > 0)
                {
                    lblNotify.Text = "User Registered successfully.";
                    lblNotify.Visible = true;
                    TextBox1.Text = "";
                    TextBox19.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";

                }
            }
            else
            {
                lblNotify.Text = "Please enter 10 digit contact number.";
                lblNotify.Visible = true;
            }
        }
        else
        {
            lblNotify.Text = "Please enter 7 digit student id number.";
            lblNotify.Visible = true;
        }



    }
}
