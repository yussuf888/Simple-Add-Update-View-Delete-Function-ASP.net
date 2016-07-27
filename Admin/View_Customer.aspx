<%@ Page Language="VB" AutoEventWireup="false" CodeFile="View_Customer.aspx.vb" Inherits="Admin_View_Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head id="Head1" runat="server">
        <title>View Customer</title>
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
                    <statichoverstyle backcolor="#e25e75" forecolor="Black"/>
                    <Items>
                        <asp:MenuItem Text="Home" NavigateUrl="Home_Index.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Customer Register" NavigateUrl="Customer_Registration.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="View Customer" NavigateUrl ="View_Customer.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Logout" NavigateUrl="index.aspx"></asp:MenuItem>
                    </Items>
                </asp:Menu>
            </div>
            <div style="color:#8B2252; float:inherit; margin:auto; margin-left:400px; 
                padding-top:50px; width: 700px;">
                <h1 style="margin-left:-150px;">View Customer</h1>
                <asp:GridView ID="grid1" runat="server"
        onrowdeleting="gridView_RowDeleting"
        OnRowDataBound="gridView_RowDataBound" AutoGenerateEditButton="false" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="Member_ID" BorderStyle="Solid" BorderColor="#8B2252" DataSourceID="SqlDataSource1" >  
     <AlternatingRowStyle BackColor="White" />  
     <columns>  
         <asp:BoundField  DataField="Name" HeaderText="Name" SortExpression="Name"  />
         <asp:BoundField DataField="Identity_No" HeaderText="Identity No" SortExpression="Identity_No" />
         <asp:TemplateField>
                <ItemTemplate>
                     <asp:Button Text="Edit" runat="server" ID="Edit" 
                     CommandName="Edit" CssClass="signinbutton" />
                     <asp:Button ID="btndelete" CssClass="signinbutton" runat="server" CommandArgument='<%# Eval("Member_ID") %>' OnClientClick="if (!confirm('Are you sure to delete this record?')) return false;" 
                          CommandName="Delete"  Text="Delete"  />
                </ItemTemplate>
             <EditItemTemplate>
           
                    <asp:Button ID="UpdateButton" OnClientClick="if (!confirm('Are you sure to update this record?')) return false;" runat="server" CommandName="Update" 
                        Text="Update" CssClass="signinbutton">
                    </asp:Button>
                    <asp:Button ID="btnCancel" CausesValidation="false" runat="server" 
                        CommandName="Cancel" Text="Cancel" CssClass="signinbutton">
                    </asp:Button>
            </EditItemTemplate>
            </asp:TemplateField>
     </columns>  
     <EditRowStyle BackColor="cornsilk" />  
     <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />  
     <HeaderStyle BackColor="#8B2252" Font-Bold="True" ForeColor="White" HorizontalAlign="center" />  
     <PagerStyle BackColor="blue" ForeColor="White" HorizontalAlign="Center" />  
     <RowStyle BackColor="cornsilk" BorderWidth="1px" HorizontalAlign="Left" />  
     <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />  
     <SortedAscendingCellStyle BackColor="#F5F7FB" />  
     <SortedAscendingHeaderStyle BackColor="#6D95E1" />  
     <SortedDescendingCellStyle BackColor="#E9EBEF" />  
     <SortedDescendingHeaderStyle BackColor="#4870BE" />  
 </asp:GridView></div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Member]" UpdateCommand="Update Member SET Name=@Name, Identity_No = @Identity_No WHERE Member_ID=@Member_ID">
                    <UpdateParameters>
                        <asp:Parameter Name="Name" />
                        <asp:Parameter Name="Identity_No" />
                    </UpdateParameters>
                </asp:SqlDataSource>
    </form>
</body>
</html>
