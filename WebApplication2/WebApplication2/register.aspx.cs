using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //properties//
            string u = TextBox1.Text;
            string pass = TextBox2.Text;
            string em = TextBox4.Text;
            int age = Convert.ToInt32(TextBox5.Text);
            string g = null;
            // coding for gender button//
            if (RadioButton1.Checked)
            {
                g = RadioButton1.Text;
            }
            else if (RadioButton2.Checked)
            {
                g = RadioButton2.Text;
            }
            try
            {
                // connecting to data base//
                string cn = "server=DESKTOP-STVS41N\\SQLEXPRESS;integrated security=true;database=prachi2";
                // use the sql connection//
                SqlConnection con = new SqlConnection(cn);
                //open the connection//
                con.Open();
                // insert query //
                string qr = "insert into studentdata (username,password,emailid,age,gender) values ('" + u + "','" + pass + "','" + em + "','" + age + "','" + g + "') ";
                // sql command for execution//
                SqlCommand command = new SqlCommand(qr, con);
                command.ExecuteNonQuery();
                con.Close();
                Label1.Text = "registration successful";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
            }
            catch (Exception ee)
            {
                Label1.Text = ee.ToString();
            }
        }
    }
}