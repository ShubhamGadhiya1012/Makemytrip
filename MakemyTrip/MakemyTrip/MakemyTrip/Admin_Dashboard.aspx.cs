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
    public partial class Admin_Dashboard : System.Web.UI.Page
    {

        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {

            con.ConnectionString = "Data source=ASUS-TUF-GAMING\\SQLEXPRESS; initial catalog=makemytrip;integrated Security=true";
            con.Open();



            String query = "select* from D_booking";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            UserView.DataSource = data;
            UserView.DataBind();

            String query1 = "select* from R_booking";
            SqlDataAdapter sda1 = new SqlDataAdapter(query1, con);
            DataTable data1 = new DataTable();
            sda1.Fill(data1);
            GridView1.DataSource = data1;
            GridView1.DataBind();

        }
    }
}