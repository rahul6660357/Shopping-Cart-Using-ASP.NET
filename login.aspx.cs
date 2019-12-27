using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Shopping_Cart
{
    public partial class sigup : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("initial catalog=ShoppingCart;Data source=DESKTOP-9KERCOR\\SQLEXPRESS;integrated security=true");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (SessionHelper.UserId >0)
            {
                Response.Redirect("~/home.aspx");
            }

        }

        protected void loginbtn(object sender, EventArgs e)
        {
            con.Open();
            String emailid = email.Text;
            String password = pass.Text;
            cmd = new SqlCommand("checkuserexists", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@email", emailid);
            cmd.Parameters.AddWithValue("@password", password);
            var userid = cmd.ExecuteScalar();
            if(userid ==null)
            {
                error.Text = "Your emailid is wrong Please Check your Credentials";
               
            }
            else if((int)userid >0)
            {
                SessionHelper.setUserId((int)userid);
                Response.Redirect("~/home.aspx");
            }
        }
    }
}