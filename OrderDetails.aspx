<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderDetails.aspx.cs" Inherits="GroupAssignment.OrderDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="style.css" rel="stylesheet" type="text/css" />
       <style>
    body {
        background-image: url('photos/khaki background.jpeg');
        background-repeat: no-repeat;
        background-size: cover;
        background-position: center center;
        font-family: Tahoma, sans-serif;
        font-weight: bold;
    }

    .opacity-box1,
    .opacity-box2 {
        padding: 20px;
        color: #FFF;
        width: 400px;
        height: 350px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.4);
        transition: background-color 0.3s, border-color 0.3s, box-shadow 0.3s;
        margin-bottom: 20px;
        

    }

    .opacity-box1 {
        background-color: rgb(92, 64, 51);
        border: 2px solid rgba(255, 255, 255, 0.6);
        text-align: center;
    
    }

    .opacity-box1:hover {
        background-color: rgb(72, 60, 50);
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.6);
    }

    .opacity-box2 {
        background-color: #8B4513;
        margin: 0 auto;
        border: 3px solid #8B4513;
    }
</style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                
         <center><img src="Photos/coffee and powder.jpg" alt="Background" height="675" width="1200" /></center>
                <br /><br />

            Thank you for ordering! Your order details will be shown below.
            <br /><br />
            Order Details:
            <br /><br />
            <div class="opacity-box1">
            Order Mode: 
            <asp:Label ID="OrderMode" runat="server" Text=""></asp:Label>
            <br /><br />
            Drink Ordered: 
            <asp:Label ID="DrinkOrdered" runat="server" Text="">  </asp:Label><asp:Label ID="TempOrdered" runat="server" Text="">  </asp:Label><asp:Label ID="MilkOrdered" runat="server" Text="">  </asp:Label><asp:Label ID="ToppingOrdered" runat="server" Text=""></asp:Label>
            <br /><br />
            Name: 
            <asp:Label ID="Name" runat="server" Text=""></asp:Label>
            <br /><br />
            Address: 
            <asp:Label ID="Address" runat="server" Text=""></asp:Label>
            <br /><br />
            Phone Number: 
            <asp:Label ID="PhoneNumber" runat="server" Text=""></asp:Label>
            <br /><br />
            Email Address: 
            <asp:Label ID="Email" runat="server" Text=""></asp:Label>
            <br /><br />
            Price:
            <asp:Label ID="PriceOrdered" runat="server" Text=""></asp:Label>
            <br /><br />
             <asp:Button ID="Order" runat="server" Text="Order" BorderStyle="Double" OnClick="Order_Click" ForeColor="Black" Font-Bold="True" style="padding: 10px; background-color: #ccc; border-radius: 5px; cursor: pointer;"  />
                
 </div>
 <br /><br />
        </center>

        </div>
        
    </form>
</body>
</html>
