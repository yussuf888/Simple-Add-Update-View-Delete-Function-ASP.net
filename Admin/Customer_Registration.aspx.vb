Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration

Partial Class Admin_Default
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        con = New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\husna\Documents\test.mdf;Integrated Security=True;Connect Timeout=30")
        con.Open()
        cmd = New SqlCommand("INSERT INTO Member (Name, Identity_No, ID_Type, Gender, Address, Poscode, City, Country) VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + idtype.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')", con)
        cmd.ExecuteNonQuery()
        MsgBox("Customer has been successfully registered.", MsgBoxStyle.OkOnly, "Successfully")
        Response.Redirect("Customer_Registration.aspx")
        con.Close()

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            con = New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\husna\Documents\test.mdf;Integrated Security=True;Connect Timeout=30")
            con.Open()
            cmd = New SqlCommand("SELECT Type_ID, Description FROM ID_Type", con)
            cmd.CommandType = CommandType.Text
            idtype.DataSource = cmd.ExecuteReader()
            idtype.DataTextField = "Description"
            idtype.DataValueField = "Type_ID"
            idtype.DataBind()
            con.Close()
            idtype.Items.Insert(0, New ListItem("Select Nationality", "0"))
        End If
    End Sub
End Class
