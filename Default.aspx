
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Submit_Click(sender As Object, e As EventArgs) Handles SubmitBTN.Click

        'Create variables to hold the values entered by the user
        Dim W As Decimal = HourlyWageTB.Text
        Dim HW As Decimal = NumberOfHoursWorkedTB.Text
        Dim PostT As Decimal = PostTaxTB.Text
        Dim PreT As Decimal = PreTaxTB.Text

       


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
