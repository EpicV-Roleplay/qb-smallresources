local chillzone = false

Config.Points = {
    vector3(200.47, -921.7, 30.69)
}

Citizen.CreateThread(function()
    while true do
        for k,v in ipairs(Config.Points) do
            local distance = #(GetEntityCoords(PlayerPedId()) - v)
            if distance < 20 then
                if chillzone == false then
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