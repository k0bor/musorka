VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} UserForm11 
   Caption         =   "UserForm11"
   ClientHeight    =   6525
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   9900.001
   OleObjectBlob   =   "UserForm11.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "UserForm11"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim a As Double
Dim b As Double

Private Sub CommandButton1_Click()
    a = TextBox1.Text
    b = TextBox2.Text
    MsgBox (a + b)
End Sub

Private Sub CommandButton2_Click()
    a = TextBox1.Text
    b = TextBox2.Text
    If a = b Then
    MsgBox ("Число " & a & " равно числу " & b)
    Else
    MsgBox ("Число " & a & " не равно числу " & b)
    End If
End Sub

Private Sub CommandButton3_Click()
    a = TextBox1.Text
    b = TextBox2.Text
    If a = b Then
    MsgBox ("Число " & a & " и " & b & " равны")
    ElseIf a > b Then
    MsgBox ("Число " & a & " больше " & b)
    ElseIf a < b Then
    MsgBox ("Число " & a & " меньше " & b)
    End If
End Sub

Private Sub CommandButton4_Click()
    a = TextBox1.Text
    b = TextBox2.Text
    MsgBox ("c равна " & Sqr(a ^ 2 + b ^ 2 + Cos(a + b)))
End Sub
