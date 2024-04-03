using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace GroupAssignment
{
    public partial class CrushCoffee : System.Web.UI.Page
    {
        
            protected void Hot_Click(object sender, EventArgs e)
            {
                Temp.Text = " Hot |";
            }
            protected void Cold_Click(object sender, EventArgs e)
            {
                Temp.Text = " Cold |";
            }
            protected void Dairy_Click(object sender, EventArgs e)
            {
                Milk.Text = " Dairy Milk |";
            }
            protected void Soy_Click(object sender, EventArgs e)
            {
                Milk.Text = " Soy Milk |";
            }
            protected void Oat_Click(object sender, EventArgs e)
            {
                Milk.Text = " Oat Milk |";
            }
            protected void Topping_Click(object sender, EventArgs e)
            {
                Topping.Text = " No Topping ";
                if (Drink.Text == "Cuppucino |")
                {
                    Price.Text = "RM 5.50";
                }
                if (Drink.Text == "Latte |")
                {
                    Price.Text = "RM 6.50";
                }
                if (Drink.Text == "Mocha |")
                {
                    Price.Text = "RM 7.50";
                }
                if (Drink.Text == "Caramel Macchiato |")
                {
                    Price.Text = "RM 8.50";
                }
            }
            protected void Velvet_Click(object sender, EventArgs e)
            {
                Topping.Text = " Velvet Creme ";
                if (Drink.Text == "Cuppucino |")
                {
                    Price.Text = "RM 7.60";
                }
                if (Drink.Text == "Latte |")
                {
                    Price.Text = "RM 8.60";
                }
                if (Drink.Text == "Mocha |")
                {
                    Price.Text = "RM 9.60";
                }
                if (Drink.Text == "Caramel Macchiato |")
                {
                    Price.Text = "RM 10.60";
                }
            }
            protected void Order_Click(object sender, EventArgs e)
            {
            Response.Redirect("OrderDetails.aspx");
            }
            protected void Cuppuccino_Click(object sender, EventArgs e)
            {
                Drink.Text = "Cuppucino |";
                Price.Text = " RM 5.50";
                if (Topping.Text == " Velvet Creme ")
                {
                    Price.Text = " RM 7.60";
                }
            }
            protected void Latte_Click(object sender, EventArgs e)
            {
                Drink.Text = "Latte |";
                Price.Text = " RM 6.50";
                if (Topping.Text == " Velvet Creme ")
                {
                    Price.Text = " RM 8.60";
                }
            }
            protected void Mocha_Click(object sender, EventArgs e)
            {
                Drink.Text = "Mocha |";
                Price.Text = " RM 7.50";
                if (Topping.Text == " Velvet Creme ")
                {
                    Price.Text = " RM 9.60";
                }
            }
            protected void Caramel_Click(object sender, EventArgs e)
            {
                Drink.Text = "Caramel Macchiato |";
                Price.Text = " RM 8.50";
                if (Topping.Text == " Velvet Creme ")
                {
                    Price.Text = " RM 10.60";
                }
            }


    }

}
    
