Imports System.Drawing
Imports System.Data.SqlClient
Imports System.Data
Partial Class Admin_View_Customer
    Inherits System.Web.UI.Page
    Private con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\husna\Documents\test.mdf;Integrated Security=True;Connect Timeout=30")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            loadStores()
        End If
    End Sub
    Protected Sub loadStores()
        con.Open()
        Dim cmd As New SqlCommand("Select * from Member", con)
        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet()
        da.Fill(ds)
        Dim count As Integer = ds.Tables(0).Rows.Count
        con.Close()
    End Sub
    Protected Sub gridView_RowDeleting(ByVal sender As Object, ByVal e As GridViewDeleteEventArgs)
        Dim Member_ID As String = grid1.DataKeys(e.RowIndex).Values("Member_ID").ToString()
        con.Open()
        Dim cmd As New SqlCommand("Delete from Member where Member_ID=" + Member_ID, con)
        Dim result As Integer = cmd.ExecuteNonQuery()
        con.Close()
        If result = 1 Then
            loadStores()
            MsgBox("Successfully delete.", MsgBoxStyle.OkOnly, "Successfully Delete")
            Response.Redirect("View_Customer.aspx")
        End If
    End Sub
    Protected Sub gridView_RowDataBound(ByVal sender As Object, ByVal e As GridViewRowEventArgs)
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim Member_ID As String = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "Member_ID"))
            Dim lnkbtnresult As Button = DirectCast(e.Row.FindControl("btndelete"), Button)
        End If
    End Sub
  
    Protected Sub OpenWindow(sender As Object, e As EventArgs)
        Dim url As String = "Customer_Edit.aspx"
        Dim s As String = "window.open('" & url + "', 'popup_window', 'width=500,height=800,left=100,top=100,resizable=yes');"
        ClientScript.RegisterStartupScript(Me.GetType(), "script", s, True)
    End Sub

    Protected Sub grid1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles grid1.SelectedIndexChanged

    End Sub
End Class
