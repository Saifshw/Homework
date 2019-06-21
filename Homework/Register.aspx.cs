using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
	string ConnectionString = WebConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;

	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void btnSubmit_Click(object sender, EventArgs e)
	{
		Page.Validate();

	}
}