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
    public partial class cart : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("initial catalog=ShoppingCart;Data source=DESKTOP-9KERCOR\\SQLEXPRESS;integrated security=true");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            { showcart(); }
           
        }
        public void showcart()
        {
            
            int userid = SessionHelper.UserId;
            cmd = new SqlCommand("select products.category, products.active, products.details, cart.quantity, products.image, products.price, products.subcategory, products.product_id, products.name  from products inner join cart on products.product_id = cart.product_id and userid = '" + userid + "'");
            SqlDataAdapter st = new SqlDataAdapter();
            cmd.Connection = con;
           
            st.SelectCommand = cmd;
            DataTable dtable = new DataTable();
            st.Fill(dtable);
            show.DataSource = dtable;
            show.DataBind();
            
        }

        public void deleteitem(object sender, EventArgs e)
        {
            con.Open();
            ImageButton btn = (ImageButton)sender;
            int userid = SessionHelper.UserId;
            string productid = btn.CommandArgument.ToString();


            cmd = new SqlCommand("deleteproductfromcart", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@userid", userid);
            cmd.Parameters.AddWithValue("@product_id", productid);
            var k = cmd.ExecuteNonQuery();
            showcart();
            con.Close();

        }
        public void addquantity(object sender, EventArgs e)
        {
            con.Open();
            LinkButton btn = (LinkButton)sender;
            
            int productid = Convert.ToInt32(btn.CommandArgument.ToString());
            int userid = SessionHelper.UserId;

            cmd = new SqlCommand("addquantity", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@userid", userid);
            cmd.Parameters.AddWithValue("@product_id", productid);
            var k = cmd.ExecuteNonQuery();
            showcart();
            con.Close();


        }

        public void subtractquantity(object sender, EventArgs e)
        {
            con.Open();
            LinkButton btn = (LinkButton)sender;

            int productid = Convert.ToInt32(btn.CommandArgument.ToString());
            int userid = SessionHelper.UserId;

            cmd = new SqlCommand("subtractquantity", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@userid", userid);
            cmd.Parameters.AddWithValue("@product_id", productid);
            var k = cmd.ExecuteNonQuery();
            showcart();
            con.Close();


        }
        public void checkout(object sender, EventArgs e)
        {
            con.Open();
            int userid = SessionHelper.UserId;

            cmd = new SqlCommand("myorderhistory", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@userid", userid);
            var k = cmd.ExecuteNonQuery();
            if(k>0)
            {
                cmd = new SqlCommand("deletecartforuser", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@userid", userid);
                var j = cmd.ExecuteNonQuery();
                if(j>0)
                {
                    Response.Redirect("~/orderhistory.aspx");
                }
            }
            con.Close();
        }

    }
}