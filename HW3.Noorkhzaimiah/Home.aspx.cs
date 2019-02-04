using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HW3.Noorkhzaimiah
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
 
        protected void But2(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void But1(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}