<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="GroupAssignment.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style3 {
                width: 1395px;
                background-color: #8B4513; 
                padding: 20px;
                color: #FFF; 
                margin: 0 auto 0 0px;
                border: 3px solid #8B4513; 
               }
        .image-container, h2, .button-container{
            text-align: center;
        }

        .image-container img {
            display: inline-block;
            margin: 10px; 
        }
        #Button1 {
            background-color: white;
            color: black; 
            border-radius: 5px; cursor: pointer;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style3">
        <tr>
            <td><div class="image-with-text">
    <!-- Your image -->
     <center><img src="Photos/Background4.png" alt="Background" height="675" width="1200" /></center>
</div></td>
        </tr>
        <tr>
            <td><div class="image-container">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Photos/Cuppuccino.png" Height="300" Width="300" />
                <asp:Image ID="Image3" runat="server" ImageUrl="~/Photos/Latte.png" Width="300" Height="300"/>
                <asp:Image ID="Image4" runat="server" ImageUrl="~/Photos/Mocha.png" Height="300" Width="300"/>
                <asp:Image ID="Image5" runat="server" ImageUrl="~/Photos/Caramel Macchiato.png" Width="300" Height="300"/>
            </div>
                </td>
            
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><div class="button-container">
                <asp:Button ID="Button1" runat="server" Text="Start Your Order Now!!" OnClick="LinkButton1_Click" Height="48px" /></div></td>
        </tr>
    </table>

</asp:Content>

