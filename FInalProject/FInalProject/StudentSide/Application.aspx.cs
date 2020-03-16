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
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["student"] == null)
            {
                Response.Redirect("Index.aspx");
            }
        }

        protected void btnAddProject_Click(object sender, EventArgs e)
        {
            string firstName = tbFname.Text;
            string lastName = tbLname.Text;
            string email = tbEmail.Text;
            int projectId = Convert.ToInt32(Session["projectid"]);
            string orgName = tbOrgName.Text;
            string previousProject = tbPProject.Text;
            string preferredCompensate = "";

            if (cbAssets.Checked)
            {
                preferredCompensate += tbAsset.Text;
            }
            if (cbBudget.Checked)
            {
                preferredCompensate += tbBudget.Text;
            }

            string skills = "";
            for (int i = 0; i < CheckBoxList2.Items.Count; i++)
            {
                if (CheckBoxList2.Items[i].Selected)
                {
                    skills += CheckBoxList2.Items[i].Text + " ";
                }
            }
            string loe = tbLOE.Text;

            Users user = (Users)(Session["student"]);
            int userid = user.userid;

            SqlConnection cn = new SqlConnection();
            try
            {
                cn.ConnectionString = "Server=(local);Database=CommunityESwap;Integrated Security = SSPI;";
                cn.Open();
                SqlDataAdapter da = new SqlDataAdapter("select * from Application", cn);

                SqlCommand insert = new SqlCommand();
                insert.Connection = cn;
                insert.CommandType = System.Data.CommandType.Text;
                insert.CommandText = "INSERT INTO Application Values(@FirstName,@LastName,@Email,@projectId,@OrgName,@PreviousProjects,@PreferredCompensate,@LevelOfExperience)";

                insert.Parameters.AddWithValue("@FirstName", firstName);
                insert.Parameters.AddWithValue("@LastName", lastName);
                insert.Parameters.AddWithValue("@Email", email);
                insert.Parameters.AddWithValue("@projectId", projectId);
                insert.Parameters.AddWithValue("@OrgName", orgName);
                insert.Parameters.AddWithValue("@PreviousProjects", previousProject);
                insert.Parameters.AddWithValue("@PreferredCompensate", preferredCompensate);
                insert.Parameters.AddWithValue("@LevelOfExperience", loe);

                da.InsertCommand = insert;

                DataSet1 ds = new DataSet1();
                da.Fill(ds, "Application");

                DataRow newRow = ds.Tables[0].NewRow();
                newRow["FirstName"] = firstName;
                newRow["LastName"] = lastName;
                newRow["Email"] = email;
                newRow["projectId"] = projectId;
                newRow["OrgName"] = orgName;
                //newRow["PreviousProjects"] = previousProject;
                newRow["PreferredCompensate"] = preferredCompensate;
                newRow["LevelOfExperience"] = loe;
                ds.Tables[0].Rows.Add(newRow);
                da.Update(ds.Tables[0]);

                Label2.Visible = true;
                Label2.Text = "Successfully posted!";
                Response.Redirect("Index.aspx");

            }
            catch (SqlException ex)
            {
                Label2.Visible = true;
                Label2.Text = ex.Message;
            }
            finally
            {
                cn.Close();
            }
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session["student"] = null;
            Response.Redirect("Index.aspx");
        }

        protected void cbAssets_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}