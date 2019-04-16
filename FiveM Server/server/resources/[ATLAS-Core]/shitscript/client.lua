--------------------------------
-- Shit Script, Made by FAXES --
--------------------------------

RegisterCommand("piss", function()
    TriggerEvent("FaxShit:piss")
end)

RegisterCommand("shit", function()
    TriggerEvent("FaxShit:shit")
end)

----------------------------------------------------------------------

RegisterNetEvent( 'FaxShit:piss' )
AddEventHandler( 'FaxShit:piss', function()
    local ped = GetPlayerPed(-1)
    if not IsEntityPlayingAnim(ped, "missbigscore1switch_trevor_piss", "piss_loop", 3) then
        RequestAnimDict("missbigscore1switch_trevor_piss")
        while not HasAnimDictLoaded("missbigscore1switch_trevor_piss") do
            Citizen.Wait(100)
        end
        TaskPlayAnim(ped, "missbigscore1switch_trevor_piss", "piss_loop", 8.0, -8, -1, 49, 0, 0, 0, 0)
        SetCurrentPedWeapon(ped, GetHashKey("WEAPON_UNARMED"), true)
        TriggerEvent("chatMessage", "", {255, 0, 0}, "Test Piss")
        Wait(2000)
        while IsEntityPlayingAnim(ped, "missbigscore1switch_trevor_piss", "piss_loop", 3) do
            Wait(1)
            if (IsControlPressed(0, 32) or IsControlPressed(0, 33) or IsControlPressed(0, 34) or IsControlPressed(0, 35)) then
                ClearPedTasksImmediately(ped)
                break
            end
        end
    end
end)

----------------------------------------------------------------------

RegisterNetEvent( 'FaxShit:shit' )
AddEventHandler( 'FaxShit:shit', function()
    local ped = GetPlayerPed(-1)
    if not IsEntityPlayingAnim(ped, "switch@trevor@on_toilet", "trev_on_toilet_exit", 3) then
        RequestAnimDict("switch@trevor@on_toilet")
        while not HasAnimDictLoaded("switch@trevor@on_toilet") do
            Citizen.Wait(100)
        end
        TaskPlayAnim(ped, "switch@trevor@on_toilet", "trev_on_toilet_exit", 8.0, -8, -1, 49, 0, 0, 0, 0)
        SetCurrentPedWeapon(ped, GetHashKey("WEAPON_UNARMED"), true)
        TriggerEvent("chatMessage", "", {255, 0, 0}, "Test Piss")
        Wait(2000)
        while IsEntityPlayingAnim(ped, "switch@trevor@on_toilet", "trev_on_toilet_exit", 3) do
            Wait(1)
            if (IsControlPressed(0, 32) or IsControlPressed(0, 33) or IsControlPressed(0, 34) or IsControlPressed(0, 35)) then
                ClearPedTasksImmediately(ped)
                break
            end
        end
    end
end)