using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace oef18_2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
            
            HttpCookie cookBetalen = new HttpCookie("Tebetalen");
            cookBetalen.Value = txtTeBetalen.Text;
            Response.Cookies.Add(cookBetalen);
            cookBetalen.Expires = DateTime.Now.AddSeconds(30);
        }

        protected void Btn_Click(object sender, EventArgs e)
        {

        }

        protected void btnBevestig_Click(object sender, EventArgs e)
        {
            Double dblVoorgerecht, dblHoofdgerecht, dblNagerecht, dblTebetalen;

            dblVoorgerecht = Convert.ToDouble(rblvoorgerecht.SelectedValue);
            dblHoofdgerecht = Convert.ToDouble(rblHoofdgerecht.SelectedValue);
            dblNagerecht = Convert.ToDouble(rblNagerecht.SelectedValue);

            dblTebetalen= dblVoorgerecht + dblHoofdgerecht + dblNagerecht;

            txtTeBetalen.Text = dblTebetalen.ToString();
        }

        protected void btnAfrekenen_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bestelling.aspx");

        }

        protected void rblvoorgerecht_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}