using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace MakemyTrip
{
    public partial class Destination : System.Web.UI.Page
    {


        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        int len;
        int i = 0;
        byte[] bytes1;


        public string[] dname { get; set; }

        public string[] ddays { get; set; }
        public string[] ddescription { get; set; }
        public string[] dplace { get; set; }
        public string[] dprice { get; set; }
        public string[] dcategory { get; set; }
        public string[] dimage { get; set; }
        public string[] did { get; set; }



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

            String em = Session["email"].ToString();
            /* String ps = Session["pass"].ToString();
 */
            user_name.Text = em;



            con.ConnectionString = "Data source=ASUS-TUF-GAMING\\SQLEXPRESS; initial catalog=makemytrip;integrated Security=true";
            con.Open();
            con.Close();
            retdata();


        }


        public void retdata() {




            datacount();

            dname = new string[len];
            ddays = new string[len];
            ddescription = new string[len];
            dplace = new string[len];
            dprice = new string[len];
            dcategory = new string[len];
            dimage = new string[len];
            did = new string[len];




            con.Open();


            cmd = new SqlCommand("SELECT * FROM Admin_Destinations", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                String d_name = reader.GetString(1);
                String d_days = reader.GetString(2);
                String d_desc = reader.GetString(3);
                String d_place = reader.GetString(4);
                String d_price = reader.GetString(5);
                String d_category = reader.GetString(6);
                String id = reader.GetInt32(0).ToString();

                bytes1 = (byte[])reader["image"];
                string url = "data:image/jpg;base64," + Convert.ToBase64String(bytes1);

                dname.SetValue(d_name, i);
                did.SetValue(id, i);
                ddays.SetValue(d_days, i);
                ddescription.SetValue(d_desc, i);
                dplace.SetValue(d_place, i);
                dprice.SetValue(d_price, i);
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