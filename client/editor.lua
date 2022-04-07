RegisterCommand("record", function(source , args)
    StartRecording(1)
    QBCore.Functions.Notify("Start der Aufnahme!", "success")
end)

RegisterCommand("clip", function(source , args)
    StartRecording(0)
end)

RegisterCommand("saveclip", function(source , args)
    StopRecordingAndSaveClip()
    QBCore.Functions.Notify("Gespeicherte Aufnahme!", "success")
end)

RegisterCommand("delclip", function(source , args)
    StopRecordingAndDiscardClip()
    QBCore.Functions.Notify("Gelöschte Aufnahme!", "error")
end)

RegisterCommand("editor", function(source , args)
    NetworkSessionLeaveSinglePlayer()
    ActivateRockstarEditor()
    QBCore.Functions.Notify("Später Aligator!", "error")
end)
