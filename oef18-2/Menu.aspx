<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="oef18_2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="frmMenu" runat="server">
        <div>
            Stel zelf je menu samen. Als je een keuze gemaakt hebt druk je op de knop BESTELLEN.<br /><br />

        </div>

        <div>
            <asp:RadioButtonList ID="rblvoorgerecht" runat="server" OnSelectedIndexChanged="rblvoorgerecht_SelectedIndexChanged">
            <asp:ListItem Text="Carpaccio" Value="5"></asp:ListItem>
            <asp:ListItem Text="Soep" Value="6"></asp:ListItem>
            <asp:ListItem Text="Tomaat garnaal" Value="7"></asp:ListItem>
        </asp:RadioButtonList><br /><br />
        </div>        

        <div>
            Hoofdgerecht:
            <asp:RadioButtonList ID="rblHoofdgerecht" runat="server">
                <asp:ListItem Text="Koninginnehapje" Value="8"></asp:ListItem>
                <asp:ListItem Text="Stoofvlees met frieten" Value="9"></asp:ListItem>
                <asp:ListItem Text="Lasagne" Value="10"></asp:ListItem>                
            </asp:RadioButtonList>
        </div><br /><br />

        <div>
            Nagerecht:
            <asp:RadioButtonList ID="rblNagerecht" runat="server">
                <asp:ListItem Text="Dame Blanche" Value ="11"></asp:ListItem>
                <asp:ListItem Text="Chocomousse" Value="12"></asp:ListItem>
                <asp:ListItem Text="Pudding" Value="13"></asp:ListItem>
            </asp:RadioButtonList> <br /><br />
            
            <asp:Button ID="btnBevestig" runat="server" Text="BEVESTIG JE KEUZE" OnClick="btnBevestig_Click" />            
        </div><br /><br />

        <div>
            Te betalen: <asp:TextBox ID="txtTeBetalen" runat="server"></asp:TextBox> EURO
            <br />
            <br />
        </div>



              
        
        <asp:Button ID="btnAfrekenen" runat="server" OnClick="btnAfrekenen_Click" Text="AFREKENEN" />



              
        
    </form>
</body>
</html>
