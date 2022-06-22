ShowNotificationTicker = function(message)
    BeginTextCommandThefeedPost('STRING')
    AddTextComponentSubstringPlayerName(message)
    EndTextCommandThefeedPostTicker(0, 1)
end

RegisterCommand('v4', function()
    local coords, heading = GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId())
    SendNUIMessage({
        type = 'clipboard',
        data = '' .. vec(coords.x, coords.y, coords.z, heading)
    })
    TriggerEvent("grrp_notification:Left", "TOOLS", "Copy v4 to Clipboard" , 8000)
end)

RegisterCommand('v3', function()
    local coords, heading = GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId())
    SendNUIMessage({
        type = 'clipboard',
        data = '' .. vec(coords.x, coords.y, coords.z)
    })
    TriggerEvent("grrp_notification:Left", "TOOLS", "Copy v3 to Clipboard" , 8000)
end)


