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
    public partial class Dashboard : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        String cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;
        //int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["name"].ToString();
            //con = new SqlConnection(cnfg);
            //cmd = new SqlCommand();
            //cmd.Connection = con;
            //if (!IsPostBack)
            //{
            //    LoadData();
            //    visibletable();
            //}
        }
        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
        //protected void LoadData()
        //{
        //    cmd.CommandText = "Select * from Registration_block";
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    DataTable dt = new DataTable();
        //    da.Fill(dt);
        //    if (dt.Rows.Count > 0)
        //    {
        //        GridView1.DataSource = dt;
        //        GridView1.DataBind();
        //    }
        //    else
        //    {
        //        GridView1.DataSource = dt;
        //        GridView1.DataBind();
        //    }
        //}
        //protected void visibletable()
        //{
        //    string id = Session["name"].ToString();
        //    if (id == "Admin")
        //    {
        //        GridView1.Visible = true;
        //    }
        //    else
        //    {
        //        GridView1.Visible = false;
        //    }
        //}
        //protected void btnblock_Command(object sender, CommandEventArgs e)
        //{
        //    int id = Convert.ToInt32(e.CommandArgument);
        //    con.Open();
        //    cmd.CommandText = "Update Registration_block set isblock='YES' where ID=" + id + "";

        //    int u1 = cmd.ExecuteNonQuery();
        //    if (u1 > 0)
        //    {
        //        Response.Write("<script>alert('User account is block')</script>");
        //    }
        //    else
        //    {
        //        Response.Write("<script>alert('User account is not block')</script>");
        //    }
        //    con.Close();
        //}
    }
}