using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HW3.Noorkhzaimiah
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlDataSource1.InsertParameters["firstname"].DefaultValue = TextBox1.Text;
                SqlDataSource1.InsertParameters["lastname"].DefaultValue = TextBox2.Text;
                SqlDataSource1.InsertParameters["phoneno"].DefaultValue = TextBox3.Text;
                SqlDataSource1.InsertParameters["email"].DefaultValue = TextBox4.Text;
                SqlDataSource1.InsertParameters["password"].DefaultValue = TextBox5.Text;
                SqlDataSource1.Insert();
                Label1.Text = " Inserted successfully !!";
            }
            catch (Exception exxx)
            {
                Label1.Text = exxx.Message;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("login.aspx");
        }
    }
}