using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace FInalProject
{
    public partial class WebForm2 : System.Web.UI.Page
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

            int projectid = Convert.ToInt32(Session["projectid"]);
            pid.Text = " "+ projectid;
            DataSet1 ds = new DataSet1();
            DataSet1TableAdapters.ProjectsTableTableAdapter taProjects =
                new DataSet1TableAdapters.ProjectsTableTableAdapter();
            taProjects.Fill(ds.ProjectsTable);

            DataTable table = ds.Tables["ProjectsTable"];
            string expression = "projectid = " + projectid;
            DataRow[] foundRows;
            foundRows = table.Select(expression);
            for (int i = 0; i < foundRows.Length; i++)
            {
                pid.Text = "" + foundRows[i][0];
                ptitle.Text = "" + foundRows[i][1];
                pmn.Text = "" + foundRows[i][2];
                pdesc.Text = "" + foundRows[i][5];
                ploc.Text = "" + foundRows[i][6];
                pskills.Text = "" + foundRows[i][9];
                papps.Text = "" + foundRows[i][7];
                pdur.Text = "" + foundRows[i][10];
                passets.Text = "" + foundRows[i][12];
                pdate.Text = "" + foundRows[i][4];

            }
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session["student"] = null;
            Session["user"] = null;
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