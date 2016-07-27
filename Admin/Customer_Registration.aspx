<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Customer_Registration.aspx.vb" Inherits="Admin_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Register</title>
       <link href='https://fonts.googleapis.com/css?family=Dancing+Script:700,400' rel='stylesheet' type='text/css'/>
<link href='https://fonts.googleapis.com/css?family=Slabo+27px' rel='stylesheet' type='text/css'/>
    <link href="../Css/style.css" rel="stylesheet" />
</head>
<body style="background-color:#fafafa">
            <form id="form1" runat="server">
    <div style="float:left; width:auto;">
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
                        <asp:MenuItem Text="View Customer" NavigateUrl ="View_Customer.aspx"></asp:MenuItem>
                         <asp:MenuItem Text="Logout" NavigateUrl="index.aspx"></asp:MenuItem>
                    </Items>
                </asp:Menu>
    </div>
        <div style="color:#8B2252; float:inherit; margin:auto; padding-top:50px; width: 500px;"><h1>Register Customer</h1><br />
            <asp:TextBox ID="TextBox1" required placeholder="Full Name" class="textfield1" style="margin-top:0px;" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox2" placeholder="Identity No" class="textfield1" runat="server"></asp:TextBox>
            <br />
            <asp:DropDownList ID="idtype" placeholder="ID Type" style="cursor:pointer; outline:0; height: 40px; width: 360px" class="textfield1" runat="server"></asp:DropDownList>
            <br />
            <asp:DropDownList ID="TextBox3" runat="server" style="cursor:pointer; outline:0; height: 40px; width: 360px" class="textfield1">
                <asp:ListItem Text="Select Gender" Value="0"></asp:ListItem>
                <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:TextBox ID="TextBox4" TextMode="multiline" Columns="10" Rows="3" placeholder="Address" style="outline:0; height: 60px; padding-top: 10px;" class="textfield1" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox5" placeholder="Poscode" class="textfield1" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox6" placeholder="City" class="textfield1" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox7" placeholder="Country" class="textfield1" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" style="margin-top:20px;" CssClass="signinbutton" runat="server" Text="Register" />
                </div>
    </form>
</body>
</html>
