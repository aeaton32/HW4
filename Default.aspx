
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Submit_Click(sender As Object, e As EventArgs) Handles SubmitBTN.Click

        'Create variables to hold the values entered by the user
        Dim W As Decimal = HourlyWageTB.Text
        Dim HW As Decimal = NumberOfHoursWorkedTB.Text
        Dim PostT As Decimal = PostTaxTB.Text
        Dim PreT As Decimal = PreTaxTB.Text

        Dim HOURLY_WAGE As Decimal
        HOURLY_WAGE = W


        Dim HOURS_WORKED As Integer
        HOURS_WORKED = HW

        Dim POST_TAX As Decimal
        POST_TAX = PostT

        Dim PRE_TAX As Decimal
        PRE_TAX = PreT

        Dim Weekly_Pay As Decimal
        Weekly_Pay = HOURS_WORKED * HOURLY_WAGE

        Dim TaxRate As Decimal
        If Weekly_Pay < 500 Then
            TaxRate = 0.82
        ElseIf Weekly_Pay > 500 Then
            TaxRate = 0.78
        End If



        'Now compute the net wage

        Dim NetWage = (Weekly_Pay - PRE_TAX) * TaxRate - POST_TAX

        'display the results Label web control
        Results.Text = "Your yearly net wage is $" & NetWage.ToString("#,####.##")
    End Sub
    
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles ClearBTN.Click


        HourlyWageTB.Text = ""
        NumberOfHoursWorkedTB.Text = ""
        PostTaxTB.Text = ""
        PreTaxTB.Text = ""
        Results.Text = ""

    End Sub
End Class
