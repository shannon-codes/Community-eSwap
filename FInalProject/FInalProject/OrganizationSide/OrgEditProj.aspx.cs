using FinalProject;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FInalProject
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        Users user;
        Project project;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Server.Transfer("~/LoginPage.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    user = (Users)Session["user"];
                    project = (Project)Session["project"];
                    tbAsset.Text = project.CompensateAssets;
                    tbBudget.Text = project.CompensateAssets;
                    tbDesc.Text = project.Description;
                    tbDuration.Text = project.Duration;
                    tbLoc.Text = project.Location;
                    tbOrgName.Text = project.OrgName;
                    tbPMngr.Text = project.ProjectManager;
                    tbPName.Text = project.ProjectName;
                    tbWeb.Text = project.Website;
                    tbOtherSkills.Text = project.Skills;
                }
               
            }
        }

       

        protected void lbProjects_Click(object sender, EventArgs e)
        {
            Server.Transfer("OrgShowAllProj.aspx");
        }

        protected void lbStudents_Click(object sender, EventArgs e)
        {
            Server.Transfer("OrgShowStud.aspx");
        }

        protected void btnUpdateProject_Click(object sender, EventArgs e)
        {
            //string projName = tbPName.Text;
            //string projMngr = tbPMngr.Text;
            //string orgName = tbOrgName.Text;
            //string desc = tbDesc.Text;
            //string loc = tbLoc.Text;

            //string web = tbWeb.Text;
            //string dur = tbDuration.Text;
            //string skills = "";
            //for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            //{
            //    if (CheckBoxList1.Items[i].Selected)
            //    {
            //        skills += CheckBoxList1.Items[i].Text + " ";
            //    }
            //}
            //skills += tbSkills.Text;



            string compensateAssets = "";

            if (cbAssets.Checked)
            {
                compensateAssets += tbAsset.Text+" ";
            }
            if (cbBudget.Checked)
            {
                compensateAssets += tbBudget.Text;
            }


            //DataSet1TableAdapters.ProjectsTableTableAdapter taProjects = new DataSet1TableAdapters.ProjectsTableTableAdapter();

            //taProjects.Fill(ds1.ProjectsTable);

            //int selected = project.projectid;
            //DataRow[] dr = ds1.ProjectsTable.Select("projectid=" + selected);


            //////dr[0]["ProjectName"] = projName;
            //dr[0]["ProjectManager"] = projMngr;
            //dr[0]["OrgName"] = orgName;
            //dr[0]["Description"] = desc;
            //dr[0]["Location"] = loc;

            //dr[0]["Website"] = web;
            //dr[0]["Skills"] = skills;
            //dr[0]["Duration"] = dur;

            //taProjects.Update(ds1.ProjectsTable);

            string skills = "";
            for (int i = 0; i < CheckBoxListSkills.Items.Count; i++)
            {
                if (CheckBoxListSkills.Items[i].Selected)
                {
                    skills += CheckBoxListSkills.Items[i].Text + " ";
                }
            }
            skills += tbOtherSkills.Text;

            DataSet1 ds1 = new DataSet1();
            DataSet1TableAdapters.ProjectsTableTableAdapter taProjects =
                new DataSet1TableAdapters.ProjectsTableTableAdapter();

            taProjects.Fill(ds1.ProjectsTable);

            Project project = (Project)Session["project"];
            int selected = project.projectid;

            //int selected = Convert.ToInt32(session["project"]);
            DataRow[] dr = ds1.ProjectsTable.Select("projectid=" + selected);

            dr[0]["ProjectName"] = tbPName.Text;
            dr[0]["ProjectManager"] = tbPMngr.Text;
            dr[0]["OrgName"] = tbOrgName.Text;
            dr[0]["Description"] = tbDesc.Text;
            dr[0]["Location"] = tbLoc.Text;
            dr[0]["Website"] = tbWeb.Text;
            dr[0]["Skills"] = skills;
            dr[0]["Duration"] = tbDuration.Text;
            dr[0]["CompensateAssets"] = compensateAssets;

            taProjects.Update(ds1.ProjectsTable);
            Label3.Text = "Successfully Updated";
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = (CheckBoxListSkills.SelectedItem != null || (tbOtherSkills.Text != ""));
            if (!args.IsValid)
            {
                Session["ErrorMessage"] = "Skills cannot be empty";
                Server.Transfer("OrgAddProj.aspx");
            }
        }

        protected void lbLogout_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Session["userid"] = null;
            Session["message"] = "Successfully logged out.";
            Response.Redirect("~/LoginPage.aspx");
        }
    }
}