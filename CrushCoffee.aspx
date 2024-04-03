<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrushCoffee.aspx.cs" Inherits="GroupAssignment.CrushCoffee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="style.css" rel="stylesheet" type="text/css" />
    <title> Crush Coffee </title>

</head>
<body>
     
        <div class="image-with-text">
    <!-- Your image -->
     <center><img src="Photos/Background4.png" alt="Background" height="675" width="1200" /></center>
</div>
    <form id="form1" runat="server">
        <div>
            <h1><Center>
                <asp:Label ID="Placed" runat="server" Text=""></asp:Label></Center></h1><br />
             <div class="opacity-box2">
            Select Your Mode of Ordering: <br /><br />
                 <asp:RadioButton ID="DineinButton" runat="server" GroupName="order" Style="padding: 5px; background-color: #FFD6CC; border-radius: 5px; color: #000;" Text="Dine-in" /> &nbsp
                <asp:RadioButton ID="TakeawayButton" runat="server" GroupName="order" Style="padding: 5px; background-color: #CCE5FF; border-radius: 5px; color: #000;" Text="Takeaway"/>

                 <br /><br />


            Select Your Beverage: <br /><br />
            <asp:ImageButton ID="CuppuccinoButton" runat="server"  ImageUrl="~/Photos/Cuppuccino.png" Height="300" Width="300" OnClick ="Cuppuccino_Click"/>
            <asp:ImageButton ID="LatteButton" runat="server"  ImageUrl="~/Photos/Latte.png" Width="300" Height="300" OnClick ="Latte_Click"/>
            <asp:ImageButton ID="MochaButton" runat="server"  ImageUrl="~/Photos/Mocha.png" Height="300" Width="300" OnClick ="Mocha_Click"/>
            <asp:ImageButton ID="CaramelMacchiatoButton" runat="server"  ImageUrl="~/Photos/Caramel Macchiato.png" Width="300" Height="300" OnClick ="Caramel_Click"/><br /><br />

            Select Your Temperature:
<br /><br />
<asp:Button ID="Hot" runat="server" Text="Hot" OnClick="Hot_Click" /> &nbsp
<asp:Button ID="Cold" runat="server" Text="Cold" OnClick="Cold_Click" />

<br /><br />
Select Your Preferred Milk:
<br /><br />
<asp:Button ID="DairyMilk" runat="server" Text="Dairy Milk" OnClick="Dairy_Click" CssClass="milk-button dairy-milk" />&nbsp
<asp:Button ID="SoyMilk" runat="server" Text="Soy Milk" OnClick="Soy_Click" CssClass="milk-button soy-milk" />&nbsp
<asp:Button ID="OatMilk" runat="server" Text="Oat Milk" OnClick="Oat_Click" CssClass="milk-button oat-milk" />

<br /><br />
Select Your Preferred Topping:
<br /><br />
 <div class="topping-buttons">
        <asp:Button ID="NoTopping" runat="server" Text="No Topping" BorderStyle="None" OnClick="Topping_Click" CssClass="topping-button"/> &nbsp
        <asp:Button ID="VelvetCreme" runat="server" Text="Velvet Creme (+RM2.10)" BorderStyle="None" OnClick="Velvet_Click" CssClass="topping-button" />
    </div>

            
                 <br />
            Order Details:
             <br /><br />
             <div class="opacity-box1">
            <asp:Label ID="Drink" runat="server" Text="Drink |">  </asp:Label><asp:Label ID="Temp" runat="server" Text=" Temp |">  </asp:Label><asp:Label ID="Milk" runat="server" Text=" Milk |">  </asp:Label><asp:Label ID="Topping" runat="server" Text=" Topping "></asp:Label>
            <br /><br />
            Price: &nbsp <asp:Label ID="Price" runat="server" Text="RM 0.00"></asp:Label>
            </div>
            <br />
           <asp:Button ID="Order" runat="server" Text="Order" OnClick="Order_Click" CssClass="order-button" />

           
        </div>
            </div>
    </form>
</body>
    
</html>