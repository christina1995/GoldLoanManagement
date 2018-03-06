using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Evershine
{
    public partial class GoldloanEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["evershine"].ConnectionString);
            con.Open();
            SqlCommand sql = new SqlCommand("select * from tbl_customer where cust_name='" + txtname.Text.Trim() + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(sql);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                txtphno.Text = dt.Rows[0][2].ToString();
                txtcustaddress.Text = dt.Rows[0][3].ToString();

            }   
        }

    }
}