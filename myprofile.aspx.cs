using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace Shopping_Cart
{
    public partial class myprofile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("initial catalog=ShoppingCart;Data source=DESKTOP-9KERCOR\\SQLEXPRESS;integrated security=true");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                showdetails();
        }
        public void showdetails()
        {
            int userid = SessionHelper.UserId;
            cmd = new SqlCommand("select * from users where id = '" + userid + "' ");
            SqlDataAdapter st = new SqlDataAdapter();
            cmd.Connection = con;
            con.Open();
            st.SelectCommand = cmd;
            DataTable dtable = new DataTable();
            st.Fill(dtable);
            users.DataSource = dtable;
            users.DataBind();
            con.Close();
        }

        public void Updatedetails(object sender, EventArgs e)
        {
            for (int j = 0; j < users.Controls.Count; j++)
            {
                // if controls named "lbl1" & "lbl2" exist
                // if (users.Items[j].FindControl("lbl1") != null && users.Items[j].FindControl("lbl2") != null)
                {
                    // cast the controls to TextBoxes and then get their Text Property
                    string lbl1Text = ((TextBox)users.Items[j].FindControl("txtbox1")).Text;
                    //string lbl2Text = ((Label)users.Items[j].FindControl("lbl2")).Text;

                    // Display them
                    TextBox tb = (TextBox)users.Items[j].FindControl("Textbox2");
                    //tb.Text = lbl1Text + " " + lbl2Text;
                }
            }
        }
    }
}