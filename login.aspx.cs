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
    public partial class login : System.Web.UI.Page
    {
        int RowCount, id;
        string UserName, Password;
        protected void Page_Load(object sender, EventArgs e)
        {
           
           
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
             SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-EOGJ6K2\SQLEXPRESS;Initial Catalog=finance;Integrated Security=True");
            con.Open();

            SqlCommand cmd = new SqlCommand("select * from tbl_staff ", con);
            // cmd.Parameters.AddWithValue("@username", txtusername.Text);
            //cmd.Parameters.AddWithValue("@word", txtpass.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new System.Data.DataTable();
            sda.Fill(dt);

            RowCount = dt.Rows.Count;

            for (int i = 0; i < RowCount; i++)
            {

                UserName = dt.Rows[i]["staff_userid"].ToString();

                Password = dt.Rows[i]["staff_pswd"].ToString();
                id = Int32.Parse(dt.Rows[i]["id"].ToString());


                if (UserName == txtusername.Text && Password == txtpass.Text)
                {

                    Session["staff_userid"] = id;

                    if (dt.Rows[i]["type"].ToString() == "ADMIN")
                    {
                        SqlCommand cmd1 = new SqlCommand("select count(1) from tbl_goldrate where rate_date=CONVERT(DATE,GETDATE());", con);
                        int ob = Convert.ToInt16(cmd1.ExecuteScalar());
                        if (ob == 0)
                        {
                            Response.Redirect("setgoldrate.aspx");
                        }
                        else
                        {
                            Response.Redirect("Adminhome.aspx");
                        }
                    }
                    else if (dt.Rows[i]["type"].ToString() == "STAFF")

                        Response.Redirect("staff home.aspx");           

                }

              //  else
                //{

                  //  Label1.Text = "Invalid User Name or Password! Please try again!";

                //}
            }
        }
    }
}