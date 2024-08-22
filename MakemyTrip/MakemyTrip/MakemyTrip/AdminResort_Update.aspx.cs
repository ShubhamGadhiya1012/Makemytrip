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
    public partial class Admin_Update : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {


            var ses = Session["log1"];
            if (ses != null)
            {
                Response.Redirect("Admin_Signin.aspx");
            }
            else
            {

                if (Request.QueryString["urid"] == null || Request.QueryString["urid"].Length == 0)
                {
                    Response.Redirect("Admin_Resorts.aspx");
                }
                else
                {
                    id = Request.QueryString["urid"];
                    

                }
            }

        }
        public void get_res(object sender, EventArgs e)
        {
            getData(Request.QueryString["urid"]);
        }

        public void getData(string id)
        {
            con.ConnectionString = "Data source=ASUS-TUF-GAMING\\SQLEXPRESS; initial catalog=makemytrip;integrated Security=true";
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Admin_Resorts where id=@id", con);
            cmd.Parameters.AddWithValue("@id", id);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {

                TextBox1.Text = reader.GetString(1);
                TextBox2.Text = reader.GetString(2);
                TextBox3.Text = reader.GetString(3);
                TextBox4.Text = reader.GetString(4);
                TextBox5.Text = reader.GetString(5);
                TextBox6.Text = reader.GetString(6);

            }
            con.Close();
            reader.Close();
        }



        public void update_des(object sender, EventArgs e)
        {
            id = Request.QueryString["urid"];
            con.ConnectionString = "Data source=ASUS-TUF-GAMING\\SQLEXPRESS; initial catalog=makemytrip;integrated Security=true";
            string query = "UPDATE Admin_Resorts SET " +
    "name=@rname1, days=@rname2, description=@rname3, place=@rname4, price=@rname5, facilities=@rname6 " +
    "WHERE id=@id";

            // Create a new SqlCommand object
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.Parameters.AddWithValue("@rname1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@rname2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@rname3", TextBox3.Text);
            cmd.Parameters.AddWithValue("@rname4", TextBox4.Text);
            cmd.Parameters.AddWithValue("@rname5", TextBox5.Text);
            cmd.Parameters.AddWithValue("@rname6", TextBox6.Text);
            cmd.Parameters.AddWithValue("@id",id);

            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("Admin_Resorts.aspx");
            // Execute the update query

        }



    }

}