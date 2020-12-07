using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab7Q1
{
    public partial class JuiceShop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!this.IsPostBack)
            {
                List<string> fruits = new List<string>();
                fruits.Add("Apple");
                fruits.Add("Mango");
                fruits.Add("Banana");
                fruits.Add("Pineapple");
                fruits.Add("Peach");
                lstFruits.DataSource = fruits;
                lstFruits.DataBind();

                List<string> ice_creams = new List<string>();
                ice_creams.Add("Vanilla");
                ice_creams.Add("Butter Scotch");
                ice_creams.Add("Pista Badam");
                ice_creams.Add("Chocolate");
                ice_creams.Add("Kesar");
                lstIceCream.DataSource = ice_creams;
                lstIceCream.DataBind();
            }
        }

        protected void btnDisplay_Click(object sender, EventArgs e)
        {
            string ice_cream = lstIceCream.SelectedItem.Text;
            lblInfo.Text = "Fruits: ";
            foreach(ListItem fruit in lstFruits.Items)
            {
                if(fruit.Selected==true)
                {
                    lblInfo.Text += "<br/>" + fruit.Text;
                }
            }
            lblInfo.Text += "<br/>Ice-cream:<br/> ";
            lblInfo.Text += lstIceCream.SelectedItem.Text;
            Random rand = new Random();
            int price = rand.Next(1, 100);
            lblInfo.Text += "<br/>Price: " + price.ToString();
        }
    }
}