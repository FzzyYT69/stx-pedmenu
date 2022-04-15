if you want to add more peds you need to make a register event or just copy this client 

RegisterNetEvent("type your event-name")
AddEventHandler("type your event-name", function()
    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
  
        if skin.sex == 0 then

          local model = GetHashKey("your ped hash code")

          RequestModel(model)
          while not HasModelLoaded(model) do
            RequestModel(model)
          end

          SetPlayerModel(PlayerId(), model)
          SetModelAsNoLongerNeeded(model)
        else
          local model = GetHashKey("your ped hash code")

          RequestModel(model)
          while not HasModelLoaded(model) do
            RequestModel(model)
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
