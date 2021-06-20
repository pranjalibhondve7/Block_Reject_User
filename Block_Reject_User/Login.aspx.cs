using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Block_Reject_User
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        String cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;
        SqlDataReader dr;        
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(cnfg);
            cmd = new SqlCommand();
            cmd.Connection = con;
            Session["name"] = txtuser.Text;
        }
        private void BlockUser()
        {
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                string block = dt.Rows[0]["isblock"].ToString();
                if (block == "YES")
                {
                    Session["block_user_name"] = txtuser.Text;
                    Session["block_user_Reason"] = dt.Rows[0]["block_reason"].ToString();
                    Response.Write("<script>alert('You are block by admin')</script>");
                    Response.Redirect("User_Block_Reason.aspx");           
                }
            }
        }
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem.Text == "Admin Login")
            {
                cmd.CommandText = "Select * from  Admin where Username='" + txtuser.Text.Trim() + "' and Password='" + txtpass.Text.Trim() + "'";
                con.Open();
                dr = cmd.ExecuteReader();                
                if (dr.Read())
                {
                    Response.Write("<script>alert('Admin login successfully.........')</script>");
                    Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Details.......')</script>");
                }
                con.Close();
            }
            if (DropDownList1.SelectedItem.Text == "User Login")
            {
                cmd.CommandText = "Select * from Registration_block where USER_NAME='" + txtuser.Text.Trim() + "' and PASSWORD='" + txtpass.Text.Trim() + "'";
                con.Open();
                BlockUser();
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Response.Write("<script>alert('User login successfully.........')</script>");
                    Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Details.......')</script>");
                }
                con.Close();
            }
        }
    }
}