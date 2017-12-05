using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentMgmSystem
{
    public partial class EnrollStudentsToCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usertype"].ToString() == "admin")
            {
                HyperLink2.Visible = false;
                HyperLink1.Visible = true;
            }
            SqlConnection con = new SqlConnection(@"Data Source=HYRDCND5340CD1\SQL2014;Initial Catalog=inst_mgmt_sys;User ID=HRnet;Password=pword;Pooling=true;Min Pool Size=10;Max Pool Size=1000");
            if (!IsPostBack)
            {
                BindCourses(con);
                BindStudents(con);
            }
        }

        private void BindCourses(SqlConnection con)
        {
            string com = "Select * from mcourses";
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
            ddlStudents.DataSource = dt;
            ddlStudents.DataBind();
            ddlStudents.DataTextField = "firstname";
            ddlStudents.DataValueField = "enrolmentno";
            ddlStudents.DataBind();
        }

        protected void btnEnroll_Click(object sender, EventArgs e)
        {
            mstudent s = mstudent.selectStudent(ddlStudents.SelectedValue).FirstOrDefault();
            s.courseid = ddlCourses.SelectedValue;
            mstudent.update(s);
        }
    }
}