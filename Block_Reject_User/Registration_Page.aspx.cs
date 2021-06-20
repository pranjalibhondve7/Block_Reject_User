using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Block_Reject_User
{
    public partial class Registration_Page : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        String cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(cnfg);
            cmd = new SqlCommand();
            cmd.Connection = con;
 
        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "Insert Into Registration_block(NAME,EMAIL,MOB_NO,ADDRESS,CITY,PIN_CODE,GENDER,PASSWORD,CHECKBOX,USER_NAME)VALUES(@name,@email,@mobno,@address,@city,@pincode,@gender,@password,@checked,@user)";
            cmd.Parameters.AddWithValue("@name", txtname.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@mobno", txtmob.Text);
            cmd.Parameters.AddWithValue("@address", txtaddress.Text);
            cmd.Parameters.AddWithValue("@city", txtcity.Text);
            cmd.Parameters.AddWithValue("@pincode", txtpin.Text);
            cmd.Parameters.AddWithValue("@password", txtpass.Text);
            cmd.Parameters.AddWithValue("@user", txtusername.Text);

            if (rbmale.Checked)
            {
                cmd.Parameters.AddWithValue("@gender", "Male");
            }
            if (rbfemale.Checked)
            {
                cmd.Parameters.AddWithValue("@gender", "Female");
            }
            if (rbothers.Checked)
            {
                cmd.Parameters.AddWithValue("@gender", "Other");
            }
            if (CheckBox1.Checked)
            {
                cmd.Parameters.AddWithValue("@checked", "Checked");
            }

            con.Open();
            int index = cmd.ExecuteNonQuery();
            if (index > 0)
            {
                Response.Write("<script>alert('Insert Data Successfully..........')</script>");
            }
            else
            {
                Response.Write("<script>alert('Insert Data Failed......')</script>");
            }
            con.Close();
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}