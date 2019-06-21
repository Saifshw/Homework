<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<h1>Register</h1>
			<p>
				<asp:TextBox ID="txtUsername" placeholder="Username" runat="server"></asp:TextBox>
			</p>
			<p>
				<asp:TextBox ID="txtPassword" placeholder="Password" runat="server"></asp:TextBox>
			</p>
			<p>
				<asp:TextBox ID="txtFirstName" placeholder="First Name" runat="server"></asp:TextBox>
				<asp:TextBox ID="txtLastName" placeholder="Last Name" runat="server"></asp:TextBox>
			</p>
			<p>
				Choose a profile picture:<asp:FileUpload ID="ImageInput" placeholder="Profile Image" runat="server" />
			</p>
			<p>
				<asp:Button ID="btnSubmit" runat="server" Text="Register" OnClick="btnSubmit_Click" />
			</p>
			<p>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Fill in Username"></asp:RequiredFieldValidator>
			</p>
			<p>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Fill in password"></asp:RequiredFieldValidator>
			</p>
			<p>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Fill in First Name"></asp:RequiredFieldValidator>
			</p>
			<p>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtLastName" ErrorMessage="Fill in Last Name"></asp:RequiredFieldValidator>
			</p>
			<p>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ImageInput" ErrorMessage="Choose an Image"></asp:RequiredFieldValidator>
			</p>
        </div>
    </form>
</body>
</html>
