--[[ R P   C O M M A N D S ]]--


-----------------------------------/ O O C \---------------------------------
AddEventHandler('chatMessage', function(source, name, msg)
    sm = stringsplit(msg, " ");
      if msg:sub(1, 2) == '/OOC' and enable_core_commands == true then
        CancelEvent()
        TriggerClientEvent('chatMessage', -1, name ..  " ^2[^7OOC^2] ", { 255, 255, 255 }, string.sub(msg,3))
    end
end)

-----------------------------------/ M E \---------------------------------
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/me" and enable_core_commands == true then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^2>*^0" .. name .. " " .. string.sub(msg,5), { 255, 255, 255 })
	end
end)

-----------------------------------/ I T \---------------------------------
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/it" and enable_core_commands == true then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^2>*^0" .. string.sub(msg,5), { 255, 255, 255 })

	end
end)

-----------------------------------/ R A D I O \---------------------------------
AddEventHandler('chatMessage', function(source, name, msg)
  sm = stringsplit(msg, " ");
  if sm[1] == "/r" and enable_roleplay_commands == true then
    CancelEvent()
    TriggerClientEvent('chatMessage', -1,name .. " ^4[^7Radio^4]", { 255, 255, 255 }, string.sub(msg,4))
  end
end)

-----------------------------------/ D I S P A T C H \---------------------------------
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/dispatch" and enable_roleplay_commands == true then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1,name .. " ^2[^7Dispatch^2] ", { 255, 255, 255 }, string.sub(msg,10))
	end
end)

-----------------------------------/ 9 1 1 \---------------------------------
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	mesg = string.sub(msg,5)
	number1 = nil
	number2 = nil
	number3 = nil

	if sm[1] == "/911" and enable_roleplay_commands == true then
		CancelEvent()
	if sm[2] == nil then
		number1 = tonumber(math.random(100,999))
		number2 = tonumber(math.random(100,999))
		number3 = tonumber(math.random(100,999))
		callerid = (number1 .. "-" .. number2 .. "-" .. number3)
		TriggerClientEvent('chatMessage', -1, "^2[^7911 CALL^2]^7 - ^2(^7Caller ID: " .. callerid .. "^2)^7", { 255, 255, 255 })
	elseif callerid == nil then
		TriggerClientEvent('chatMessage', -1,"Do /911 to generate a Caller ID!", { 255, 255, 255 })
	else
		TriggerClientEvent('chatMessage', -1, "^2[^7911 CALL^2]^7 - ^2(^7Caller ID: " .. callerid .. "^2)^7 - " .. string.sub(msg,5), { 255, 255, 255 })
		end
	end
end)

--------------------/ R P   N A M E \------------------------------
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/rpname" and enable_roleplay_commands == true then
		CancelEvent()
		if sm[2] == nil then
			TriggerClientEvent('chatMessage', -1, "/rpname <Name_Surname/Name> <Message>", { 255, 255, 255 })
		else
		rpname = string.gsub(sm[2], "_", " ")
		rpmsg = string.sub(msg, #sm[1] + 1 + #sm[2] + 2, #msg)
		TriggerClientEvent('chatMessage', -1, "^2".. rpname .. "^7: " .. rpmsg, { 255, 255, 255 })
		end
	end
end)

-------------------/ R O L L \----------------------------
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/roll" and enable_roleplay_commands == true then
		CancelEvent()
		if sm[2] == nil then 
			minN = 0
			maxN = 100
			numbr = math.random(minN,maxN)
			TriggerClientEvent('chatMessage', -1, name .. " rolled" .. " ^2" .. numbr .. " ^0out of^3 " .. maxN, { 255, 255, 255 })
		elseif sm[3] == nil then
			minN = 0
			maxN = tonumber(sm[2])
			if not maxN or maxN <= 0 then
			else
				numbr = math.random(minN,maxN)
				TriggerClientEvent('chatMessage', -1, name .. " rolled" .. " ^2" .. numbr .. " ^0out of^3 " .. maxN, { 255, 255, 255 })
			end
		else
			minN = tonumber(sm[2])
			maxN = tonumber(sm[3])
			if (not maxN) or (not minN) or minN > maxN then
			else
				numbr = math.random(minN,maxN)
				TriggerClientEvent('chatMessage', -1, name .. " rolled" .. " ^2" .. numbr .. " ^0out of^3 " .. minN .. " - " .. maxN, { 255, 255, 255 })
			end
		end
	end
end)


