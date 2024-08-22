using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace MakemyTrip
{


    public partial class Contact : System.Web.UI.Page
    {

        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {

            var ses = Session["log"];
            if (ses != null)
            {
                object sessionValue = Session["log"];
                if (sessionValue == "true")
                {

                }
            }
            else
            {

                Response.Redirect("Index.aspx");
            }

            String em = Session["email"].ToString();
            /* String ps = Session["pass"].ToString();
 */
            user_name.Text = em;
            C_Email.Text = em;
            con.ConnectionString = "Data source=ASUS-TUF-GAMING\\SQLEXPRESS; initial catalog=makemytrip;integrated Security=true";
            con.Open();
        }


        protected void Contact_submit(object sender, EventArgs e)
        {
           

            
            SqlCommand cmd = new SqlCommand("insert into ContactUs" + "(c_name,c_email,c_subject,c_message)values(@c_name,@c_email,@c_subject,@c_message)", con);
            cmd.Parameters.AddWithValue("@c_name", C_Name.Text);
            cmd.Parameters.AddWithValue("@c_email", C_Email.Text);
            cmd.Parameters.AddWithValue("@c_subject", C_Subject.Text);
            cmd.Parameters.AddWithValue("@c_message", C_Message.Text);
            cmd.ExecuteNonQuery();
            Response.Redirect("Contact.aspx");

        }

    }
}