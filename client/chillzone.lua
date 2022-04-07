local chillzone = false

Config.Points = {
    vector3(0.0.0)
}

Citizen.CreateThread(function()
    while true do
        for k,v in ipairs(Config.Points) do
            local distance = #(GetEntityCoords(PlayerPedId()) - v)
            if distance < 20 than
                if chillzone == false than
                    chillzone = true
                    QBCore.Functions.Notify('Du hast eine ChillZone betreten!', 'error', 3000)
                    break
                else
                    TriggerServerEvent('hud:server:RelieveStress', 20)
                end 
            else
            chillzone = false
            end 
        end
        Citizen.Wait(15000)
    end
end)