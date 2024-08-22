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

        
    public partial class Index : System.Web.UI.Page
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
       
        protected void signin(object sender, EventArgs e)
        {
            Session["email"] = Email_signin.Text;
            Session["pass"] = Password_signin.Text;


            cmd.CommandText = "Select * from sign_up where email='" + Email_signin.Text + "' and password='" + Password_signin.Text + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "sign_up");
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["log"] = "true";
                Response.Redirect("HomePage.aspx");
            }






        }

    }
}