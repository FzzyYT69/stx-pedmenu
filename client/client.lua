ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	Citizen.Wait(0)
    end
end)

RegisterNetEvent("Original:Character")
AddEventHandler("Original:Character", function()
    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
        local model = nil
    
        if skin.sex == 0 then
          model = GetHashKey("mp_m_freemode_01")
        else
          model = GetHashKey("mp_f_freemode_01")
        end
    
        RequestModel(model)
        while not HasModelLoaded(model) do
          RequestModel(model)
        end
    
        SetPlayerModel(PlayerId(), model)
        SetModelAsNoLongerNeeded(model)
    
        TriggerEvent('skinchanger:loadSkin', skin)
        TriggerEvent('esx:restoreLoadout')
    end)
end)

RegisterNetEvent("LILFATRANDY") -- example
AddEventHandler("LILFATRANDY", function()
    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
  
        if skin.sex == 0 then

          local model = GetHashKey("lilfatrandy")

          RequestModel(model)
          while not HasModelLoaded(model) do
            RequestModel(model)
          end

          SetPlayerModel(PlayerId(), model)
          SetModelAsNoLongerNeeded(model)
        else
          local model = GetHashKey("lilfatrandy")

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

RegisterNetEvent("CONTEXTMENU:1")
AddEventHandler("CONTEXTMENU:1", function()
    TriggerEvent("nh-context:createMenu", {
        {
            header = "STX PED MENU",
        },
        {
            header = "Original Ped",
            context = "Your Original Ped",
            event = "Original:Character"
        },
        {
            header = "LilFatRandy", -- example
            event = "LILFATRANDY"
        },
    })
end)