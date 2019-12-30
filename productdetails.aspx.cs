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
    public partial class productdetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("initial catalog=ShoppingCart;Data source=DESKTOP-9KERCOR\\SQLEXPRESS;integrated security=true");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32( Request.QueryString["id"]);
            cmd = new SqlCommand("select * from products where product_id = '"+ id+"' ");
            SqlDataAdapter st = new SqlDataAdapter();
            cmd.Connection = con;
            con.Open();
            st.SelectCommand = cmd;
            DataTable dtable = new DataTable();
            st.Fill(dtable);
            productlist.DataSource = dtable;
            productlist.DataBind();
            con.Close();

        }

       public void addtocart(object sender, EventArgs e)
        {
            con.Open();
            int productid = Convert.ToInt32(Request.QueryString["id"]);
            int userid = SessionHelper.UserId;
            cmd = new SqlCommand("checkquantity", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@userid", userid);
            cmd.Parameters.AddWithValue("@product_id", productid);
            var quantity = cmd.ExecuteScalar();

            if (quantity == null)
            {
                cmd = new SqlCommand("updatecart", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@quantity", 1);
                cmd.Parameters.AddWithValue("@userid", userid);
                cmd.Parameters.AddWithValue("@product_id", productid);

                var k = cmd.ExecuteNonQuery();
                if ((int)k > 0)
                {
                    Console.WriteLine("product added");
                }

            }
            else
            {
                cmd = new SqlCommand("updatequantity", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@userid", userid);
                cmd.Parameters.AddWithValue("@product_id", productid);
                cmd.Parameters.AddWithValue("@quantity", (int)quantity + 1);
                var k1 = cmd.ExecuteScalar();
               
                
            }

            con.Close();



        }
    }
}