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
            showcart();
        }
        public void showcart()
        {
            con.Open();
            int userid = SessionHelper.UserId;
            cmd = new SqlCommand("select products.category, products.active, products.details, cart.quantity, products.image, products.price, products.subcategory, products.product_id, products.name  from products inner join cart on products.product_id = cart.product_id and userid = '" + userid + "'");
            SqlDataAdapter st = new SqlDataAdapter();
            cmd.Connection = con;
           
            st.SelectCommand = cmd;
            DataTable dtable = new DataTable();
            st.Fill(dtable);
            show.DataSource = dtable;
            show.DataBind();
            con.Close();
        }
    }
}