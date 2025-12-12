VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} UserForm12 
   Caption         =   "UserForm12"
   ClientHeight    =   8040
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   17940
   OleObjectBlob   =   "UserForm12.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "UserForm12"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub ComboBox1_Change()

End Sub

Private Sub CommandButton5_Click()
Frame1.Width = ComboBox2.Text
Frame1.Height = ComboBox2.Text
If ComboBox1.Text = "Синий" Then
    Frame1.BackColor = &HFF0000
ElseIf ComboBox1.Text = "Красный" Then
    Frame1.BackColor = &HC0&
ElseIf ComboBox1.Text = "Черный" Then
    Frame1.BackColor = &H0&
ElseIf ComboBox1.Text = "Зеленый" Then
    Frame1.BackColor = &HC000&
End If
End Sub

Private Sub Sinus_Click()

    Dim i As Integer
    For i = 0 To 100
        Dim newX As Single
        newX = i * (Me.Width - Frame1.Width) / 100
        Dim newY As Single
        newY = Me.Height / 2 + 50 * Sin(i * 0.15)
        Frame1.Move newX, newY
        DoEvents
        Dim wait As Double
        wait = Timer + 0.05
        Do While Timer < wait
            DoEvents
        Loop
    Next i

End Sub
Private Sub CommandButton6_Click()
UserForm12.Hide
End Sub


Private Sub UserForm_Initialize()
    ComboBox1.AddItem "Синий"
    ComboBox1.AddItem "Красный"
    ComboBox1.AddItem "Черный"
    ComboBox1.AddItem "Зеленый"
    ComboBox2.AddItem "20"
    ComboBox2.AddItem "40"
    ComboBox2.AddItem "60"
    ComboBox2.AddItem "100"
End Sub
Private Sub CommandButton1_Click()
Frame1.Move Frame1.Left - -100
End Sub

Private Sub CommandButton2_Click()
Frame1.Move Frame1.Left, Frame1.Top - 30
End Sub

Private Sub CommandButton3_Click()
Frame1.Top = Rnd * 300 + 30
Frame1.Left = Rnd * 300 + 30
End Sub

Private Sub CommandButton4_Click()
flag = 1
 Do While flag < 7
    Application.wait Now + TimeValue("00:00:01")
        If flag = 1 Then
            Frame1.Left = Left + 80
            Frame1.Top = Top - 40
        ElseIf flag = 2 Then
            Frame1.Left = Left + 120
            Frame1.Top = Top + 40
        ElseIf flag = 3 Then
            Frame1.Left = Left + 160
            Frame1.Top = Top - 40
        ElseIf flag = 4 Then
            Frame1.Left = Left + 200
            Frame1.Top = Top + 40
        ElseIf flag = 5 Then
            Frame1.Left = Left + 240
            Frame1.Top = Top - 40
        ElseIf flag = 6 Then
            Frame1.Left = Left + 280
            Frame1.Top = Top + 40
        End If
        flag = flag + 1
    Loop
End Sub

Private Sub Frame1_Click()

End Sub
