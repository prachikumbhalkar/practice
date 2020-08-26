using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace WebApplication3
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // Label1.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //prperties//
            string u = TextBox1.Text;
            string p = TextBox2.Text;
            string em = TextBox4.Text;
            string mn = TextBox5.Text;
            string add = TextBox6.Text;
            int age = Convert.ToInt32(TextBox7.Text);
            string g = null;
            try
            {
                if (RadioButton1.Checked)
                {
                    g = RadioButton1.Text;
                }
                else if (RadioButton2.Checked)
                {
                    g = RadioButton2.Text;
                }
                string cn = "server=.\\SQLEXPRESS;integrated security=true;database=prachi1";
                //create the sql connecion//
                SqlConnection con = new SqlConnection(cn);
                //insert query//
                con.Open();
                // string qr = "insert into studentrecord (username,password,emailid,mobilenumber,permantaddress,age,gender) values ('" + u + "','" + p + "','" + em + "','" + mn + "','" + add + "','" + age + "','" + g + "')";
                //execute command//

                string qr = "insert into studentrecord (username, password,emailid,mobilenumber,permantaddress,age,gender) values ('" + u + "','"+p+"','"+em+"','"+mn+"','"+add+"','"+age+"','"+g+"')";
                SqlCommand command = new SqlCommand(qr, con);
                command.ExecuteNonQuery();
                con.Close();
                Label1.Text = "registraton successful";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                //connect the data base//
                //Label1.Text = "saved";
            }
            catch (Exception ee)
            {
                Label1.Text = ee.ToString();
            }
            finally
            {
                
            }
        }
    }
}