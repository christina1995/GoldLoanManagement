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
    public partial class addcustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-EOGJ6K2\SQLEXPRESS;Initial Catalog=finance;Integrated Security=True");

                con.Open();
                string com = "Select district_name,district_id from tbl_district";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                dropdowndis.DataSource = dt;
                dropdowndis.DataBind();
                dropdowndis.DataTextField = "district_name";
                dropdowndis.DataValueField = "district_name";
                dropdowndis.DataBind();
                dropdowndis.Items.Insert(0, new ListItem("--Select District--", "0"));
                con.Close();
                btnregister.Attributes.Add("onclick", "popWin();return false;");
            }

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
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-EOGJ6K2\SQLEXPRESS;Initial Catalog=finance;Integrated Security=True");
            con.Open();
            string sql = "insert into tbl_customer (cust_name,cust_address,cust_phno,cust_aadharno,cust_pin,cust_gender,cust_district,cust_area) values('" + txtname.Text.Trim() + "','" + txtaddress.Text.Trim() + "','" + txtcontactno.Text.Trim() + "','" + txtaadhaar.Text.Trim() + "','" + txtpincode.Text.Trim() + "','" + gender + "','" + dropdowndis.SelectedValue + "','" + dropdownarea.SelectedValue + "')";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Customer details inserted successfully')", true);
            Response.Redirect("Adminhome.aspx");

        }
        protected void dropdowndis_SelectedIndexChanged(object sender, EventArgs e)
        {


            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-EOGJ6K2\SQLEXPRESS;Initial Catalog=finance;Integrated Security=True");
            con.Open();
            string comm = "Select area_name,area_id from tbl_area where district_id='" + dropdowndis.SelectedValue + "' ";
            SqlDataAdapter adptt = new SqlDataAdapter(comm, con);
            DataTable dt = new DataTable();
            adptt.Fill(dt);
            dropdownarea.DataSource = dt;
            dropdownarea.DataBind();
            dropdownarea.DataTextField = "area_name";
            dropdownarea.DataValueField = "area_name";
            dropdownarea.DataBind();
            con.Close();

        }
        protected void dropdownarea_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}