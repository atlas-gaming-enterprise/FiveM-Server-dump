--[[ R P   C O M M A N D S ]]--

--credit goes to Kanersps and Lowheartrate.
local zones = { ['AIRP'] = "Los Santos International Airport", ['ALAMO'] = "Alamo Sea", ['ALTA'] = "Alta", ['ARMYB'] = "Fort Zancudo", ['BANHAMC'] = "Banham Canyon Dr", ['BANNING'] = "Banning", ['BEACH'] = "Vespucci Beach", ['BHAMCA'] = "Banham Canyon", ['BRADP'] = "Braddock Pass", ['BRADT'] = "Braddock Tunnel", ['BURTON'] = "Burton", ['CALAFB'] = "Calafia Bridge", ['CANNY'] = "Raton Canyon", ['CCREAK'] = "Cassidy Creek", ['CHAMH'] = "Chamberlain Hills", ['CHIL'] = "Vinewood Hills", ['CHU'] = "Chumash", ['CMSW'] = "Chiliad Mountain State Wilderness", ['CYPRE'] = "Cypress Flats", ['DAVIS'] = "Davis", ['DELBE'] = "Del Perro Beach", ['DELPE'] = "Del Perro", ['DELSOL'] = "La Puerta", ['DESRT'] = "Grand Senora Desert", ['DOWNT'] = "Downtown", ['DTVINE'] = "Downtown Vinewood", ['EAST_V'] = "East Vinewood", ['EBURO'] = "El Burro Heights", ['ELGORL'] = "El Gordo Lighthouse", ['ELYSIAN'] = "Elysian Island", ['GALFISH'] = "Galilee", ['GOLF'] = "GWC and Golfing Society", ['GRAPES'] = "Grapeseed", ['GREATC'] = "Great Chaparral", ['HARMO'] = "Harmony", ['HAWICK'] = "Hawick", ['HORS'] = "Vinewood Racetrack", ['HUMLAB'] = "Humane Labs and Research", ['JAIL'] = "Bolingbroke Penitentiary", ['KOREAT'] = "Little Seoul", ['LACT'] = "Land Act Reservoir", ['LAGO'] = "Lago Zancudo", ['LDAM'] = "Land Act Dam", ['LEGSQU'] = "Legion Square", ['LMESA'] = "La Mesa", ['LOSPUER'] = "La Puerta", ['MIRR'] = "Mirror Park", ['MORN'] = "Morningwood", ['MOVIE'] = "Richards Majestic", ['MTCHIL'] = "Mount Chiliad", ['MTGORDO'] = "Mount Gordo", ['MTJOSE'] = "Mount Josiah", ['MURRI'] = "Murrieta Heights", ['NCHU'] = "North Chumash", ['NOOSE'] = "N.O.O.S.E", ['OCEANA'] = "Pacific Ocean", ['PALCOV'] = "Paleto Cove", ['PALETO'] = "Paleto Bay", ['PALFOR'] = "Paleto Forest", ['PALHIGH'] = "Palomino Highlands", ['PALMPOW'] = "Palmer-Taylor Power Station", ['PBLUFF'] = "Pacific Bluffs", ['PBOX'] = "Pillbox Hill", ['PROCOB'] = "Procopio Beach", ['RANCHO'] = "Rancho", ['RGLEN'] = "Richman Glen", ['RICHM'] = "Richman", ['ROCKF'] = "Rockford Hills", ['RTRAK'] = "Redwood Lights Track", ['SANAND'] = "San Andreas", ['SANCHIA'] = "San Chianski Mountain Range", ['SANDY'] = "Sandy Shores", ['SKID'] = "Mission Row", ['SLAB'] = "Stab City", ['STAD'] = "Maze Bank Arena", ['STRAW'] = "Strawberry", ['TATAMO'] = "Tataviam Mountains", ['TERMINA'] = "Terminal", ['TEXTI'] = "Textile City", ['TONGVAH'] = "Tongva Hills", ['TONGVAV'] = "Tongva Valley", ['VCANA'] = "Vespucci Canals", ['VESP'] = "Vespucci", ['VINE'] = "Vinewood", ['WINDF'] = "Ron Alternates Wind Farm", ['WVINE'] = "West Vinewood", ['ZANCUDO'] = "Zancudo River", ['ZP_ORT'] = "Port of South Los Santos", ['ZQ_UAR'] = "Davis Quartz" }
local directions = { [0] = 'North', [45] = 'NW', [90] = 'West', [135] = 'SW', [180] = 'South', [225] = 'SE', [270] = 'East', [315] = 'NE', [360] = 'North', } 

Citizen.CreateThread(function()
--	while true do
 --               Citizen.Wait(0)
				--if IsControlJustPressed(0, send_location_keybind) then --Press N
             --TriggerEvent( 'TwentyLocation', source )
				--			end
				--		end
					--end)

--RegisterNetEvent('getDirection')
--AddEventHandler('getDirection', function()
--	for k,v in pairs(directions)do
	--direction = GetEntityHeading(GetPlayerPed(-1))
		--if(math.abs(direction - k) < 22.5)then
			--direction = v
			--break;
		--end
	--end
--	return direction
--end)

--RegisterNetEvent('getLocation')
--AddEventHandler('getLocation', function()
	--pos = GetEntityCoords(GetPlayerPed(-1))
	--var1, var2 = GetStreetNameAtCoord(pos.x, pos.y, pos.z, Citizen.ResultAsInteger(), Citizen.ResultAsInteger())
	--current_zone = zones[GetNameOfZone(pos.x, pos.y, pos.z)]
	--street = (GetStreetNameFromHashKey(var1))
	--myname = NetworkPlayerGetName(PlayerId())
--end)

RegisterNetEvent('PanicLocation')
AddEventHandler('PanicLocation', function()
	TriggerEvent('getLocation')
			if DoesBlipExist(blip) then
				RemoveBlip(blip)
			end	
		
		TriggerServerEvent('chatEvent', "^1-- " .. myname .. " has pressed their panic button at " .. street .. " (" .. current_zone .. ") --")
		--[[blip = AddBlipForCoord(pos.x, pos.y, pos.z)
		SetBlipRoute(blip, 1)
		SetBlipRouteColour(blip, 1)
		SetBlipColour(blip, 1)
		SetBlipFlashes(blip, 1)
		Wait(btime * 1000)
		RemoveBlip(blip)]]--
end)

RegisterNetEvent('TwentyLocation')
AddEventHandler('TwentyLocation', function()
	TriggerEvent('getLocation')
	TriggerEvent('getDirection')
	
	TriggerServerEvent('chatEvent', "^2[^710-20^2]^7 " .. myname .. " |^2 " .. street .. "^7 (^2" .. current_zone .. "^7) - " .. direction .. " Bound")
end)