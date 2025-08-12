using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace agri.user
{
	public partial class rmc : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            // Session validation
            if (Session["UserName"] == null || string.IsNullOrEmpty(Session["UserName"].ToString()))
            {
                // Session expired or not set, redirect to register (login) page
                Response.Redirect("register.aspx");
                return;
            }
        }
	}
}