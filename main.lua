--//** created by 6ur4cc with love <3 **\\--

QBCore = nil 
local PlayerData                = {}

Citizen.CreateThread(function()
   while QBCore == nil do
   	TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)
   	Citizen.Wait(0) -- wacht "0" seconden
	end

	Citizen.Wait(5000)
	PlayerData = QBCore.Functions.GetPlayerData()
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
            if IsPedInAnyVehicle(PlayerPedId()) then
                SetUserRadioControlEnabled(false)
                if GetPlayerRadioStationName() ~= nil then
                SetVehRadioStation(GetVehiclePedIsIn(PlayerPedId()),"OFF")
                end
        end
    end
end)
