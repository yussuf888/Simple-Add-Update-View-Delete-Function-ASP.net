<%@ Page Language="VB" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="Admin_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
    <link href='https://fonts.googleapis.com/css?family=Dancing+Script:700,400' rel='stylesheet' type='text/css'/>
<link href='https://fonts.googleapis.com/css?family=Slabo+27px' rel='stylesheet' type='text/css'/>
    <link href="../Css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        
    <div id="loginbox">
         <h1>Sign In</h1>
        <p>
        <asp:TextBox ID="TextBox1" placeholder="Username" CssClass="textfield" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:TextBox ID="TextBox2" type="password" placeholder="Password" CssClass="textfield" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" CssClass="signinbutton" Text="Sign In" />
        </p>
        &nbsp;</div>
    </form>
    <div id="footer">@copyright 2016 || MOHAMED YUSSUF || MYZ</div>
</body>
</html>
