using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.net_Guide
{
    public partial class ErrorHanding : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Trace.Write("Page Load");

            if (!IsPostBack)
            {
                Trace.Write("Not Post Back, Page Load");
                string[,] quotes =
                {
                    {"Imagination is more important than Knowledge.", "Albert Einsten" },
                    {"Assume a virtue, if you have it not", "Shakespeare" },
                    {"A man cannot be comfortable without his own approval", "Mark Twain" }
                };

                for (int i = 0; i < quotes.GetLength(0); i++)
                {
                    ddlquotes.Items.Add(new ListItem(quotes[i, 0], quotes[i, 1]));
                }
            }
        }

        protected void ddlquotes_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlquotes.SelectedIndex != -1)
            {
                lblquotes.Text = string.Format("{0}, Quote: {1}", ddlquotes.SelectedItem.Text, ddlquotes.SelectedValue);
            }

            try
            {
                int a = 0;
                int b = 9 / a;
            }
            catch (Exception ex)
            {
                Trace.Warn("UserAction", "processing 9/a", ex);
            }
        }
    }
}