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
    public partial class EditStaff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["evershine"].ConnectionString);
            con.Open();
            SqlCommand sql = new SqlCommand("select * from tbl_staff where staff_name='" + txtname.Text.Trim() + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(sql);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                txtname.Text = dt.Rows[0][1].ToString();
                txtcustaddress.Text = dt.Rows[0][2].ToString();
                txtaadhaar.Text = dt.Rows[0][0].ToString();
                txtphno.Text = dt.Rows[0][3].ToString();
                txtsal.Text = dt.Rows[0][4].ToString();
                txtuserid.Text = dt.Rows[0][6].ToString();
                txtpswd.Text = dt.Rows[0][7].ToString();
                txtconfrmpswd.Text = dt.Rows[0][8].ToString();   
            }
            con.Close();
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["evershine"].ConnectionString);
            con.Open();
            SqlCommand cmd1 = new SqlCommand("Update tbl_staff set staff_name='" + txtname.Text.Trim() + "',staff_address='" + txtcustaddress.Text.Trim() + "',staff_phno=" + txtphno.Text.Trim() + ",staff_userid='" + txtuserid.Text.Trim() + "',staff_pswd='" + txtpswd.Text.Trim() + "',staff_confrmpswd='" + txtconfrmpswd.Text.Trim() + "',staff_sal=" + txtsal.Text.Trim() + " where staff_name='" + txtname.Text.Trim() + "'", con);
            cmd1.ExecuteNonQuery();
            //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Staff details updated successfully')", true);
            con.Close();

        }

       
    }
}