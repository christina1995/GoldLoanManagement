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
    public partial class GoldLoanIssual : System.Web.UI.Page
    {
        
        //public string wt;
        public string itname;
        public int goldrate;
        //public string ct;
        //public string at;
        Double txtamt = 0.0;
        private DateTime amt;
        protected void Page_Load(object sender, EventArgs e)
        {
            //lblrate.Text = DateTime.Now.ToShortDateString();
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["evershine"].ConnectionString);
                con.Open();
                SqlCommand sql = new SqlCommand("select  rate from tbl_goldrate where  rate_date=CONVERT(DATE,GETDATE())", con);
                SqlDataAdapter da = new SqlDataAdapter(sql);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    lblrate.Text = dt.Rows[0][0].ToString();
                   
                }
                this.BindGrid();
            }

        }
       
        private void BindGrid()
        {


            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["evershine"].ConnectionString);
            con.Open();
            
            string cmd = "SELECT [item_id], [item_name], [IsSelected] FROM tbl_golditem";
            
            SqlDataAdapter adpt=new SqlDataAdapter(cmd,con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            gvgoldloan.DataSource = dt;
            gvgoldloan.DataBind();
         }
       

        protected void btntotal_Click(object sender, EventArgs e)
        {
            
            foreach (GridViewRow row in gvgoldloan.Rows)
            {
                 //wt = gvgoldloan.Rows[row.RowIndex].Cells[1].Text;
                 //Get the HobbyId from the DataKey property.
                 //int item_id = Convert.ToInt16(gvgoldloan.DataKeys[row.RowIndex].Values);
                 //Get the checked value of the CheckBox.
                CheckBox cb = (row.Cells[0].FindControl("chkSelect") as CheckBox);
                if(cb.Checked)
                {
                     TextBox twt = (TextBox)row.Cells[2].FindControl("txtweight");
                     Double wt = Convert.ToDouble(twt.Text);
                     TextBox tct = (TextBox)row.Cells[3].FindControl("txtcount");
                     Double ct = Convert.ToDouble(tct.Text);
                     TextBox tamt = (TextBox)row.Cells[4].FindControl("txtamount");
   
                     SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["evershine"].ConnectionString);
                     con.Open();
                     SqlCommand sql = new SqlCommand("select constant_value from tbl_settings where constant_name='goldloan_rate'", con);
                     SqlDataAdapter da = new SqlDataAdapter(sql);
                     DataTable dt = new DataTable();
                     da.Fill(dt);
                     // Double rate = dt.Rows[0][0].ToString();
                     Double trate = Convert.ToDouble(lblrate.Text);
                     Double rate = Convert.ToDouble(dt.Rows[0][0].ToString());
                     Double frate = trate * rate;
                     // Double amt = wt * ct;
                     Double amt = wt * frate;
                     tamt.Text = amt.ToString();
                     txtamt = txtamt + amt;
                     itname = Convert.ToString(gvgoldloan.Rows[row.RowIndex].Cells[1].Text);
                     SqlConnection conne = new SqlConnection(ConfigurationManager.ConnectionStrings["evershine"].ConnectionString);
                     conne.Open();
                     SqlCommand cmd = new SqlCommand("insert into  tbl_goldissue (item_id,weight,count,cust_id,gold_rate,amount_per_item,gl_no) values ('" + itname + "','" + wt + "','" + ct + "'," + hdempid.Value + "," + lblrate.Text + ","+amt+",'"+ txtglno.Text.Trim()+"')");
                     cmd.Connection = conne;
                     cmd.ExecuteNonQuery();
                     conne.Close();
                     
                }
                txttotal.Text = Convert.ToString(txtamt);


             }  
        }
       
        protected void btnsearch_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["evershine"].ConnectionString);
            con.Open();
            SqlCommand sql = new SqlCommand("select * from tbl_customer where cust_name='" + txtcustname.Text.Trim() + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(sql);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                hdempid.Value=dt.Rows[0][8].ToString();
                txtphno.Text = dt.Rows[0][2].ToString();
                txtcustaddress.Text = dt.Rows[0][3].ToString();
            }   
         }
         
     }
   }
       
  