using System;

namespace GroupAssignment
{
    public partial class OrderConfirmation : System.Web.UI.Page
    {
        protected string OrderMode;
        protected string Name;
        protected string Address;
        protected string PhoneNumber;
        protected string Email;
        protected string DrinkOrdered;
        protected string TempOrdered;
        protected string MilkOrdered;
        protected string ToppingOrdered;
        protected string PriceOrdered;

        protected void Page_Load(object sender, EventArgs e)
        {
            OrderMode = GetSessionValue("OrderMode");
            Name = GetSessionValue("Name");
            Address = GetSessionValue("Address");
            PhoneNumber = GetSessionValue("PhoneNumber");
            Email = GetSessionValue("Email")?.ToLower();
            DrinkOrdered = GetSessionValue("DrinkOrdered");
            TempOrdered = GetSessionValue("TempOrdered");
            MilkOrdered = GetSessionValue("MilkOrdered");
            ToppingOrdered = GetSessionValue("ToppingOrdered");
            PriceOrdered = GetSessionValue("Price");
        }

        private string GetSessionValue(string key)
        {
            object value = Session[key];
            return value != null ? value.ToString() : string.Empty;
        }
    }
}
