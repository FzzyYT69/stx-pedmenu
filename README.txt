- ESX
-SteamHex Perms in Server.lua

dependencies

NH CONTEXT : https://github.com/nerohiro/nh-context/releases/tag/v2.21

if you want to add more peds you need to make a register event or just copy this client 

RegisterNetEvent("type your event-name")
AddEventHandler("type your event-name", function()
    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
  
        if skin.sex == 0 then

          local model = GetHashKey("your ped hash code")

          RequestModel(model)
          while not HasModelLoaded(model) do
            RequestModel(model)
            Citizen.Wait(1)
          end

          SetPlayerModel(PlayerId(), model)
          SetModelAsNoLongerNeeded(model)
        else
          local model = GetHashKey("your ped hash code")

          RequestModel(model)
          while not HasModelLoaded(model) do
            RequestModel(model)
            Citizen.Wait(1)
          end

          SetPlayerModel(PlayerId(), model)
          SetModelAsNoLongerNeeded(model)

          TriggerEvent('skinchanger:loadSkin', skin)
          TriggerEvent('esx:restoreLoadout')
          end

        end)
end)

and after that paste this under the nhcontext event in client

        {
            header = "LilFatRandy",
            event = "LILFATRANDY"
        },

DISCORD : https://discord.gg/GpAQyWPYvn
Preview : https://cdn.discordapp.com/attachments/961483712141361214/964611677679124551/unknown.png
