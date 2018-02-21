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
    public partial class AddStaff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            string gender = string.Empty;
            if (radiomale.Checked)
            {
                gender = "Male";
            }
            else
            {
                gender = "Female";
            }
            if (Page.IsValid)
            {
                btnregister.Text = "Valid";
            }
            else
            {
                btnregister.Text = "Invalid!";
            }

            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-EOGJ6K2\SQLEXPRESS;Initial Catalog=finance;Integrated Security=True");
            con.Open();
            string sql = "insert into tbl_staff(staff_name,staff_address,staff_phno,staff_aadharno,staff_gender,staff_sal,staff_userid,staff_pswd,staff_confrmpswd,type) values('" + txtname.Text.Trim() + "','" + txtaddress.Text.Trim() + "','" + txtcontactno.Text.Trim() + "','" + txtaadhaarno.Text.Trim() + "','" + gender + "','" + txtmonsal.Text.Trim() + "','" + txtuserid.Text.Trim() + "','" + txtpswrd.Text.Trim() + "','" + txtconfmpswd.Text.Trim() + "','" + ddltype.SelectedValue + "')";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Staff details inserted successfully')", true);
        }
    }
}