-----------------------------------/ I D \---------------------------------
 AddEventHandler('chatMessage', function(source, name, msg)
sm = stringsplit(msg, " ");
if sm[1] == "/id" and enable_police_commands == true then
	CancelEvent()
	if sm[2] == nil then 
		TriggerClientEvent('chatMessage', -1, "/id <First Name> <Surname>", {255,255,255})
	elseif sm[3] == nil then 
		TriggerClientEvent('chatMessage', -1, "/id <First Name> <Surname>", {255,255,255})
	elseif sm[4] == nil then 
		fname = sm[2]
		sname = sm[3]
			TriggerClientEvent('chatMessage', -1, "^2ID ^7|^2 First Name:^7 " .. fname .. " ^2Surname:^7 " .. sname, {255,255,255})
	else
		fname = sm[2]
		sname = sm[3]
		dob = sm[4]
			TriggerClientEvent('chatMessage', -1, "^2ID ^7|^2 First Name:^7 " .. fname .. " ^2Surname:^7 " .. sname .. " ^2DOB:^7 " .. dob, {255,255,255})
	end
end
end)

RegisterServerEvent('chatEvent')
AddEventHandler('chatEvent', function(string)
  TriggerClientEvent('chatMessage', -1, string)
end)

AddEventHandler('chatMessage', function(s, n, m)
	local message = string.lower(m)
	if message == "/p" and enable_police_commands == true then
		CancelEvent()
		--------------
		TriggerClientEvent('PanicLocation', s)
	end
end)

AddEventHandler('chatMessage', function(s, n, m)
	local message = string.lower(m)
	--10-20
	if message == "/20" and enable_police_commands == true then
		CancelEvent()
		--------------
		TriggerClientEvent('TwentyLocation', s)
	--10-8
	elseif message == "/8" and enable_police_commands == true then
		CancelEvent()
		--------------
		TriggerClientEvent('chatMessage', -1, "^3>^2" .. n .. "^7 is now ^510-8^7, available for callouts.")
	--10-8f
	elseif message == "/8f" and enable_police_commands == true then
		CancelEvent()
		--------------
		TriggerClientEvent('chatMessage', -1, "^3>^2" .. n .. "^7 is now ^510-8^7, on a foot patrol.")
	--10-7
	elseif message == "/7" and enable_police_commands == true then
		CancelEvent()
		--------------
		TriggerClientEvent('chatMessage', -1, "^3>^2" .. n .. "^7 is now ^110-7^7, unavailable.")
	--10-7g
	elseif message == "/7g" and enable_police_commands == true then
		CancelEvent()
		--------------
		TriggerClientEvent('chatMessage', -1, "^3>^2" .. n .. "^7 is now ^110-7^7, getting gas/vehicle repair.")
	--10-7f
	elseif message == "/7f" and enable_police_commands == true then
		CancelEvent()
		--------------
		TriggerClientEvent('chatMessage', -1, "^3>^2" .. n .. "^7 is now ^110-7^7, getting fuel/vehicle repair.")
	--10-7i
	elseif message == "/7i" and enable_police_commands == true then
		CancelEvent()
		--------------
		TriggerClientEvent('chatMessage', -1, "^3>^2" .. n .. "^7 is now ^110-7^7, due to an investigation.")
	--10-7m
	elseif message == "/6m" and enable_police_commands == true then
		CancelEvent()
		--------------
		TriggerClientEvent('chatMessage', -1, "^3>^2" .. n .. "^7 is now ^110-6^7, having a meal.")
	--10-6
	elseif message == "/6" and enable_police_commands == true then
		CancelEvent()
		--------------
		TriggerClientEvent('chatMessage', -1, "^3>^2" .. n .. "^7 is now ^310-6^7, unavailable unless urgent.")
	--10-80
	elseif message == "/80" and enable_police_commands == true then
		CancelEvent()
		--------------
		TriggerClientEvent('chatMessage', -1, "^3>^2" .. n .. " ^7is in a ^310-80 ^7.")
	--10-4
	elseif message == "/4" and enable_police_commands == true then
		CancelEvent()
		--------------
		TriggerClientEvent('chatMessage', -1, n .. " ^4[^7Radio^4]^7: 10-4")
	--10-23
	elseif message == "/23" and enable_police_commands == true then
		CancelEvent()
		--------------
		TriggerClientEvent('chatMessage', -1, "^3>^2" .. n .. "^7 is ^510-23^7, on-scene.")
	--Code-4
	elseif message == "/code4" and enable_police_commands == true then
		CancelEvent()
		--------------
		TriggerClientEvent('chatMessage', -1, n .. " ^4[^7Radio^4]^7: Situation is ^2Code 4^7.")
	end
end)
	--10-32
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/32" and enable_police_commands == true then
		CancelEvent()
		if sm[2] == nil then
			TriggerClientEvent('chatMessage', -1, "^3>^2" .. name .. " ^7is requesting a ^310-32 ^7to his location.", { 255, 255, 255 })
		else
			if sm[2] == 'code1' or sm[2] == '1' then
				response = 'Code 1'
			elseif sm[2] == 'code2' or sm[2] == '2' then
				response = 'Code 2'
			elseif sm[2] == 'code3' or sm[2] == '3' then
				response = 'Code 3'
			else
			response = ''
			end
			TriggerClientEvent('chatMessage', -1, "^3>^2" .. name .. " ^7is requesting a ^310-32^1 " .. response .. "^7 to his location.", { 255, 255, 255 })
		end
	end
