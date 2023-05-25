using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
namespace Ajax
{
    public partial class Employee : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadd_Click(object sender, EventArgs e)
       {
                string check = "select emp_id from employee where emp_id = @id ";
                SqlDataAdapter adp = new SqlDataAdapter(check, con);
                adp.SelectCommand.Parameters.AddWithValue("@id", txtid.Text);
                DataTable dt = new DataTable();
                int i = 0;
                i = adp.Fill(dt);
                if (i >= 1)
                {
                    lblmsg.ForeColor = Color.Red;
                    lblmsg.Text = "Id already exists....";
                }
                else
                {
                    string str = "insert into employee values(@id,@email,@name,@dept)";
                    SqlCommand cmd = new SqlCommand(str, con);
                    cmd.Parameters.AddWithValue("@id", txtid.Text);
                    cmd.Parameters.AddWithValue("@email", txtemail.Text);
                    cmd.Parameters.AddWithValue("@name", txtname.Text);
                    cmd.Parameters.AddWithValue("@dept", Dd1.SelectedItem.Text);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Data saved ...')</script>");
                    txtid.Text = "";
                    txtname.Text = "";
                    txtemail.Text = "";
                    Dd1.SelectedItem.Text = "";
                }
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {

        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {

        }

        protected void btnfind_Click(object sender, EventArgs e)
        {

        }

        protected void btncheck_Click(object sender, EventArgs e)
        {
            string check = "select emp_id from employee where emp_id = @id ";
            SqlDataAdapter adp = new SqlDataAdapter(check, con);
            adp.SelectCommand.Parameters.AddWithValue("@id", txtid.Text);
            DataTable dt = new DataTable();
            int i = 0;
            i = adp.Fill(dt);
            if(i>=1)
            {
                lblmsg.ForeColor = Color.Red;
                lblmsg.Text = "Id already exists....";
            }
            else
            {
                lblmsg.ForeColor = Color.Green;
                lblmsg.Text = "Id is available";
            }
        }

        protected void btnadd_Click1(object sender, EventArgs e)
        {

        }
    }
}