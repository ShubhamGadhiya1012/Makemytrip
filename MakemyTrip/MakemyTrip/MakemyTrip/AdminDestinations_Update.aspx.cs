using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Runtime.Remoting.Channels;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MakemyTrip
{
    public partial class AdminDestinations_Update : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        string id;


        protected void Page_Load(object sender, EventArgs e)
        {

           

                if (Request.QueryString["uid"] == null || Request.QueryString["uid"].Length == 0)
                {
                    Response.Redirect("Admin_Destinations.aspx");
                }
                else
                {
                    id = Request.QueryString["uid"];
                    
                }
            

        }

        protected void retrive_des(object sender, EventArgs e)
        {
            getData(Request.QueryString["uid"]);

        }


        public void getData(string id)
        {
            con.ConnectionString = "Data source=ASUS-TUF-GAMING\\SQLEXPRESS; initial catalog=makemytrip;integrated Security=true";
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Admin_Destinations where id=@id", con);
            cmd.Parameters.AddWithValue("@id", id);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
               
                TextBox1.Text = reader.GetString(1);
                TextBox2.Text = reader.GetString(2);
                TextBox3.Text = reader.GetString(3);
                TextBox4.Text = reader.GetString(4);
                TextBox5.Text = reader.GetString(5);
                
            }
            con.Close();
            reader.Close();
        }


     
        public void update_des(object sender, EventArgs e)
        {
            id = Request.QueryString["uid"];
            con.ConnectionString = "Data source=ASUS-TUF-GAMING\\SQLEXPRESS; initial catalog=makemytrip;integrated Security=true";
            string query = "UPDATE Admin_Destinations SET " +
    "name=@dname1, days=@dname2, description=@dname3, place=@dname4, price=@dname5 " +
    "WHERE id=@id";

            // Create a new SqlCommand object
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.Parameters.AddWithValue("@dname1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@dname2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@dname3", TextBox3.Text);
            cmd.Parameters.AddWithValue("@dname4", TextBox4.Text);
            cmd.Parameters.AddWithValue("@dname5", TextBox5.Text);
            cmd.Parameters.AddWithValue("@id",id);

            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("Admin_Destinations.aspx");
            // Execute the update query

        }



    }
    

}