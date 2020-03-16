using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace FInalProject
{
    public partial class WebForm3 : System.Web.UI.Page
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            Session["projectid"] = row.Cells[1].Text;
            Response.Redirect("JobDesc.aspx");
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
           
            Session["user"] = null;
            Session["student"] = null;
            Response.Redirect("~/Index.aspx");
        }

        protected void btn_signUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Register.aspx");
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/LoginPage.aspx");
        }
    }
}