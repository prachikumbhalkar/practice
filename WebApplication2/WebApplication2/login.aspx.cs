using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //properties//
            string u = TextBox1.Text;
            string pass = TextBox2.Text;
            string em = TextBox3.Text;
            try
            {

                //connect to data base//
                string cn = "server=DESKTOP-STVS41N\\SQLEXPRESS;integrated security=true;database=prachi2";
                //use the sql connection//
                SqlConnection con = new SqlConnection(cn);
                //open the connection//
                con.Open();
                // select query//
                string qr = "select emailid and password from studentdata where emailid='" + em + "'and password='" + pass + "'";
                // sqlcommand for execution//
                SqlCommand command = new SqlCommand(qr, con);
                //data reader//
                SqlDataReader dr = command.ExecuteReader();
                int k = 0;
                while (dr.Read ())
                {
                    k = 1;
                }
                con.Close();

                if (k==1)
                {
                    Response.Redirect("dashboard.aspx");
                }
                else
                {
                    Label1.Text = "invalid credential";

                }

            }
            catch (Exception ee)
            {

            }
        }
    }
}