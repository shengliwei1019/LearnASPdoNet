﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.net_Guide
{
    public partial class ASMXWebServiceTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [System.Web.Services.WebMethod]
        public static string GetCurrentTime(string name)
        {
            return "Hello " + name + Environment.NewLine + "The Current Time is: " + DateTime.Now.ToString();
        }
    }
}