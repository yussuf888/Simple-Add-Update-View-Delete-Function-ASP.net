<%@ Page Language="VB" AutoEventWireup="false" CodeFile="template.aspx.vb" Inherits="Admin_Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Homepage</title>
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
                        <asp:MenuItem Text="Home" NavigateUrl="Staff_Index.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Registration" NavigateUrl="Member_Registration.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Products"></asp:MenuItem>
                        <asp:MenuItem Text="About Us" NavigateUrl="AboutUs.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Contact Us"></asp:MenuItem>
                    </Items>
                </asp:Menu>
    </div>
    </form>
</body>
</html>
