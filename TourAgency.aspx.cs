using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab7Q2
{
    public partial class TourAgency : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(lstTours.SelectedIndex!=-1)
            {
                Response.Redirect("TourDetails.aspx?Place=" + lstTours.SelectedItem.Text);
            }
        }
    }
}