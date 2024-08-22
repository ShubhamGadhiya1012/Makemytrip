using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MakemyTrip
{
    public partial class HomePage : System.Web.UI.Page
    {
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

            

        }
        protected void Contact_btn(object sender, EventArgs e)
        {
            Response.Redirect("Contact.aspx");
           

        }
    }
}