<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CrushCoffeeOrder.aspx.cs" Inherits="GroupAssignment.CrushCofeeOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">

.opacity-box1 {
    background-color: rgb(92, 64, 51); /* Brown background color with alpha for opacity */
    padding: 20px;
    color: #FFF;
    width: fit-content;
    border: 2px solid rgba(255, 255, 255, 0.6);
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.4);
    transition: background-color 0.3s, border-color 0.3s, box-shadow 0.3s;
    /* Hover effect for interactive feel */
    transition: background-color 0.3s, border-color 0.3s, box-shadow 0.3s;
}

    /* Apply hover effect */
    .opacity-box1:hover {
        background-color: rgb(72, 60, 50); /* Darker brown background on hover */
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.6);
    }

.opacity-box2 {
    background-color: #8B4513; /* Adjust the color code for the desired coffee shop vibe */
    padding: 20px;
    color: #FFF; /* Set the text color for better visibility */
    width: 1395px;
    margin: 0 auto;
    border: 3px solid #8B4513; /* Border color to match the background color */
}
                .topping-button {
            padding: 15px 25px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-weight: bold;
            font-size: 18px;
            transition: all 0.3s ease;
            box-shadow: 0px 3px 10px rgba(0, 0, 0, 0.1);
        }

        /* Styling for the No Topping button */
        #NoTopping {
            background-color: #f3f3f3;
            color: #333;
        }

        #NoTopping:hover {
            background-color: #e5e5e5;
            color: #333;
            transform: translateY(-2px);
            box-shadow: 0px 6px 15px rgba(0, 0, 0, 0.2);
        }

        /* Styling for the Velvet Creme button */
        #VelvetCreme {
            background-color: #ffc107;
            color: #fff;
        }

        #VelvetCreme:hover {
            background-color: #ff9800;
            transform: translateY(-2px);
            box-shadow: 0px 6px 15px rgba(255, 193, 7, 0.4);
        }
        .milk-button {
    padding: 12px 20px;
    border: 2px solid transparent;
    border-radius: 8px;
    cursor: pointer;
    font-size: 16px;
    font-weight: bold;
    transition: background-color 0.3s ease, border-color 0.3s ease, transform 0.2s ease;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
    color: #000;
}
 /* Styling for Dairy Milk button */
.dairy-milk {
    background-color: #FFC266;
}

/* Styling for Soy Milk button */
.soy-milk {
    background-color: #66CCCC;
}

/* Styling for Oat Milk button */
.oat-milk {
    background-color: #B19CD9;
}
/* Hover effect */
.milk-button:hover {
    background-color: #FFDAB9;
    border-color: #FFA500; /* Change border color on hover */
    opacity: 0.8;
    transform: translateY(-3px); /* Lifts the button slightly on hover */
}

/* Active (when clicked) style */
.milk-button:active {
    transform: translateY(-1px); /* Slight downward push when clicked */
}
 .milk-button:focus {
                outline: none; /* Removing default focus outline */
                box-shadow: 0px 0px 0px 3px rgba(255, 165, 0, 0.5); /* Adding a focus ring */
                /* Styling for temperature selection buttons */
            }
#Hot,
#Cold {
    padding: 12px 24px;
    border: 2px solid transparent;
    border-radius: 8px;
    cursor: pointer;
    font-weight: bold;
    transition: all 0.3s ease;
    outline: none; /* Removing default focus outline */
}

/* Styling for Hot button */
#Hot {
    background-color: #FFCCCC;
    color: red;
    border: 2px solid #FF6666; /* Adding border */
    box-shadow: 0px 4px 8px rgba(255, 99, 99, 0.2); /* Adding a subtle shadow */
}

/* Styling for Cold button */
#Cold {
    background-color: #CCE5FF;
    color: blue;
    border: 2px solid #4C9EFF; /* Adding border */
    box-shadow: 0px 4px 8px rgba(76, 158, 255, 0.2); /* Adding a subtle shadow */
}

