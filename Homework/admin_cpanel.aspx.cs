using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_cpanel : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		if(Session["LoginId"] == null) {
			Response.Redirect("Login.aspx");
		}
		string Username = Session["LoginUser"].ToString();
		lblWelcome.Text = "Welcome, " + Username;

		UserImage.ImageUrl = Session["LoginImage"].ToString();
	}

	protected void btnLogout_Click(object sender, EventArgs e)
	{
		Session.Abandon();
		Response.Redirect("Login.aspx");
	}

	protected void btnSearch_Click(object sender, EventArgs e)
	{
		
	}
}