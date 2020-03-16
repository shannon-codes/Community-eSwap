using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FinalProject
{
    public class Project
    {
        public int projectid
        {
            get;set;
        }
        public string ProjectName
        {
            get;set;
        }
        public string ProjectManager
        {
            get; set;
        }
        public string OrgName
        {
            get; set;
        }
        public DateTime PostedDate
        {
            get; set;
        }
        public string Description
        {
            get; set;
        }
        public string Location
        {
            get; set;
        }
        public int AppCount
        {
            get; set;
        }
        public string Website
        {
            get; set;
        }
        public string Skills
        {
            get; set;
        }
        public string Duration
        {
            get; set;
        }
        public string CompensateAssets
        {
            get; set;
        }
    }
}