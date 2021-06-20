<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="gridview1.aspx.cs" Inherits="Block_Reject_User.gridview1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="btnlogout" runat="server" CssClass="btn btn-danger" Text="Log Out" OnClick="btnlogout_Click" />
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
     <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" AutoGenerateColumns="False" HorizontalAlign="Center" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
        <Columns>
            <asp:BoundField HeaderText="Name" DataField="NAME" />
            <asp:BoundField HeaderText="Email" DataField="EMAIL" />
            <asp:BoundField HeaderText="Address" DataField="ADDRESS" />
            <asp:BoundField HeaderText="Pincode" DataField="PIN_CODE" />
            <asp:BoundField HeaderText="Gender" DataField="GENDER" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="btnselect" runat="server" CssClass="btn btn-primary" Text="Select" CommandArgument='<%# Eval("ID") %>' OnCommand="btnselect_Command" />
                    <asp:Button ID="btnblock" runat="server" CssClass="btn btn-dark" Text="Block" CommandArgument='<%# Eval("ID") %>' OnCommand="btnblock_Command" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br /><br /><br /><br /><br />

    <div class="container">
        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="ID : "></asp:Label>
            <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text="Name : "></asp:Label>
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" Text="Email : "></asp:Label>
            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            <asp:Label ID="Label5" runat="server" Text="Block Reason : "></asp:Label>
            <asp:TextBox ID="txtreason" runat="server"></asp:TextBox><br /><br />
            <asp:Button ID="btnupdate" CssClass="btn btn-success" runat="server" Text="Update" OnClick="btnupdate_Click" />
        </div>
    </div>
    
</asp:Content>
