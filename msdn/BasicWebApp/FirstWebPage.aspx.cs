﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BasicWebApp
{
    public partial class FirstWebPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Calendar1.SelectionChanged += new EventHandler(this.Calendar1_SelectionChanged);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = TextBox1.Text + ", welcome to Visual Studio!";
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            foreach (DateTime day in Calendar1.SelectedDates)
            {
                Label1.Text = day.Date.ToShortDateString();
            }
        }
    }
}