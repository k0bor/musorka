Sub CountSpecificWord()
    Dim searchText As String
    Dim count As Long
    Dim rng As Range

    searchText = "WORD"

    Set rng = ActiveDocument.Content
    count = 0

    With rng.Find
        .ClearFormatting
        .Text = searchText
        .Forward = True
        .Wrap = wdFindStop
        .MatchWholeWord = True
        .Execute
        Do While .Found
            count = count + 1
            .Execute
             With rng.Font
        .Bold = True
        .Color = wdColorRed
        .Italic = False
        End With
        Loop
    End With

    MsgBox "Ñëîâî " & searchText & " Íàéäåíî " & count & " ðàç"
End Sub
