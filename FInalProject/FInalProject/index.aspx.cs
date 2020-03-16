using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace FInalProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["student"] != null)
            {
                btn_login.Visible = false;
                btn_signUp.Visible = false;
                
            }
            else
            {
                btn_login.Visible = true;
                btn_logout.Visible = false;
                btn_signUp.Visible = true;
            }
        }

        protected void btn_signUp_Click(object sender, EventArgs e)
        {
            Session["student"] = null;
            Response.Redirect("Register.aspx");
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }

      

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(tbsearch.Text== null)
            {
                Session["search"] = "";
                Response.Redirect("JobSearch.aspx");
            }
            Session["search"] = tbsearch.Text;
            Response.Redirect("StudentSide/JobSearch.aspx");
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Session["student"] = null;
            Response.Redirect("Index.aspx");
        }
    }
}
