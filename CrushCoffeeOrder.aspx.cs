using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace GroupAssignment
{
    public partial class CrushCofeeOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Hot_Click(object sender, EventArgs e)
        {
            Temp.Text = " Hot |";
        }

        protected void Cold_Click(object sender, EventArgs e)
        {
            Temp.Text = " Cold |";
        }

        protected void Enter_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=MSI\\SQLEXPRESS;Initial Catalog=CoffeOrder;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string insertQuery = "INSERT INTO coffee (OrderMode, Name, Address, PhoneNumber, Email, DrinkOrdered, TempOrdered, MilkOrdered, ToppingOrder, Price) " +
                                     "VALUES (@OrderMode, @Name, @Address, @PhoneNumber, @Email, @DrinkOrdered, @TempOrdered, @MilkOrdered, @ToppingOrder, @Price)";

                using (SqlCommand cmd = new SqlCommand(insertQuery, con))
                {
                    cmd.Parameters.AddWithValue("@OrderMode", DineinButton.Checked ? "Dine-in" : "Takeaway");
                    cmd.Parameters.AddWithValue("@Name", UserName.Text);
                    cmd.Parameters.AddWithValue("@Address", UserAddress.Text);
                    cmd.Parameters.AddWithValue("@PhoneNumber", UserPhoneNumber.Text);
                    cmd.Parameters.AddWithValue("@Email", UserEmail.Text);
                    cmd.Parameters.AddWithValue("@DrinkOrdered", Drink.Text);
                    cmd.Parameters.AddWithValue("@TempOrdered", Temp.Text);
                    cmd.Parameters.AddWithValue("@MilkOrdered", Milk.Text);
                    cmd.Parameters.AddWithValue("@ToppingOrder", Topping.Text);

                    decimal priceValue;
                    if (decimal.TryParse(Price.Text.Replace("RM", "").Trim(), out priceValue))
                    {
                        cmd.Parameters.AddWithValue("@Price", priceValue);
                    }
                    else
                    {

                    }

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            // Set session variables before redirecting
            Session["OrderMode"] = DineinButton.Checked ? "Dine-in" : "Takeaway";
            Session["Name"] = UserName.Text;
            Session["Address"] = UserAddress.Text;
            Session["PhoneNumber"] = UserPhoneNumber.Text;
            Session["Email"] = UserEmail.Text;
            Session["DrinkOrdered"] = Drink.Text;
            Session["TempOrdered"] = Temp.Text;
            Session["MilkOrdered"] = Milk.Text;
            Session["ToppingOrdered"] = Topping.Text;
            Session["Price"] = Price.Text.Replace("RM", "").Trim();

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
        protected void Americano_Click(object sender, EventArgs e)
        {
            Drink.Text = "Americano |";
            Price.Text = " RM 4.50";
            if (Topping.Text == " Velvet Creme ")
            {
                Price.Text = " RM 6.60";
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


    }
}
