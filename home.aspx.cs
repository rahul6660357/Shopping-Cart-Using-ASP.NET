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
            //if (SessionHelper.UserId == 0)
            //{
            //    Response.Redirect("~/login.aspx");
            //}
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
          

        }
    }
}