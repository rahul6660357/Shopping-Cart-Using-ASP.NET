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
    public partial class orderhistory : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("initial catalog=ShoppingCart;Data source=DESKTOP-9KERCOR\\SQLEXPRESS;integrated security=true");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            showhistory();
        }
        public void showhistory()
        {
            int userid = SessionHelper.UserId;
            cmd = new SqlCommand("select products.category, products.active, products.details, orderhistory.quantity,  products.price, products.subcategory, products.product_id, products.name  from products inner join orderhistory on products.product_id = orderhistory.product_id and userid = '" + userid + "'");
            SqlDataAdapter st = new SqlDataAdapter();
            cmd.Connection = con;

            st.SelectCommand = cmd;
            DataTable dtable = new DataTable();
            st.Fill(dtable);
            showhistoryy.DataSource = dtable;
            showhistoryy.DataBind();

        }
        public void Gotodetails(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string str = btn.CommandArgument.ToString();
            if (btn.CommandName == "ThisBtnClick")
                Response.Redirect("~/productdetails.aspx?id=" + str);
        }
    }
}