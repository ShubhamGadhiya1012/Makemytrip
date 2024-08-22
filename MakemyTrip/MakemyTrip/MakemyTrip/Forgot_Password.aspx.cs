using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MakemyTrip
{
    public partial class Forgot_Password : System.Web.UI.Page
    {
        String data;
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data source=ASUS-TUF-GAMING\\SQLEXPRESS; initial catalog=makemytrip;integrated Security=true";
            con.Open();
            data = Email_signin.Text;

        }
        protected void forgot(object sender, EventArgs e)
        {
            Session["email"] = Email_signin.Text;
           


            cmd.CommandText = "Select * from sign_up where email='" + Email_signin.Text + "' ";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "sign_up");
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["log"] = "true";
                Response.Redirect("New_Password.aspx");
            }







        }
    }
}