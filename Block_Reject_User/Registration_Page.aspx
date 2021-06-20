<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration_Page.aspx.cs" Inherits="Block_Reject_User.Registration_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="register_style.css" rel="stylesheet" />
    <title>Registration Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" >
            <h1><b><u>Register</u></b></h1>
            <div class="row form-group">               
                <div class="col-md-6">
                    <asp:Label ID="Label2" Class="lbl" runat="server" Text="Full Name : "></asp:Label>
                    <asp:TextBox ID="txtname" runat="server"  CssClass="form-control" Class="txt" />
                </div>
                <div class="col-md-6">
                    <asp:Label ID="Label3" runat="server" Class="lbl" Text="Email : "></asp:Label>
                    <asp:TextBox ID="txtemail" runat="server" TextMode="Email" CssClass="form-control" Class="txt"></asp:TextBox>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-6">
                    <asp:Label ID="Label4" runat="server"   Class="lbl" Text=" Mob. No. : "></asp:Label>
                    <asp:TextBox ID="txtmob" runat="server" TextMode="Phone"  CssClass="form-control" Class="txt"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <asp:Label ID="Label5" runat="server"   Class="lbl" Text="Address : "></asp:Label>
                    <asp:TextBox ID="txtaddress" runat="server"  CssClass="form-control" Class="txt"></asp:TextBox>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-6">
                    <asp:Label ID="Label6" runat="server"   Class="lbl" Text=" City:"></asp:Label>
                    <asp:TextBox ID="txtcity" runat="server"  CssClass="form-control" Class="txt"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <asp:Label ID="Label7" runat="server" Class="lbl" Text="PinCode : "></asp:Label>
                    <asp:TextBox ID="txtpin" runat="server"  CssClass="form-control" Class="txt"></asp:TextBox>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-6">
                    <asp:Label ID="gender" runat="server"   Class="lbl" Text="Gender : "></asp:Label>
                    <asp:RadioButton ID="rbmale" runat="server" Class="rbtn"  Text="Male "  GroupName="gender" />
                    <asp:RadioButton ID="rbfemale" runat="server" Class="rbtn"  Text="Female"  GroupName="gender" />
                    <asp:RadioButton ID="rbothers" runat="server" Class="rbtn" Text="Other"  GroupName="gender" />
                </div>
                <div class="col-md-6">
                    <asp:Label ID="Label1" runat="server"   Class="lbl" Text="Password : "></asp:Label>
                    <asp:TextBox ID="txtpass" runat="server" TextMode="Password" CssClass="form-control" Class="txt"></asp:TextBox>
                </div>
            </div>
            <div class="row form-group">
                    <asp:Label ID="Label8" runat="server"   Class="lbl" Text="User Name : "></asp:Label>
                    <asp:TextBox ID="txtusername" runat="server"  CssClass="form-control" Class="txt"></asp:TextBox>
                </div>
             <div class="row">
            <asp:CheckBox ID="CheckBox1" runat="server" Class="lbl" Text="Do you Agree with All terms and conditions  " />
        </div>
            <div class="q">

                <asp:Button ID="btnregister" class="btn" CssClass="btn btn-primary" runat="server" Text="REGISTER" OnClick="btnregister_Click"  />

                <asp:Button ID="btnlogin" class="btn" CssClass="btn btn-success" runat="server" Text="LOGIN" OnClick="btnlogin_Click"  />
            </div>
        </div>
    </form>
</body>
</html>
