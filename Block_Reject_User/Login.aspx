<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Block_Reject_User.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="login_Style.css" rel="stylesheet" />
    <title>login page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="loginbox">
           
            <%--<div class="container">--%>
            <h2>LOGIN</h2>
            <div class="row form-group">
                <asp:Label ID="Label1" Class="lblemail" runat="server" Text="Choose Account : "></asp:Label>
                <asp:DropDownList ID="DropDownList1" Class="ddl1" AutoPostBack="true" runat="server" >
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>Admin Login</asp:ListItem>
                    <asp:ListItem>User Login</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="row form-group">
                <asp:Label ID="Label2" Class="lblemail" runat="server" Text="Username : "></asp:Label>
                <asp:TextBox ID="txtuser" Class="txtemail" placeholder="Enter Username" runat="server"></asp:TextBox>
            </div>
            <div class="row form-group">
                <asp:Label ID="Label3" Class="lblpass" runat="server" Text="Password : "></asp:Label>
                <asp:TextBox ID="txtpass" Class="txtpass" TextMode="Password" placeholder="Enter Password" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="btnsubmit" class="btnsubmit" CssClass="btn btn-primary" runat="server" Text="LOGIN" OnClick="btnsubmit_Click" />
            </div>
        </div>
        
    </form>
</body>
</html>
