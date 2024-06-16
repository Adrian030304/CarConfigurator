Public Class Offer
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'retrive information from the first page
        Dim firstNameRetrieved As String, lastNameRetrieved As String, offerDateRetrieved As String, expDateRetrieved As String
        Dim price As Decimal

        firstNameRetrieved = Session("FN")
        lastNameRetrieved = Session("LN")
        offerDateRetrieved = Request.QueryString("OD")
        expDateRetrieved = Request.QueryString("ED")
        price = Session("price")

        'compose the message to be displayed when the page is loaded completely
        Dim message As String
        message = "Dear Sir/Madame " & firstNameRetrieved & " " & lastNameRetrieved & "<br />" &
        "The price for the vehicle you have configured is " & price & "<br />" &
        "The offer was issued on " & offerDateRetrieved & "  and remains valid until  " & expDateRetrieved

        'show the message in the label
        lblMessage.Text = message
    End Sub

End Class