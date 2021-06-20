using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Block_Reject_User
{
    public partial class User_Block_Reason : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["block_user_name"].ToString();

            Label2.Text = Session["block_user_Reason"].ToString();
            
        }
    }
}