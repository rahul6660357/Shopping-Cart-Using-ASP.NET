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
    public partial class Addproduct : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("initial catalog=ShoppingCart;Data source=DESKTOP-9KERCOR\\SQLEXPRESS;integrated security=true");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void singlebutton_Click(object sender, EventArgs e)
        {
            con.Open();
            int Active = Convert.ToInt32(DropDownList3.SelectedValue);
            string category = category1.SelectedValue;
            string subcategory = DropDownList2.SelectedValue;
            string Details = product_description.Text;
            string Image = image.Text;
            string Name = product_name.Text;
            int Price =Convert.ToInt32( price.Text);
            cmd = new SqlCommand("addproducts", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@active", Active);
            cmd.Parameters.AddWithValue("@category",category);
            cmd.Parameters.AddWithValue("@subcategory", subcategory);
            cmd.Parameters.AddWithValue("@details",Details);
            cmd.Parameters.AddWithValue("@image",Image);
            cmd.Parameters.AddWithValue("@name",Name);
            cmd.Parameters.AddWithValue("@price", Price);
            int k = cmd.ExecuteNonQuery();
            if (k>0)
            {
                Console.WriteLine("added successfully");
            }

        }
    }
}