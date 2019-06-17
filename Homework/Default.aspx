<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<style type="text/css">
		.auto-style1 {
			width: 814px;
			margin: auto;
		}
		.table-div{
			width: 75%;
			margin: auto;
		}
		td {
			border-style: double;
			border-collapse: collapse;
		}
		.auto-style2 {
			width: 75%;
			margin: auto;
			direction: ltr;
		}
		.auto-style8 {
			width: 406px;
		}
	</style>
</head>
<body>
    <form id="form1" runat="server">
		<div class="auto-style2">
		<body>
			<table class="auto-style1">
				<tr>
					<td class="auto-style8">
						<asp:ListBox ID="InitialBox" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" SelectionMode="Multiple" Width="120px">
							<asp:ListItem>A</asp:ListItem>
							<asp:ListItem>B</asp:ListItem>
							<asp:ListItem>C</asp:ListItem>
							<asp:ListItem>D</asp:ListItem>
							<asp:ListItem>E</asp:ListItem>
							<asp:ListItem>F</asp:ListItem>
						</asp:ListBox>
					</td>
					<td class="auto-style8">
						<asp:ListBox ID="DestinationBox" runat="server" SelectionMode="Multiple" Width="120px"></asp:ListBox>
					</td>
				</tr>
				<tr>
					<td class="auto-style8">
						<asp:TextBox ID="InputField" placeholder="Input something" runat="server" Height="23px"></asp:TextBox>
						<p><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="You must enter something" ControlToValidate="InputField" Display="Dynamic"></asp:RequiredFieldValidator></p>
					</td>
					<td class="auto-style8">
						<asp:Button ID="btnSubmit" runat="server" Text="Button" OnClick="btnSubmit_Click" />
					</td>
				</tr>
				<tr>
					<td>
						<asp:DropDownList ID="ddlCountry" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Id">
						</asp:DropDownList>
						<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnection %>" SelectCommand="SELECT * FROM [Countries]"></asp:SqlDataSource>
					</td>
					<td>
						<asp:DropDownList ID="ddlCity" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Id">
						</asp:DropDownList>
						<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnection %>" SelectCommand="SELECT * FROM [Cities] WHERE ([Id] = @Id)">
							<SelectParameters>
								<asp:ControlParameter ControlID="ddlCountry" Name="Id" PropertyName="SelectedValue" Type="Int32" />
							</SelectParameters>
						</asp:SqlDataSource>
					</td>
				</tr>
			</table>
		</body>
		</div>
    </form>
</body>
</html>
