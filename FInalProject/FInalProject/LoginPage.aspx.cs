using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FInalProject
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["student"] = null;
            Session["user"] = null;
            if (Session["message"] != null)
            {
                Label2.Visible = true;
                Label2.Text = Session["message"].ToString();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = tbemail.Text;
            string pwd = tbpwd.Text;

            DataSet1 ds = new DataSet1();
            DataSet1TableAdapters.UsersTableTableAdapter taUser = 
                new DataSet1TableAdapters.UsersTableTableAdapter();
            taUser.Fill(ds.UsersTable);
            DataRow[] dr = ds.UsersTable.Select("Email='" + email + "'");
            Users user = new Users();
            if (dr.Count()== 0)
            {
                Label1.Visible = true;
                Label1.Text = "User Doesnt exists!! Sign Up first";
            }
            else if ((string)(dr[0]["Password"]) != pwd)
            {
                Label1.Visible = true;
                Label1.Text = "Invalid Password !!!!";
            }
            else if((string)(dr[0]["UserType"])=="Employer")
            {
                user.FirstName = (string)dr[0]["FirstName"];
                user.LastName = (string)dr[0]["LastName"];
                user.Password = (string)dr[0]["Password"];
                user.userid = (int)dr[0]["userid"];
                user.UserType = (string)dr[0]["UserType"];
               // if ((string)dr[0]["Skillset"] != null)
                //{
              //      user.SkillSet = (string)dr[0]["Skillset"];
              //  }
                Session["user"] = user;
                Session["userid"] = user.userid;
                Response.Redirect("~/OrganizationSide/OrgShowAllProj.aspx");
            }
            else if ((string)(dr[0]["UserType"]) == "Student")
            {
                user.FirstName = (string)dr[0]["FirstName"];
                user.LastName = (string)dr[0]["LastName"];
                user.Password = (string)dr[0]["Password"];
                user.userid = (int)dr[0]["userid"];
                user.UserType = (string)dr[0]["UserType"];
                Session["student"] = user;
                Session["message"] = null;
                Response.Redirect("~/Index.aspx");
            }
        }

        //protected void btn_logout_Click(object sender, EventArgs e)
        //{
        //    Session["student"] = null;
        //    Session["user"] = null;
        //    Response.Redirect("~/WebForm1.aspx");
        //}

        protected void btn_signUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

       //protected void btn_login_Click(object sender, EventArgs e)
       // {
       //     Response.Redirect("LoginPage.aspx");
       // }
    }
}