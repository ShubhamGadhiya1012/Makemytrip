using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MakemyTrip
{
    public partial class Admin_Signin : System.Web.UI.Page
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

        protected void Admin_SigninBtn(object sender, EventArgs e)
        {
            cmd.CommandText = "Select * from Admin_Signup where email='" + AdminEmailSignin.Text + "' and password='" + AdminPasswordSignin.Text + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "sign_up");
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["log"] = "true";
                Response.Redirect("Admin_Dashboard.aspx");

            }

        }


    }
}