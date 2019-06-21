using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
	string ConnectionString = WebConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;
	string SelectUserCommand = @"SELECT * FROM Login WHERE Username = @Username";

	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		RequiredFieldValidator1.Validate();

		string Username = txtUser.Text;
		string Password = txtPass.Text;

		CheckInput(Username, Password);
	}

	protected void CheckInput(string User, string Pass)
	{
		ErrorLabel.Visible = false;

		SqlConnection dbConnection = new SqlConnection(ConnectionString);
		SqlCommand SelectUser = new SqlCommand(SelectUserCommand, dbConnection);
		SqlDataReader Reader;

		SelectUser.Parameters.Add(new SqlParameter("@Username", User));
		try {
			dbConnection.Open();
			Reader = SelectUser.ExecuteReader();
			Reader.Read();

			if (!Reader.HasRows) {
				ShowError("Username Not found");
				return;
			};

			// Pass and user are right
			if (Reader["Password"].ToString() == Pass) {

			} else { // User right but pass isnt
				ShowError("Welcome " + User +", your password is incorrect");
				return;
			}

				Reader.Close();
		}
		catch (Exception ex) {

			
		}
		finally {
			dbConnection.Close();
		}
	}

	protected void ShowError(string ErrorMessage)
	{
		ErrorLabel.Text = ErrorMessage;
		ErrorLabel.Visible = true;
	}

	protected void SetElementsVisibility(bool IsVisible) {

	}
}