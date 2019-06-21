<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        	<asp:Label ID="lblWelcome" runat="server" Text="Welcome, "></asp:Label>
			<br />
			<asp:Image ID="UserImage" runat="server" Width="80px" />
			<br />
			<asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Logout" />
        </div>
    </form>
</body>
</html>
