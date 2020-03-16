using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FInalProject
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if((Session["user"] == null) || (Session["student"] == null))
            {
                btn_login.Visible = true;
                btn_logout.Visible = false;
            }
            

        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            DataSet1 ds = new DataSet1();
            DataSet1TableAdapters.UsersTableTableAdapter taUsers =
                new DataSet1TableAdapters.UsersTableTableAdapter();
            taUsers.Fill(ds.UsersTable);
            DataSet1.UsersTableRow urow = ds.UsersTable.NewUsersTableRow();

            Users user = new Users();
            string session = "";
            
            user.FirstName = tbfname.Text;
            user.LastName = tblname.Text;
            user.Email = tbemail.Text;
            user.Password = tbcpwd.Text;
            user.SkillSet = tbskills.Text;

            if (rbemp.Checked)
            {
                user.UserType = rbemp.Text;
                session = "user";
            }
            else 
            {
                
                user.UserType = rbstu.Text;
                session = "student";
            }
            
            urow.FirstName = user.FirstName;
            urow.LastName = user.LastName;
            urow.Email = user.Email;
            urow.Password = user.Password;
            urow.UserType = user.UserType;
            urow.Skillset = user.SkillSet;
            
            ds.UsersTable.Rows.Add(urow);
            taUsers.Update(ds.UsersTable);
            Session["message"] = "Registration successful. Proceed to log in.";
            Response.Redirect("LoginPage.aspx");
        }

        protected void rbstu_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Session["student"] = null;
            Response.Redirect("Index.aspx");


        }

        protected void btn_signUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}