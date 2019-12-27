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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("initial catalog=ShoppingCart;Data source=DESKTOP-9KERCOR\\SQLEXPRESS;integrated security=true");
        SqlCommand cmd;
        SqlDataReader rd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            string firstname = fname.Text;
            string lastname = lname.Text;
            string emailid = emaill.Text;
            string password = pass.Text;

            cmd = new SqlCommand();

            cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = emaill.Text.Trim();

            cmd.Connection = con;
            cmd.CommandText = "select count(*) from Users where email =  '" + emaill.Text + "' ";
            con.Open();
           var count = (int) cmd.ExecuteScalar();
            if(count>0)
            {
                error.Text = "please check your email address. Account exits already";

            }
            else
            {
                cmd = new SqlCommand("insert into users values ( '" + firstname + "', '" + lastname + "','" + emailid + "','" + password + "',null,null,'','' )", con);
                int k = cmd.ExecuteNonQuery();
                if (k > 0)
                {
                    Response.Redirect("~/login.aspx");
                }
                else
                {
                    error.Text = "please check your email address. Account exits already";
                }
            }

         //   con.Open();
           
           

            con.Close();



            
        }
    }
}