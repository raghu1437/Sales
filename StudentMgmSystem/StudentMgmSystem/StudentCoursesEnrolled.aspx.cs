using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentMgmSystem
{
    public partial class StudentCoursesEnrolled : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            mstudent s = mstudent.selectStudent(Session["user"].ToString()).FirstOrDefault();
            Session["course"] = s.courseid;
        }
    }
}