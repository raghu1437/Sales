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

public partial class internal1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=HYRDCND5340CD1\SQL2014;Initial Catalog=inst_mgmt_sys;User ID=HRnet;Password=pword;Pooling=true;Min Pool Size=10;Max Pool Size=1000");
    private static Random random;
    private static object syncObj = new object();
    private static void InitRandomNumber(int seed)
    {
        random = new Random(seed);
    }
    private static int GenerateRandomNumber(int max)
    {
        lock (syncObj)
        {
            if (random == null)
                random = new Random(); // Or exception...
            return random.Next(max);
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["usertype"].ToString() == "admin")
        {
            HyperLink2.Visible = false;
            HyperLink1.Visible = true;
        }

        if (!IsPostBack)
        {
            BindStudents(con);
            marksint.select();
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
            Label7.Visible = false;
            //Label8.Visible = false;
            ddlCourses.Visible = false;
            ddlStudentId.Visible = false;
            //TextBox7.Visible = false;
            TextBox6.Visible = false;
            TextBox5.Visible = false;
            TextBox4.Visible = false;
            TextBox3.Visible = false;
            //TextBox2.Visible = false;
            //TextBox1.Visible = false;
            GridView1.Visible = false;
            Button1.Visible = false;
            Button2.Visible = false;
            TextBox6.Text = "";
            TextBox5.Text = "";
            TextBox4.Text = "";
            TextBox3.Text = "";
        }
        else
        {

        }
           
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        marksint m = new marksint();
        
        m.srno = GenerateRandomNumber(1000).ToString();
        m.rollno = ddlStudentId.SelectedValue;
        m.subject = ddlCourses.SelectedValue;
        m.sessional1 = TextBox3.Text;
        m.sessional2 = TextBox4.Text;
        m.attendance = TextBox5.Text;
        m.assignments = TextBox6.Text;
        m.total = Convert.ToString(Convert.ToInt32(TextBox3.Text) + Convert.ToInt32(TextBox4.Text) +
            Convert.ToInt32(TextBox5.Text) + Convert.ToInt32(TextBox6.Text)); ;
        marksint.insert(m);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        ddlCourses.Visible = true;
        ddlStudentId.Visible = true;
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        //TextBox8.Text = "";
        //TextBox7.Text = "";

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Label2.Visible = true;
        Label3.Visible = true;
        Label4.Visible = true;
        Label5.Visible = true;
        Label6.Visible = true;
        Label7.Visible = true;
        //Label8.Visible = true;
        ddlCourses.Visible = true;
        ddlStudentId.Visible = true;
        //TextBox7.Visible = true;
        TextBox6.Visible = true;
        TextBox5.Visible = true;
        TextBox4.Visible = true;
        TextBox3.Visible = true;
        //TextBox2.Visible = true;
        //TextBox1.Visible = true;
        GridView1.Visible = false;
        Button1.Visible = true;
        Button2.Visible = true;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Label2.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
        Label6.Visible = false;
        Label7.Visible = false;
        //Label8.Visible = false;
        ddlCourses.Visible = false;
        ddlStudentId.Visible = false;
        //TextBox7.Visible = false;
        TextBox6.Visible = false;
        TextBox5.Visible = false;
        TextBox4.Visible = false;
        TextBox3.Visible = false;
        //TextBox2.Visible =false;
        //TextBox1.Visible =false;
        GridView1.Visible = true;
        Button1.Visible = false;
        Button2.Visible = false;
    }

    private void BindCourses(SqlConnection con)
    {
        mstudent s = mstudent.selectStudent(ddlStudentId.SelectedValue).FirstOrDefault();         
        string com = "Select * from mcourses where course_id="+"'"+s.courseid+"'";
        SqlDataAdapter adpt = new SqlDataAdapter(com, con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        ddlCourses.DataSource = dt;
        ddlCourses.DataBind();
        ddlCourses.DataTextField = "course_name";
        ddlCourses.DataValueField = "course_id";
        ddlCourses.DataBind();
    }
    private void BindStudents(SqlConnection con)
    {
        string com = "Select * from mstudent";
        SqlDataAdapter adpt = new SqlDataAdapter(com, con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        ddlStudentId.DataSource = dt;
        ddlStudentId.DataBind();
        ddlStudentId.DataTextField = "firstname";
        ddlStudentId.DataValueField = "enrolmentno";
        ddlStudentId.DataBind();
    }

    protected void ddlStudentId_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindCourses(con);

    }
}
