using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
	{
		var Selected = InitialBox.SelectedItem;
		DestinationBox.Items.Add(Selected);
		InitialBox.Items.Remove(Selected);
	}

	protected void btnSubmit_Click(object sender, EventArgs e)
	{
		RequiredFieldValidator1.Validate();
	}
}