<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_cpanel.aspx.cs" Inherits="admin_cpanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        	<asp:Image ID="Image1" runat="server" Width="50px" />
			<asp:Label ID="lblWelcome" runat="server" Text="Welcome, "></asp:Label>
        </div>
		<div>
			<asp:SqlDataSource ID="DataListSource" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnection %>" DeleteCommand="DELETE FROM [Login] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Login] ([Username], [Password], [FirstName], [LastName], [Image], [UserType]) VALUES (@Username, @Password, @FirstName, @LastName, @Image, @UserType)" SelectCommand="SELECT * FROM [Login]" UpdateCommand="UPDATE [Login] SET [Username] = @Username, [Password] = @Password, [FirstName] = @FirstName, [LastName] = @LastName, [Image] = @Image, [UserType] = @UserType WHERE [Id] = @Id">
				<DeleteParameters>
					<asp:Parameter Name="Id" Type="Int32" />
				</DeleteParameters>
				<InsertParameters>
					<asp:Parameter Name="Username" Type="String" />
					<asp:Parameter Name="Password" Type="String" />
					<asp:Parameter Name="FirstName" Type="String" />
					<asp:Parameter Name="LastName" Type="String" />
					<asp:Parameter Name="Image" Type="String" />
					<asp:Parameter Name="UserType" Type="Boolean" />
				</InsertParameters>
				<UpdateParameters>
					<asp:Parameter Name="Username" Type="String" />
					<asp:Parameter Name="Password" Type="String" />
					<asp:Parameter Name="FirstName" Type="String" />
					<asp:Parameter Name="LastName" Type="String" />
					<asp:Parameter Name="Image" Type="String" />
					<asp:Parameter Name="UserType" Type="Boolean" />
					<asp:Parameter Name="Id" Type="Int32" />
				</UpdateParameters>
			</asp:SqlDataSource>
			<asp:ListView ID="UserListView" runat="server" DataKeyNames="Id" DataSourceID="DataListSource" InsertItemPosition="LastItem">
				<AlternatingItemTemplate>
					<tr style="background-color:#FFF8DC;">
						<td>
							<asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
							<asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
						</td>
						<td>
							<asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
						</td>
						<td>
							<asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
						</td>
						<td>
							<asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
						</td>
						<td>
							<asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
						</td>
						<td>
							<asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
						</td>
						<td>
							<asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' />
						</td>
						<td>
							<asp:CheckBox ID="UserTypeCheckBox" runat="server" Checked='<%# Eval("UserType") %>' Enabled="false" />
						</td>
					</tr>
				</AlternatingItemTemplate>
				<EditItemTemplate>
					<tr style="background-color:#008A8C;color: #FFFFFF;">
						<td>
							<asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
						</td>
						<td>
							<asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
						</td>
						<td>
							<asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
						</td>
						<td>
							<asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
						</td>
						<td>
							<asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
						</td>
						<td>
							<asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
						</td>
						<td>
							<asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
						</td>
						<td>
							<asp:CheckBox ID="UserTypeCheckBox" runat="server" Checked='<%# Bind("UserType") %>' />
						</td>
					</tr>
				</EditItemTemplate>
				<EmptyDataTemplate>
					<table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
						<tr>
							<td>No data was returned.</td>
						</tr>
					</table>
				</EmptyDataTemplate>
				<InsertItemTemplate>
					<tr style="">
						<td>
							<asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
						</td>
						<td>&nbsp;</td>
						<td>
							<asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
						</td>
						<td>
							<asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
						</td>
						<td>
							<asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
						</td>
						<td>
							<asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
						</td>
						<td>
							<asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
						</td>
						<td>
							<asp:CheckBox ID="UserTypeCheckBox" runat="server" Checked='<%# Bind("UserType") %>' />
						</td>
					</tr>
				</InsertItemTemplate>
				<ItemTemplate>
					<tr style="background-color:#DCDCDC;color: #000000;">
						<td>
							<asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
							<asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
						</td>
						<td>
							<asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
						</td>
						<td>
							<asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
						</td>
						<td>
							<asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
						</td>
						<td>
							<asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
						</td>
						<td>
							<asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
						</td>
						<td>
							<asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' />
						</td>
						<td>
							<asp:CheckBox ID="UserTypeCheckBox" runat="server" Checked='<%# Eval("UserType") %>' Enabled="false" />
						</td>
					</tr>
				</ItemTemplate>
				<LayoutTemplate>
					<table runat="server">
						<tr runat="server">
							<td runat="server">
								<table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
									<tr runat="server" style="background-color:#DCDCDC;color: #000000;">
										<th runat="server"></th>
										<th runat="server">Id</th>
										<th runat="server">Username</th>
										<th runat="server">Password</th>
										<th runat="server">FirstName</th>
										<th runat="server">LastName</th>
										<th runat="server">Image</th>
										<th runat="server">UserType</th>
									</tr>
									<tr id="itemPlaceholder" runat="server">
									</tr>
								</table>
							</td>
						</tr>
						<tr runat="server">
							<td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
								<asp:DataPager ID="DataPager1" runat="server">
									<Fields>
										<asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
									</Fields>
								</asp:DataPager>
							</td>
						</tr>
					</table>
				</LayoutTemplate>
				<SelectedItemTemplate>
					<tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
						<td>
							<asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
							<asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
						</td>
						<td>
							<asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
						</td>
						<td>
							<asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
						</td>
						<td>
							<asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
						</td>
						<td>
							<asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
						</td>
						<td>
							<asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
						</td>
						<td>
							<asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' />
						</td>
						<td>
							<asp:CheckBox ID="UserTypeCheckBox" runat="server" Checked='<%# Eval("UserType") %>' Enabled="false" />
						</td>
					</tr>
				</SelectedItemTemplate>
			</asp:ListView>
		</div>
    </form>
</body>
</html>
