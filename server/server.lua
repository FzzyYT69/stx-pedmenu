local allowed =
{
    "steam:",
    "steam:"
}
--You can get your steamhex from http://www.vacbanned.com/ and entering your steam id then copying Steam3 ID (64bit) HEX and not DEC
RegisterCommand("ped1", function(source)
    local identifier = GetPlayerIdentifiers(source)[1]
        if checkAllowed(identifier) then

            TriggerClientEvent("CONTEXTMENU:1", source)
        end
end)


function checkAllowed(id)
    for k, v in pairs(allowed) do
        if id == v then
	    return true
        end
    end
    return false
end
