------------------------------------
--- Horn Restrict, Made by FAXES ---
------------------------------------

--- Config ---

noEmergencyHorn = true -- Allow police horns to be restricted for non-emergency vehicles.

--- Code ---

function ShowNotification(text)
    SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(false, false)
end


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local ped = GetPlayerPed(-1)
        local veh = GetVehiclePedIsUsing(ped)
        if IsPedInAnyVehicle(ped, false) then
            if GetPedInVehicleSeat(veh, -1) == ped then
                if noEmergencyHorn then
                    if GetVehicleClass(veh) ~= 18 then
                        if GetVehicleMod(veh, 14) == 1 then
                            RemoveVehicleMod(veh, 14)
                            ShowNotification("~r~This horn is restricted.")
                        end
                    end
                end
                if GetVehicleMod(veh, 14) >= 3 then
                    RemoveVehicleMod(veh, 14)
                    ShowNotification("~r~This horn is restricted.")
                end
            end
        end
	end
end)
-- {
--     HORN_STOCK = -1,
--     HORN_TRUCK, = 0
--     HORN_POLICE, = 1
--     HORN_CLOWN, = 2
--     HORN_MUSICAL1, = 3
--     HORN_MUSICAL2, 4
--     HORN_MUSICAL3,5
--     HORN_MUSICAL4,6
--     HORN_MUSICAL5,7
--     HORN_SADTROMBONE,8
--     HORN_CALSSICAL1,9
--     HORN_CALSSICAL2,10
--     HORN_CALSSICAL3,11
--     HORN_CALSSICAL4,12
--     HORN_CALSSICAL5,13
--     HORN_CALSSICAL6,14
--     HORN_CALSSICAL7,15
--     HORN_SCALEDO,16
--     HORN_SCALERE,17
--     HORN_SCALEMI,18
--     HORN_SCALEFA,19
--     HORN_SCALESOL,20
--     HORN_SCALELA,21
--     HORN_SCALETI,22
--     HORN_SCALEDO_HIGH,23
--     HORN_JAZZ1,24
--     HORN_JAZZ2,25
--     HORN_JAZZ3,26
--     HORN_JAZZLOOP,27
--     HORN_STARSPANGBAN1,28
--     HORN_STARSPANGBAN2,29
--     HORN_STARSPANGBAN3,30
--     HORN_STARSPANGBAN4,31
--     HORN_CLASSICALLOOP1,32
--     HORN_CLASSICAL8,33
--     HORN_CLASSICALLOOP2 34
-- };