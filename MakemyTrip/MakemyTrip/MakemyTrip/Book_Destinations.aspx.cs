using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace MakemyTrip
{
    public partial class Book_Destinations : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        String hid;
        String pid;
        String p_name;
        String p_price;
        String p_days;


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
            bookEmail.Text = em;




            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("Destination.aspx");
            }
            else
            {
                con.ConnectionString = "Data source=ASUS-TUF-GAMING\\SQLEXPRESS; initial catalog=makemytrip;integrated Security=true";
                con.Open();
                con.Close();
                pid = Request.QueryString["id"];
                  }

        }
        protected void btn_des(object sender, EventArgs e)
        {

            String payment_name = "";

            if (Cash.Checked)
            {
                payment_name = Cash.Text;
            }
            else if (Credit.Checked)
            {
                payment_name = Credit.Text;
            }
            else if (Upi.Checked)
            {

                payment_name = Upi.Text;
            }



            con.Open();
           
            String em = Session["email"].ToString();
            cmd = new SqlCommand("SELECT * FROM sign_up where email= '" + em + "'", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                 hid = reader.GetInt32(0).ToString();


            }
            reader.Close();
            con.Close();


            con.Open();

            cmd = new SqlCommand("SELECT * FROM Admin_Destinations where id= '" + pid + "'", con);
             reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                 p_name = reader.GetString(1);
                 p_price = reader.GetString(5);
                 p_days = reader.GetString(2);

            }
          
            reader.Close();


            con.Close();   





            con.Open();

            cmd = new SqlCommand("insert into D_booking" + "(id,D_name,D_email,D_number,D_address,D_adult,D_children,D_arrival,D_departure,D_payment,D_pname,D_pprice,D_pdays)values(@id,@dname,@demail,@dnumber,@daddress,@dadult,@dchildren,@darrival,@ddeparture,@dpayment,@pname,@pprice,@pdays)", con);
            cmd.Parameters.AddWithValue("@id", hid);
            cmd.Parameters.AddWithValue("@dname", bookName.Text);
            cmd.Parameters.AddWithValue("@demail", bookEmail.Text);
            cmd.Parameters.AddWithValue("@dnumber", bookPhn.Text);
            cmd.Parameters.AddWithValue("@daddress", bookAddress.Text);
            cmd.Parameters.AddWithValue("@dadult", bookAdult.Text);
            cmd.Parameters.AddWithValue("@dchildren",bookChild.Text);
            cmd.Parameters.AddWithValue("@darrival", bookArrival.Text);
            cmd.Parameters.AddWithValue("@ddeparture", bookDeparture.Text);
            cmd.Parameters.AddWithValue("@dpayment", payment_name);
            cmd.Parameters.AddWithValue("@pname", p_name);
            cmd.Parameters.AddWithValue("@pprice", p_price);
            cmd.Parameters.AddWithValue("@pdays", p_days);
            cmd.ExecuteNonQuery();
            Session["log"] = "true";



            con.Close();

          


            Response.Redirect("Destination.aspx");
        } 
        
    }
}