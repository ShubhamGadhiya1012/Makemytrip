using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using static System.Net.Mime.MediaTypeNames;
using System.Security.Cryptography;
using System.Xml.Linq;
using System.Collections;

namespace MakemyTrip
{
    public partial class User_Profile : System.Web.UI.Page
    {

        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        SqlDataReader reader;



        int id;

        int len;
        int i = 0;



        
        byte[] bytes1;

        public string[] hemail { get; set; }
        public string[] hphone { get; set; }
        public string[] hname { get; set; }
        public string[] haddress { get; set; }
        public string[] hadult { get; set; }
        public string[] hchild { get; set; }
        public string[] harrival { get; set; }
        public string[] hdep { get; set; }
        public string[] hpay { get; set; }
        public string[] hid { get; set; }
        public string[] pname { get; set; }
        public string[] pprice { get; set; }
        public string[] pdays { get; set; }






        public string[] hremail { get; set; }
        public string[] hrphone { get; set; }
        public string[] hrname { get; set; }
        public string[] hraddress { get; set; }
        public string[] hrperson { get; set; }
        public string[] hrbed { get; set; }
        public string[] hrarrival { get; set; }
        public string[] hrdep { get; set; }
        public string[] hrpay { get; set; }
        public string[] hrid { get; set; }
        public string[] prname { get; set; }
        public string[] prprice { get; set; }
        public string[] prdays { get; set; }





        String d_name;
        String em;
       

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

             em = Session["email"].ToString();
            user_name.Text = em;


         


            con.ConnectionString = "Data source=ASUS-TUF-GAMING\\SQLEXPRESS; initial catalog=makemytrip;integrated Security=true";
            con.Open();
            con.Close();

            retdata();
            hretdata();






        }



        public void retdata()
        {




            datacount();

            hid = new string[len];
            hname = new string[len];
            hemail = new string[len];
            hphone = new string[len];
            haddress = new string[len];
            harrival = new string[len];
            hdep = new string[len];
            hadult = new string[len];
            hchild = new string[len];
            hpay = new string[len];
            pname = new string[len];
            pprice = new string[len];
            pdays = new string[len];

            con.Open();



            cmd = new SqlCommand("SELECT * FROM sign_up where email= '" + em + "'", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                id = reader.GetInt32(0);

            }
            reader.Close();



            cmd = new SqlCommand("SELECT * FROM D_booking where id= '" + id + "'", con);
             reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                String h_id = reader.GetInt32(0).ToString();
                String h_name = reader.GetString(1);
                String h_email = reader.GetString(2);
                String h_phone = reader.GetString(3);
                String h_address = reader.GetString(4);
                String h_adult = reader.GetString(5);
                String h_child = reader.GetString(6);
                String h_arrival = reader.GetString(7);
                String h_dep = reader.GetString(8);
                String h_pay = reader.GetString(9);
                String h_pname = reader.GetString(10);
                String h_pprice = reader.GetString(11);
                String h_pdays = reader.GetString(12);
                
              
                hid.SetValue(h_id, i);
                hname.SetValue(h_name, i);
                hemail.SetValue(h_email, i);
                hphone.SetValue(h_phone, i);
                haddress.SetValue(h_address, i);
                hadult.SetValue(h_adult, i);
                hchild.SetValue(h_child, i);
                harrival.SetValue(h_arrival, i);
                hdep.SetValue(h_dep, i);
                hpay.SetValue(h_pay, i);
                pname.SetValue(h_pname, i);
                pprice.SetValue(h_pprice, i);
                pdays.SetValue(h_pdays, i);
                i++;



            }
            con.Close();



        }


        public void datacount()
        {
            String connectionString = "Data source=ASUS-TUF-GAMING\\SQLEXPRESS; initial catalog=makemytrip;integrated Security=true";

       
            con.Open();
            cmd = new SqlCommand("SELECT * FROM sign_up where email= '" + em + "'", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                id = reader.GetInt32(0);

            }
            reader.Close();


            String query = "select count(*) from D_booking where id= '" + id + "' ";
            
            con.Close();    
            
            using (SqlConnection connection = new SqlConnection(connectionString))
            {

                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                len = (int) command.ExecuteScalar();
                Console.WriteLine(len);

                connection.Close();
            }

        }





        public void hretdata()
        {




            hdatacount();

            hrid = new string[len];
            hrname = new string[len];
            hremail = new string[len];
            hrphone = new string[len];
            hraddress = new string[len];
            hrarrival = new string[len];
            hrdep = new string[len];
            hrperson = new string[len];
            hrbed = new string[len];
            hrpay = new string[len];
            prname = new string[len];
            prprice = new string[len];
            prdays = new string[len];

            con.Open();



            cmd = new SqlCommand("SELECT * FROM sign_up where email= '" + em + "'", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                id = reader.GetInt32(0);

            }
            reader.Close();



            cmd = new SqlCommand("SELECT * FROM R_booking where id= '" + id + "'", con);
            reader = cmd.ExecuteReader();
            int i = 0;
            while (reader.Read())
            {
                String hr_id = reader.GetInt32(0).ToString();
                String hr_name = reader.GetString(1);
                String hr_email = reader.GetString(2);
                String hr_phone = reader.GetString(3);
                String hr_address = reader.GetString(4);
                String hr_person = reader.GetString(5);
                String hr_bed = reader.GetString(6);
                String hr_arrival = reader.GetString(7);
                String hr_dep = reader.GetString(8);
                String hr_pay = reader.GetString(9);
                String hr_pname = reader.GetString(10);
                String hr_pprice = reader.GetString(11);
                String hr_pdays = reader.GetString(12);


                hrid.SetValue(hr_id, i);
                hrname.SetValue(hr_name, i);
                hremail.SetValue(hr_email, i);
                hrphone.SetValue(hr_phone, i);
                hraddress.SetValue(hr_address, i);
                hrperson.SetValue(hr_person, i);
                hrbed.SetValue(hr_bed, i);
                hrarrival.SetValue(hr_arrival, i);
                hrdep.SetValue(hr_dep, i);
                hrpay.SetValue(hr_pay, i);
                prname.SetValue(hr_pname, i);
                prprice.SetValue(hr_pprice, i);
                prdays.SetValue(hr_pdays, i);
                i++;



            }
            con.Close();



        }



        public void hdatacount()
        {
            String connectionString = "Data source=ASUS-TUF-GAMING\\SQLEXPRESS; initial catalog=makemytrip;integrated Security=true";


            con.Open();
            cmd = new SqlCommand("SELECT * FROM sign_up where email= '" + em + "'", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                id = reader.GetInt32(0);

            }
            reader.Close();


            String query = "select count(*) from R_booking where id= '" + id + "' ";

            con.Close();

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