using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using System.Security.Cryptography;

namespace MakemyTrip
{
    public partial class Admin_Destinations : System.Web.UI.Page
    {

        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        int len;
        int i = 0;
        byte[] bytes1;
        String pid;


        public string[] did { get; set; }
        public string[] dname { get; set; }
        public string[] ddays { get; set; }
        public string[] ddescription { get; set; }
        public string[] dplace { get; set; }
        public string[] dprice { get; set; }
        public string[] dcategory { get; set; }
        public string[] dimage { get; set; }





        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data source=ASUS-TUF-GAMING\\SQLEXPRESS; initial catalog=makemytrip;integrated Security=true";
            con.Open();
            con.Close();
            retdata();

            //if (Request.QueryString["id"] == null)
            //{
            //    Response.Redirect("Admin_Destinations.aspx");
            //}
            //else
            //{
            //    con.ConnectionString = "Data source=ASUS-TUF-GAMING\\SQLEXPRESS; initial catalog=makemytrip;integrated Security=true";
            //    con.Open();
            //    con.Close();
            //    pid = Request.QueryString["id"];
            //}









        }


        protected void publish_des(object sender, EventArgs e)
        {
            String categeroy_name = "";

            if (Winter.Checked)
            {
                categeroy_name = Winter.Text;
            }
            else if (Summer.Checked)
            {
                categeroy_name = Summer.Text;
            }
            else if (Monsoon.Checked)
            {

                categeroy_name = Monsoon.Text;
            }


            String filename = Path.GetFileName(Des_Upload.PostedFile.FileName);
            Stream fs = Des_Upload.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(fs);
            byte[] imagecode = br.ReadBytes((Int32)fs.Length);

            con.Open();


            SqlCommand cmd = new SqlCommand("insert into Admin_Destinations" + "(name,days,description,place,price,category,image)values(@name,@days,@des,@place,@price,@category,@image)", con);
            cmd.Parameters.AddWithValue("@name", Admin_destination.Text);
            cmd.Parameters.AddWithValue("days", Admin_days.Text);
            cmd.Parameters.AddWithValue("@des", Admin_des.Text);
            cmd.Parameters.AddWithValue("@place", Admin_place.Text);
            cmd.Parameters.AddWithValue("@price", Admin_price.Text);
            cmd.Parameters.AddWithValue("@category", categeroy_name);
            cmd.Parameters.AddWithValue("@image", imagecode);
            cmd.ExecuteNonQuery();
            Session["log"] = "true";



            con.Close();

            Response.Redirect("Admin_Destinations.aspx");


        }


        public void retdata()
        {


            datacount();

            did = new string[len];
            dname = new string[len];
            ddays = new string[len];
            ddescription = new string[len];
            dprice = new string[len];
            dplace = new string[len];
            dcategory = new string[len];
            dimage = new string[len];



            con.Open();


            cmd = new SqlCommand("SELECT * FROM Admin_Destinations", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                String d_id = reader.GetInt32(0).ToString();
                String d_name = reader.GetString(1);
                String d_days = reader.GetString(2);
                String d_desc = reader.GetString(3);
                String d_price = reader.GetString(4);
                String d_place = reader.GetString(5);
                String d_category = reader.GetString(6);

                bytes1 = (byte[])reader["image"];
                string url = "data:image/jpg;base64," + Convert.ToBase64String(bytes1);
                did.SetValue(d_id, i);
                dname.SetValue(d_name, i);
                ddays.SetValue(d_days, i);
                ddescription.SetValue(d_desc, i);
                dprice.SetValue(d_price, i);
                dplace.SetValue(d_place, i);
                dcategory.SetValue(d_category, i);
                dimage.SetValue(url, i);
                i++;



            }
            con.Close();



        }





        public void datacount()
        {

            String connectionString = "Data source=ASUS-TUF-GAMING\\SQLEXPRESS; initial catalog=makemytrip;integrated Security=true";


            String query = "select count(*) from Admin_Destinations";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {

                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                len = (int)command.ExecuteScalar();
                Console.WriteLine(len);

                connection.Close();
            }




        }



           }
}