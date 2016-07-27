<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Home_Index.aspx.vb" Inherits="Admin_Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Homepage</title>
     <link href='https://fonts.googleapis.com/css?family=Dancing+Script:700,400' rel='stylesheet' type='text/css'/>
<link href='https://fonts.googleapis.com/css?family=Slabo+27px' rel='stylesheet' type='text/css'/>
    <link href="../Css/style.css" rel="stylesheet" />
</head>
<body style="background-color:#fafafa">
    <form id="form1" runat="server">
    <div>
    <asp:Menu ID="navMenu" runat="server"
                    BackColor="#8B2252" BorderColor="#0066CC"
                    StaticMenuItemStyle-ForeColor="#FFFFFF"
                    StaticMenuItemStyle-VerticalPadding="10px"
                    StaticMenuItemStyle-HorizontalPadding="10px"
                    RenderingMode="List" Orientation="Vertical" style="text-align: center">
        <statichoverstyle backcolor="#e25e75"
          forecolor="Black"/>
                    <Items>
                        <asp:MenuItem Text="Home" NavigateUrl="Home_Index.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Customer Register" NavigateUrl="Customer_Registration.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="View Customer" NavigateUrl="View_Customer.aspx"></asp:MenuItem>
                         <asp:MenuItem Text="Logout" NavigateUrl ="~/Admin/index.aspx"></asp:MenuItem>
                    </Items>
                </asp:Menu>
    </div>
        <div>
            <h1 style="color:#8B2252; font-size:100px;">Welcome Admin</h1>
            </div>
        </div>
    </form>
</body>
</html>
