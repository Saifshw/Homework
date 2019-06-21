<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<style>
		.LoginHolder {
			margin-left: auto;
			margin-right: auto;
		}
	</style>
</head>
<body>
	<form id="form1" runat="server">
	<div class="LoginHolder">
		<h1>Login</h1>
		<asp:TextBox ID="txtUser" placeholder="Username" runat="server"></asp:TextBox>
		<p>
			<asp:TextBox ID="txtPass" placeholder="Password" runat="server"></asp:TextBox>	
		</p>
		<p>
			<asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
		</p>
		<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please fill in all fields" ControlToValidate="txtPass"></asp:RequiredFieldValidator>
		<br />
		<asp:Label ID="ErrorLabel" runat="server" Visible="False"></asp:Label>
		</div>

	</form>
</body>
</html>
