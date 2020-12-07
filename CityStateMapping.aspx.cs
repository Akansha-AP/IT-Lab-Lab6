using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab7Q3
{
    public partial class CityStateMapping : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!this.IsPostBack)
            {
                Dictionary<int, string> state = new Dictionary<int, string>();
                state.Add(1, "Assam");
                state.Add(2, "Bihar");
                state.Add(3, "Karnataka");
                state.Add(4, "West Bengal");
                state.Add(5, "Gujarat");
                lstState.DataSource = state;
                lstState.DataTextField = "Value";
                lstState.DataValueField = "Key";
                this.DataBind();
            }
        }

        protected void lstState_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}