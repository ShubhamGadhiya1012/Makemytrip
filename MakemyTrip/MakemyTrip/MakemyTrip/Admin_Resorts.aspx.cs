using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;
using System.Xml.Linq;

namespace MakemyTrip
{
    public partial class Admin_Resorts : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        int len;
        int i = 0;
        byte[] bytes1;


        public string[] rid { get; set; }
        public string[] rname { get; set; }
        public string[] rdays { get; set; }
        public string[] rdescription { get; set; }
        public string[] rplace { get; set; }
        public string[] rprice { get; set; }
        public string[] rfacilities { get; set; }
        public string[] rimage { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data source=ASUS-TUF-GAMING\\SQLEXPRESS; initial catalog=makemytrip;integrated Security=true";
            con.Open();
            con.Close();
            retdata();


        }

        protected void publish_res(object sender, EventArgs e)
        {

            String filename = Path.GetFileName(res_Upload.PostedFile.FileName);
            Stream fs = res_Upload.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(fs);
            byte[] imagecode = br.ReadBytes((Int32)fs.Length);

            con.Open();


            SqlCommand cmd = new SqlCommand("insert into Admin_Resorts" + "(name,days,description,place,price,facilities,image)values(@name,@days,@des,@place,@price,@fac,@image)", con);
            cmd.Parameters.AddWithValue("@name", Resort_name.Text);
            cmd.Parameters.AddWithValue("@days", Resort_day.Text);
            cmd.Parameters.AddWithValue("@des", Resort_des.Text);
            cmd.Parameters.AddWithValue("@place", Resort_place.Text);
            cmd.Parameters.AddWithValue("@price", Resort_price.Text);
            cmd.Parameters.AddWithValue("@fac", Resort_fac.Text);
            cmd.Parameters.AddWithValue("@image", imagecode);
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("Admin_Resorts.aspx");
        }

        public void retdata()
        {
            datacount();

            rid = new string[len];
            rname = new string[len];
            rdays = new string[len];
            rdescription = new string[len];
            rplace = new string[len];
            rprice = new string[len];
            rfacilities = new string[len];
            rimage = new string[len];



            con.Open();


            cmd = new SqlCommand("SELECT * FROM Admin_Resorts", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                String r_id = reader.GetInt32(0).ToString();
                String r_name = reader.GetString(1);
                String r_days = reader.GetString(2);
                String r_desc = reader.GetString(3);
                String r_place = reader.GetString(4);
                String r_price = reader.GetString(5);
                String r_facilities = reader.GetString(6);

                bytes1 = (byte[])reader["image"];
                string url = "data:image/jpg;base64," + Convert.ToBase64String(bytes1);
                rid.SetValue(r_id, i);
                rname.SetValue(r_name, i);
                rdays.SetValue(r_days, i);
                rdescription.SetValue(r_desc, i);
                rplace.SetValue(r_place, i);
                rprice.SetValue(r_price, i);
                rfacilities.SetValue(r_facilities, i);
                rimage.SetValue(url, i);
                i++;



            }
            con.Close();



        }





        public void datacount()
        {

            String connectionString = "Data source=ASUS-TUF-GAMING\\SQLEXPRESS; initial catalog=makemytrip;integrated Security=true";


            String query = "select count(*) from Admin_Resorts";
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
