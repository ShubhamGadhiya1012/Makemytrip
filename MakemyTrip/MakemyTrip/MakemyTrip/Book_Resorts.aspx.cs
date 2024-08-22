using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Runtime.Remoting.Messaging;
using System.Security.Cryptography;
using System.Xml.Linq;

namespace MakemyTrip
{
    public partial class Book_Resorts : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        SqlDataReader reader;
        String rid;
        String id;
        String rrid;
        String r_name;
        String r_price;
        String r_days;
        String payment_name;
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
            rEmail.Text = em;




            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("Resort.aspx");
            }
            else
            {
                con.ConnectionString = "Data source=ASUS-TUF-GAMING\\SQLEXPRESS; initial catalog=makemytrip;integrated Security=true";
                con.Open();
                con.Close();
                 id = Request.QueryString["id"];
            }


        }
        protected void btn_res(object sender, EventArgs e)
        {
            payment_name = "";

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
               rrid = reader.GetInt32(0).ToString();

            }
            Response.Write(rrid);
            reader.Close();
            con.Close();




            con.Open();

            //cmd = new SqlCommand("SELECT * FROM Admin_Resorts where id= '" + rrid + "'", con);
            cmd = new SqlCommand("SELECT * FROM Admin_Resorts where id= @id", con);
            cmd.Parameters.AddWithValue("@id", id);
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                r_name = reader.GetString(1);
                r_price = reader.GetString(5);
                r_days = reader.GetString(2);

            }
            Response.Write(r_name + "," + r_price + "," + r_price + "," + r_days);

            reader.Close();
            con.Close();

            con.Open();
            cmd = new SqlCommand("insert into R_booking" + "(id,R_name,R_email,R_number,R_address,R_person,R_bedroom,R_checkin,R_checkout,R_payment,R_rname,R_rprice,R_rdays)values(@id,@rname,@remail,@rnumber,@raddress,@rperson,@rbed,@rin,@rout,@rpayment,@rrname,@rrprice,@rrdays)", con);
            cmd.Parameters.AddWithValue("@id", rrid);
            cmd.Parameters.AddWithValue("@rname", rName.Text);
            cmd.Parameters.AddWithValue("@remail", rEmail.Text);
            cmd.Parameters.AddWithValue("@rnumber", rPhn.Text);
            cmd.Parameters.AddWithValue("@raddress", rAddress.Text);
            cmd.Parameters.AddWithValue("@rperson", rPerson.Text);
            cmd.Parameters.AddWithValue("@rbed", rBed.Text);
            cmd.Parameters.AddWithValue("@rin", rCheckin.Text);
            cmd.Parameters.AddWithValue("@rout", rCheckout.Text);
            cmd.Parameters.AddWithValue("@rpayment", payment_name);
            cmd.Parameters.AddWithValue("@rrname", r_name);
            cmd.Parameters.AddWithValue("@rrprice", r_price);
            cmd.Parameters.AddWithValue("@rrdays", r_days);
            cmd.ExecuteNonQuery();
            Session["log"] = "true";
            con.Close();




            Response.Redirect("Resort.aspx");

        }
      
    }
}