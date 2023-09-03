AddEventHandler("playerConnecting", function (name, setKickReason, deferrals)
    print(name);
end)



function CheckAdmin(playerName)
    -- Check if player name is not nil
    if playerName == nil then
        print("Player name is nil.")
        return false
    end


    local player_name = playerName
    for _, player in ipairs(GetPlayers()) do
        -- Check if the player that is current in the for loop has ace permission jayResource.admin
        local player_name_lower = GetPlayerName(player):lower()
        if player_name_lower and string.match(player_name:lower(), player_name_lower) then
            if IsPlayerAceAllowed(player, "jayResource.admin") then
                return true
            else
                return false
            end
        end
    end
end

local function cleanup()
    print("Clean up in progress..")
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(60000)
        TriggerEvent("cleanup")
    end
end)

AddEventHandler("cleanup", cleanup)
