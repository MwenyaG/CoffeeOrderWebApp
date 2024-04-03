using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupAssignment
{
    public partial class OrderDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OrderMode.Text = GetSessionValue("OrderMode");
            Name.Text = GetSessionValue("Name");
            Address.Text = GetSessionValue("Address");
            PhoneNumber.Text = GetSessionValue("PhoneNumber");
            Email.Text = GetSessionValue("Email")?.ToLower();
            DrinkOrdered.Text = GetSessionValue("DrinkOrdered");
            TempOrdered.Text = GetSessionValue("TempOrdered");
            MilkOrdered.Text = GetSessionValue("MilkOrdered");
            ToppingOrdered.Text = GetSessionValue("ToppingOrdered");
            PriceOrdered.Text = GetSessionValue("Price");
        }

        private string GetSessionValue(string key)
        {
            object value = Session[key];
            return value != null ? value.ToString() : string.Empty;
        }

        protected void Order_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("OrderConfirmation.aspx");
        }
    }
}
