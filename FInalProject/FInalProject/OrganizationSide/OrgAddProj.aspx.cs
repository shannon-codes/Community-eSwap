using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FInalProject
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        Users user;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Server.Transfer("WebForm1.aspx");
            }
            else
            {
                user = (Users)Session["user"];
            }
            if (Session["ErrorMessage"] != null)
            {
                Label3.Visible = true;
                Label3.Text = (string)Session["ErrorMessage"];
                Session["ErrorMessage"] = null;
            }
        }

        protected void lbLogout_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Session["userid"] = null;
            Session["message"] = "Successfully logged out.";
            Response.Redirect("~/LoginPage.aspx");
        }

        protected void btnAddProject_Click(object sender, EventArgs e)
        {
            string projName = tbPName.Text;
            string projMngr = tbPMngr.Text;
            string orgName = tbOrgName.Text;
            DateTime today = DateTime.Now;
            string postedDate = today.ToString("MM/dd/yyyy");
            string desc = tbDesc.Text;
            string loc = tbLoc.Text;
            string appCount = "0";
            string web = tbWeb.Text;
            string dur = tbDuration.Text;
            string skills = "";
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    skills += CheckBoxList1.Items[i].Text + " ";
                }
            }
            skills += tbSkills.Text;



            string compensateAssets = "";

            if (cbAssets.Checked)
            {
                compensateAssets += tbAsset.Text;
            }
            if (cbBudget.Checked)
            {
                compensateAssets += tbBudget.Text;
            }



            string userid = user.userid.ToString();
            SqlConnection cn = new SqlConnection();
            try
            {
                cn.ConnectionString = "Server=(local);Database=CommunityESwap;Integrated Security = SSPI;";
                cn.Open();
                SqlDataAdapter da = new SqlDataAdapter("select * from ProjectsTable", cn);

                SqlCommand insert = new SqlCommand();
                insert.Connection = cn;
                insert.CommandType = System.Data.CommandType.Text;
                insert.CommandText = "INSERT INTO ProjectsTable Values(@ProjName,@ProjMgr,@OrgName,@PostDate,@Desc,@Loc,@AppCount,@Web,@Skills,@Duration,@userid,@CompensateAssets)";

                insert.Parameters.AddWithValue("@ProjName", projName);
                insert.Parameters.AddWithValue("@ProjMgr", projMngr);
                insert.Parameters.AddWithValue("@OrgName", orgName);
                insert.Parameters.AddWithValue("@PostDate", postedDate);
                insert.Parameters.AddWithValue("@Desc", desc);
                insert.Parameters.AddWithValue("@Loc", loc);
                insert.Parameters.AddWithValue("@AppCount", appCount);
                insert.Parameters.AddWithValue("@Web", web);
                insert.Parameters.AddWithValue("@Skills", skills);
                insert.Parameters.AddWithValue("@Duration", dur);
                insert.Parameters.AddWithValue("@userid", userid);
                insert.Parameters.AddWithValue("@CompensateAssets", compensateAssets);

                da.InsertCommand = insert;

                DataSet1 ds = new DataSet1();
                da.Fill(ds, "ProjectsTable");

                DataRow newRow = ds.Tables[0].NewRow();
                newRow["ProjectName"] = projName;
                newRow["ProjectManager"] = projMngr;
                newRow["OrgName"] = orgName;
                newRow["PostedDate"] = today;
                newRow["Description"] = desc;
                newRow["Location"] = loc;
                newRow["AppCount"] = appCount;
                newRow["Website"] = web;
                newRow["Skills"] = skills;
                newRow["Duration"] = dur;
                newRow["userid"] = user.userid;
                newRow["CompensateAssets"] = compensateAssets;
                ds.Tables[0].Rows.Add(newRow);
                da.Update(ds.Tables[0]);

                Label3.Visible = true;
                Label3.Text = "Successfully posted!";
                Server.Transfer("OrgShowAllProj.aspx");

            }
            catch (SqlException ex)
            {
                Label3.Visible = true;
                Label3.Text = ex.Message;
            }
            finally
            {
                cn.Close();
            }
        }

        protected void lbProjects_Click(object sender, EventArgs e)
        {
            Server.Transfer("OrgShowAllProj.aspx");
        }

        protected void lbStudents_Click(object sender, EventArgs e)
        {
            Server.Transfer("OrgViewStud.aspx");
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = (CheckBoxList1.SelectedItem != null || (tbSkills.Text != ""));
            if (!args.IsValid)
            {
                Session["ErrorMessage"] = "Skills cannot be empty";
                Server.Transfer("OrgAddProj.aspx");
            }
        }

       
    }
}