/* Hover effect */
#Hot:hover,
#Cold:hover {
    transform: translateY(-2px);
    box-shadow: 0px 6px 12px rgba(0, 0, 0, 0.1); /* Enhanced hover shadow */
}

/* Active (when clicked) style */
#Hot:active,
#Cold:active {
    transform: translateY(0);
    box-shadow: none;
}

/* Focus style */
#Hot:focus,
#Cold:focus {
    box-shadow: 0 0 0 3px rgba(255, 0, 0, 0.3); /* Enhancing focus ring */
}
/* Styling for the Order button */
.order-button {
    padding: 14px 28px;
    background-color: #4CAF50;
    color: #fff;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    font-weight: bold;
    transition: all 0.3s ease;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    outline: none;
    position: relative;
    overflow: hidden;
}

/* Button hover effect */
.order-button:hover {
    background-color: #45a049;
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
}

/* Button focus style */
.order-button:focus {
    box-shadow: 0 0 0 3px rgba(76, 175, 80, 0.4);
}

/* Button active state */
.order-button:active {
    transform: translateY(2px);
    box-shadow: none;
}

/* Button after click effect */
.order-button:after {
    content: '';
    position: absolute;
    top: 50%;
    left: 50%;
    width: 200%;
    height: 200%;
    background-color: rgba(255, 255, 255, 0.1);
    transition: all 0.5s ease;
    border-radius: 50%;
    transform: translate(-50%, -50%);
    z-index: 0;
    opacity: 0;
    pointer-events: none;
}

.order-button:hover::after {
    opacity: 1;
    width: 150%;
    height: 150%;
}
.image-container, h2, .button-container{
            text-align: center;
        }

        .image-container img {
            display: inline-block;
            margin: 10px; /* Optional: Add some spacing between images */
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
             <div class="opacity-box2">
            Select Your Mode of Ordering: <br /><br />
                 <asp:RadioButton ID="DineinButton" runat="server" GroupName="order" Style="padding: 5px; background-color: #FFD6CC; border-radius: 5px; color: #000;" Text="Dine-in" /> &nbsp
                <asp:RadioButton ID="TakeawayButton" runat="server" GroupName="order" Style="padding: 5px; background-color: #CCE5FF; border-radius: 5px; color: #000;" Text="Takeaway"/>

                 <br /><br />


            Select Your Beverage: <br /><br />
                 <div class="image-container">
            <asp:ImageButton ID="CuppuccinoButton" runat="server"  ImageUrl="~/Photos/Cuppuccino.png" Height="300" Width="300" OnClick ="Cuppuccino_Click"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="LatteButton" runat="server"  ImageUrl="~/Photos/Latte.png" Width="300" Height="300" OnClick ="Latte_Click"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="MochaButton" runat="server"  ImageUrl="~/Photos/Mocha.png" Height="300" Width="300" OnClick ="Mocha_Click"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="CaramelMacchiatoButton" runat="server"  ImageUrl="~/Photos/Caramel Macchiato.png" Width="300" Height="300" OnClick ="Caramel_Click"/><br /><br />
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <asp:ImageButton ID="AmericanoButton" runat="server"  ImageUrl="~/Photos/americano.jpg" Width="300" Height="300" OnClick ="Americano_Click"/></div><br /><br />

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
        <br /><br />

Enter Your Personal Information:

<br /><br />
<div class="opacity-box1">
Name: <asp:TextBox ID="UserName" runat="server"></asp:TextBox><br /><br />
Address:<br /> <asp:TextBox ID="UserAddress" runat="server" TextMode="MultiLine"></asp:TextBox><br /><br />
Phone Number: <asp:TextBox ID="UserPhoneNumber" runat="server" TextMode="Phone"></asp:TextBox><br /><br />
Email Address: <asp:TextBox ID="UserEmail" runat="server" TextMode="Email"></asp:TextBox><br /><br />
<asp:Button ID="Enter" runat="server" Text="Enter" OnClick="Enter_Click" style="padding: 10px; background-color: #4CAF50; color: #fff; border: none; border-radius: 5px; cursor: pointer;" />
    </div>
    </div>
</asp:Content>

