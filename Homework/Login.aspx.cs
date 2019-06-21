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
		SetElementsVisibility(false);
		Page.Validate();

		string Username = txtUser.Text;
		string Password = txtPass.Text;

		if(Username == string.Empty || Password == string.Empty) {
			ShowError("Please fill all fields");
			return;
		}

		CheckInput(Username, Password);
	}

	protected void CheckInput(string User, string Pass)
	{
		SqlConnection dbConnection = new SqlConnection(ConnectionString);
		SqlCommand SelectUser = new SqlCommand(SelectUserCommand, dbConnection);
		SqlDataReader Reader;

		SelectUser.Parameters.Add(new SqlParameter("@Username", User));
		try {
			dbConnection.Open();
			Reader = SelectUser.ExecuteReader();
			Reader.Read();

			// Username not found
			if (!Reader.HasRows) {
				ShowError("Username Not found <br> <a href='Register.aspx'>Register?</a>");
				return;
			};

			// Pass and user are right
			if (Reader["Password"].ToString() == Pass) {
				Session["LoginId"] = (int)Reader["Id"];
				Session["LoginUser"] = User;
				Session["LoginImage"] = Reader["Image"].ToString();
				RedirectUserToPage((bool)Reader["UserType"]);
			} else { // User right but pass isnt
				ShowError("Welcome " + User +", your password is incorrect");
				UserImage.ImageUrl = Reader["Image"].ToString();
				UserImage.Visible = true;
				return;
			}

			Reader.Close();
		}
		catch (Exception ex) {
			ShowError("Something happened: "+ex.Message);
		}
		finally {
			dbConnection.Close();
		}
	}

	private void RedirectUserToPage(bool IsAdmin)
	{
		if (IsAdmin == true) {
			Response.Redirect("admin_cpanel.aspx");
		} else {
			Response.Redirect("UserProfile.aspx");
		}
	}

	protected void ShowError(string ErrorMessage)
	{
		ErrorLabel.Text = ErrorMessage;
		ErrorLabel.Visible = true;
	}

	protected void SetElementsVisibility(bool IsVisible) {
		ErrorLabel.Visible = IsVisible;
		UserImage.Visible = IsVisible;
	}
}