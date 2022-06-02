using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace oef18_2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("Bedankt voor uw bestelling");
            Response.Write("<br />");

            if (Request.Cookies["Tebetalen"]!= null)
                    {
                        String strTeBetalen = Request.Cookies["Tebetalen"].Value;
                        Response.Write($"De prijs van de gekozen menu bedraagt {strTeBetalen} EURO");
                    }                 
                  
                                   
        }
    }
}