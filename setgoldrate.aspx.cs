using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Evershine
{
    public partial class setgoldrate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtratedate.Text = DateTime.Now.ToShortDateString();
        }

        protected void btnrate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-EOGJ6K2\SQLEXPRESS;Initial Catalog=finance;Integrated Security=True");
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select count(1) from tbl_goldrate where rate_date=CONVERT(DATE,GETDATE());", con);
            int ob = Convert.ToInt16(cmd1.ExecuteScalar());
            if (ob == 0)
            {
                string Sql= "insert into tbl_goldrate(rate,rate_date) values('" + txtrate.Text.Trim() + "','" + txtratedate.Text.Trim() + "')";
                SqlCommand cmd = new SqlCommand(Sql,con);
                cmd.ExecuteNonQuery();
            }
            else
            {
                Response.Redirect("Adminhome.aspx");
            }
            
    
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Gold rate set successfully')", true);
        }

       
    }
}