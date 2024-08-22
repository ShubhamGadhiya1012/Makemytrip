using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MakemyTrip
{
    public partial class Signup : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data source=ASUS-TUF-GAMING\\SQLEXPRESS; initial catalog=makemytrip;integrated Security=true";
            con.Open();

        }
        protected void signup(object sender, EventArgs e)
        {
            Session["email"] = Email_signup.Text;
            Session["pass"] = Password_signup.Text;


            SqlCommand cmd = new SqlCommand("insert into sign_up" + "(name,email,password)values(@name,@email,@pass)", con);
            cmd.Parameters.AddWithValue("@name", Name_signup.Text);
            cmd.Parameters.AddWithValue("@email", Email_signup.Text);
            cmd.Parameters.AddWithValue("@pass", Password_signup.Text);
            cmd.ExecuteNonQuery();
            Session["log"] = "true";

            Response.Redirect("HomePage.aspx");


        }
    }
}