end)
	--10-47
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/47" and enable_police_commands == true then
		CancelEvent()
		if sm[2] == nil then
			TriggerClientEvent('chatMessage', -1, "^3>^2" .. name .. "^7 is ^510-47^7, en-route.")
		else
			if sm[2] == 'code1' or sm[2] == '1' then
				response = 'Code 1'
			elseif sm[2] == 'code2' or sm[2] == '2' then
				response = 'Code 2'
			elseif sm[2] == 'code3' or sm[2] == '3' then
				response = 'Code 3'
			else
				response = ''
			end
			TriggerClientEvent('chatMessage', -1, "^3>^2" .. name .. " ^7 is ^510-47^7, en-route ^1" .. response .. "^7 to location.", { 255, 255, 255 })
		end
	end
end)

	--10-11
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/11" and enable_police_commands == true then
		CancelEvent()
		if sm[2] == nil then
			TriggerClientEvent('chatMessage', -1, "^3>^2" .. name .. " ^7is on a ^310-11" , { 255, 255, 255 })
		elseif sm[3] == nil then
		color = sm[2]
			TriggerClientEvent('chatMessage', -1, "^3>^2" .. name .. " ^7is on a ^310-11 ^7with a ^1" .. color .. " ^7vehicle." , { 255, 255, 255 })
		else
		color = sm[2]
		vehicle = string.sub(msg, #sm[1] + 1 + #sm[2] + 2, #msg)
		TriggerClientEvent('chatMessage', -1, "^3>^2" .. name .. " ^7is on a ^310-11 ^7with a ^1" .. color .. "  " .. vehicle .. "^7." , { 255, 255, 255 })
			end
	end
end)

	--10-28
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/28" and enable_police_commands == true then
		CancelEvent()
		if sm[2] == nil then
			TriggerClientEvent('chatMessage', -1, "^3>^2" .. name .. " ^7is requesting a ^310-28^7. (License and registration check)" , { 255, 255, 255 })
		elseif sm[3] == nil then
		plate = sm[2]
			TriggerClientEvent('chatMessage', -1, "^3>^2" .. name .. " ^7is requesting a ^310-28^7 for ^1" .. string.upper(tostring(plate)) .. " ^7." , { 255, 255, 255 })
		else
		plate = sm[2]
		vehicle = string.sub(msg, #sm[1] + 1 + #sm[2] + 2, #msg)
		TriggerClientEvent('chatMessage', -1, "^3>^2" .. name .. " ^7is requesting a ^310-28^7 for a ^1" .. string.upper(tostring(plate)) .. "  " .. vehicle .. "^7." , { 255, 255, 255 })
			end
	end
end)

	--10-29
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/29" and enable_police_commands == true then
		CancelEvent()
		if sm[2] == nil then
			TriggerClientEvent('chatMessage', -1, "^3>^2" .. name .. " ^7is requesting a ^310-29^7. (Warrant and record check)" , { 255, 255, 255 })
		elseif sm[3] == nil then
		plate = sm[2]
			TriggerClientEvent('chatMessage', -1, "^3>^2" .. name .. " ^7is requesting a ^310-29^7 for ^1" .. string.upper(tostring(plate)) .. " ^7." , { 255, 255, 255 })
		else
		plate = sm[2]
		vehicle = string.sub(msg, #sm[1] + 1 + #sm[2] + 2, #msg)
		TriggerClientEvent('chatMessage', -1, "^3>^2" .. name .. " ^7is requesting a ^310-29^7 for ^1" .. string.upper(tostring(plate)) .. " - " .. string.upper(tostring(vehicle)) .. "^7." , { 255, 255, 255 })
			end
	end
end)


-- STRING SPLIT FUNCTION
function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end