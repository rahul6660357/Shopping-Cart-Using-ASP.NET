using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Shopping_Cart
{
    public partial class home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("initial catalog=ShoppingCart;Data source=DESKTOP-9KERCOR\\SQLEXPRESS;integrated security=true");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (SessionHelper.UserId == 0)
            {
                Response.Redirect("~/login.aspx");
            }
            displayproducts();


        }
        public void displayproducts()
        {
            cmd = new SqlCommand("select * from products");
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
        public void showhome(object sender, System.EventArgs e)
        {
            cmd = new SqlCommand("select * from products ");
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
      

        protected void addnewproduct(object sender, EventArgs e)
        {
            Response.Redirect("~/Addproduct.aspx");
        }

        protected void myprofile(object sender, EventArgs e)
        {
            Response.Redirect("~/myprofile.aspx");
        }

        protected void showcart(object sender, EventArgs e)
        {
            Response.Redirect("~/cart.aspx");
        }
       public void Gotodetails(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string str = btn.CommandArgument.ToString();
            if (btn.CommandName == "ThisBtnClick") 
            Response.Redirect("~/productdetails.aspx?id=" + str);
        }

        protected void showelectronic(object sender, EventArgs e)
        {

            cmd = new SqlCommand("select * from products where category = 'electrical' ");
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

        protected void showbooks(object sender, EventArgs e)
        {
            cmd = new SqlCommand("select * from products where category = 'book' ");
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

        protected void showshoes(object sender, EventArgs e)
        {
            cmd = new SqlCommand("select * from products where category = 'shoes' ");
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

        protected void showcloths(object sender, EventArgs e)
        {
            cmd = new SqlCommand("select * from products where category = 'cloths' ");
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

        protected void pricefilter(object sender, EventArgs e)
        {
            if(radio1.Checked)
            {
                cmd = new SqlCommand("select * from products where price between 99 and 2000 ");
            }
            else if(radio2.Checked)
            {
                cmd = new SqlCommand("select * from products where price between 2000 and 4000 ");
            }
            else if (radio3.Checked)
            {
                cmd = new SqlCommand("select * from products where price between 4000 and 6000 ");
            }
            else if (RadioButton1.Checked)
            {
                cmd = new SqlCommand("select * from products where price between 6000 and 10000 ");
            }
            else if(RadioButton2.Checked)
            {
                cmd = new SqlCommand("select * from products where price between 10000 and 20000 ");
            }
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
          LinkButton btn = (LinkButton)sender;
            string productid = btn.CommandArgument.ToString();
           
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

        protected void Unnamed4_Click(object sender, EventArgs e)
        {
           Session.Clear();

        //    int p =  Convert.ToInt32(Session["UserID"].ToString());
            Response.Redirect("~/login.aspx");
        }
    }
}