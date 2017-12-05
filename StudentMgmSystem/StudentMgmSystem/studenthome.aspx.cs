using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentMgmSystem
{
    public partial class studenthome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dvstuProf.Visible = true;

        }

        protected void lnkStudentProf_Click(object sender, EventArgs e)
        {
            dvstuProf.Visible = true;
        }
    }
}