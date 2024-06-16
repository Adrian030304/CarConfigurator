Public Class Configurator
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub rblOptionals_SelectedIndexChanged(sender As Object, e As EventArgs) Handles rblOptionals.SelectedIndexChanged
        If rblOptionals.SelectedValue = "Yes" Then
            cblOptionals.Visible = True
        Else
            cblOptionals.Visible = False
        End If
    End Sub

    Protected Sub btnDisplayOffer_Click(sender As Object, e As EventArgs) Handles btnDisplayOffer.Click
        'price calculation
        '==================================================================
        Dim price As Decimal
        If cmbEquipmentLevel.SelectedValue = "Standard" Then
            price = 20000
        ElseIf cmbEquipmentLevel.SelectedValue = "Evolved" Then
            price = 22000
        ElseIf cmbEquipmentLevel.SelectedValue = "Evolved" Then
            price = 27000
        Else
            price = 32000
        End If
        'increase the price if extended warranty is selected
        If rblWarranty.SelectedValue = 5 Then
            price += 2000
        End If
        'increase the calculated price if optionals are selected
        If rblOptionals.SelectedIndex = 0 Then 'the user selected Yes
            'check for each optional if it is selected
            If cblOptionals.Items(0).Selected Then
                price += 1000
            End If
            If cblOptionals.Items(1).Selected Then
                price += 1500
            End If
            If cblOptionals.Items(2).Selected Then
                price += 1300
            End If
            If cblOptionals.Items(3).Selected Then
                price += 1000
            End If
            If cblOptionals.Items(4).Selected Then
                price += 850
            End If
        End If
        'apply discount if whole payment is made
        If chkWholePayment.Checked Then
            price = price * (1 - 10 / 100)
        End If
        'apply discount for CASCO insurance
        If chkCASCO.Checked Then
            price -= 1000
        End If
        '==================================================================
        'prepare the data for transfer to the Offer.aspx page
        '==================================================================
        Dim firstName As String, lastName As String, offerDate As Date, expirationDate As Date
        firstName = txtFirstName.Text
        lastName = txtLastName.Text
        offerDate = calOfferDate.SelectedDate
        expirationDate = calExpirationDate.SelectedDate

        'load the data in session variables to be retained for the entire application
        Session("FN") = firstName
        Session("LN") = lastName
        Session("price") = price
        'offer date and offer expiration date will be transferred in the URL as Query string variables
        Response.Redirect("Offer.aspx?OD=" & offerDate.ToShortDateString & "&ED=" & expirationDate.ToShortDateString)

        '==================================================================
    End Sub
End Class