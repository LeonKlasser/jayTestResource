RegisterCommand('hiya', function(src, args)
    TriggerEvent('chat:addMessage', {
        args = { 'Hiya, ' .. GetPlayerName(PlayerId())}
    })
end)
