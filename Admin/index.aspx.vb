Imports System.Data.SqlClient
Imports System.Data

Partial Class Admin_Default
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim dr As SqlDataReader



    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        con = New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\husna\Documents\test.mdf;Integrated Security=True;Connect Timeout=30")
        con.Open()
        cmd = New SqlCommand("SELECT Password FROM login WHERE Username='" + TextBox1.Text + "'", con)
        dr = cmd.ExecuteReader
        If (dr.Read) Then
            If (dr(0).ToString = TextBox2.Text) Then
                Session("username") = TextBox1.Text
                Response.Redirect("Home_Index.aspx")
            Else
                MsgBox("Password is not correct.", MsgBoxStyle.OkOnly, "Wrong Password")
            End If
        Else
            MsgBox("User does not exists.", MsgBoxStyle.OkOnly, "Not Existing")
        End If

    End Sub
End Class
