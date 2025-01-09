ESX = nil

local base64MoneyIcon = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFoAAABaCAMAAAAPdrEwAAAAIGNIUk0AAHolAACAgwAA+f8AAIDpAAB1MAAA6mAAADqYAAAXb5JfxUYAAAMAUExURQAAACmvPCmwPCuwPiywPi2wPy6xQC6xQS+yQTCxQTCyQTCyQjGyQzKyRDOzRTSzRTSzRjW0RjW0Rza0SDe0STi0STm1Sjq1Szq2Szu2TDy2TDy2TT22Tj63Tz+3UEC4UEG4UUG4UkK4U0O5VES5VEW6VUa6Vke6V0i7WEm7WUu8Wku8W0y8W028XE29XU++XlC9X1C+X1G+YFK+YVO/YlW/ZFXAZFfAZVfAZljBZlnBZ1rBaVvCaVvCalzDal7CbF/DbV/EbWHEbmLEb2LEcGTFcWfGdGjHdWrHd2vId2vIeGzIeW3JenHKfXLKfnPLf3TLgHXLgXXMgHXMgXbMgnjNg3nMhHrNhnrOhnzOiH7PiYLQjYPRjoTRjoTRj4XRkIXSkIfSkojSk4rUlYzUlo7VmJDWmpHWm5LXnJTXnZTXnpXYnpbYn5nZopzapJ3bpZ7bpp7bp6DcqKLcqqPcq6Tcq6TdrKberqjfr6jfsKnfsavgs6zgs6zgtK7hta/htrDit7LiuLLiubPjurTjurXju7bkvLbkvbnlv7rlwLrmwLzmwr3nw77nxMDnxcLox8PpyMTpycXpysXqysbqy8fqzMnrzcrrz8vsz8vs0Mzs0c3t0tHu1dHu1tPv19Tv2NXv2dXw2dbw2tfw29jw3Nnx3drx3t7z4d/z4uD04+H05OP15eP15uT15uT15+X16OX26Of26en36+r37Ov37er47Ov47ez47e347u347+758PD58fD68fD68vL69PT79fX79vb79/b89vb89/f8+Pj9+fn9+vr9+/v++/v+/Pz+/P3+/f3+/v7//wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALfZHJgAAAEAdFJOU////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wBT9wclAAAACXBIWXMAAA7DAAAOwwHHb6hkAAAAGHRFWHRTb2Z0d2FyZQBwYWludC5uZXQgNC4xLjb9TgnoAAAGdUlEQVRoQ7WZ93sURRiAFZO76O1eklt215OgBwqJgmgCRhAhRrAAiogBK4gBJEFEgWAEYiGIYEGp1kjXQECkiF0OWyjJ/k34zcy3db7Zu8fHe3/KTXnzPbPT56orRTEYAhMLUFgNKkeiGH8BNaV1KWSPVXveU9s3LW9pvhdoblm+afspTHZi5Wo1BnzpaOfcnFmWSBv29YBtpBNlZm5u59FLPDsmdJUaxQeXNugZw5IwMnrD0oO8iFKuUHNx/+bGZLWNMgm7Otm4uZ/LsVIEUs3F+Y5a3USNAlOv7cgr5ZSamQffyOnKgH1sPdfFi2PVILKaReEcmKwVIWbY2uQDvApW95HULIb+Ng0rFoXWxppcCjyqZuZjk4oNWWBrk44R7oiamXdkC3w9GTO7Q3aH1cy8OkWFnHtitstM4j/bqdWSO6Rm5nYdS4e5FbKQwxlMC6G3Q1bIHVQz8+IKLBphJLdydlRjWpiKxZAXdAfUPOak4gOO4FZOdxWmhbGTkbh9NTOvoVsDuGmAaxkdlZgWRV8Dub7bV0PyzhQWkqk5z7WMdjpqILUTslEXUEPQJ7Lq7pz9WXiBZ4iZUGBnTwTCdtVgvjgxpj+b3vTvTEteq5KbEy/6blcNVZapR3cmdc9Z4QV6Pnxzdr1GF9aWQQFUohqCPqQc3ZV17X3C6tP31kyL+Jy2dsgLW6jBPDgVc6OkR3XxCV/i9IqRRFedylxc6qk30L3DNF7ikz1Jft0oLOaT2hBSg/l8jmwOo24/amimYzkfOwfdlLtdNT1YjIaf0EFzgGhuNnB8teNcqCWDvs3vzSSLqC9Ze0F0EqaGoDeSQWt7UaHgXA0WDKFvFGEzNRS6mxot6VZhUNJNdm7zbsgSagj6UAKTQ5hnhEHJffRISIi+LdRLyNn9cTSoOExP3FZmiat2nIF66t9Xb0GFz8Df+AenVTEF2vUwAzM1BN1LfsTkcVS4bJs+fnRj84z3joqf+eFYUELvZWFzdSfZHjeeEwqXl6/myWaZ0bSVDf3uJP9NkOn01HPISXIMTJAB/hiB6WBPN+xxBpvxl4wxR6ihll8pSL1QupwLLhR22YL9ysVGrKRcfZJeAu4QSo+1yWA3rla2NGCeZGpoj13lmBJm1F/odDm+fv68phorU0l+miDlu6BFmLqbHDCWdhqVQQb/zPesW1inqxdoRqIb1SvSmBJG+wR1BF+/NkmLWUnTK1DdQq+i5gvoIbn85QPqtdRoQfU0TIgy4h/UKOi+gZ5DgGmonqIoob2CDhXHblE0ij2lgNo2YMcSy7fkhF2E2rIm/IoOFV/Q+78i1JkJheJ+jOzjnlr1GRk18swa4iC9t3U/o6LzCVLTP4dlVM14LBfC63yKIYOYeuMqcRoneZFqEW/IKAY6Q8xumla3YP2+PNnNt1Jqb6Arpifg5kXuHjNTaVi1s5/eJs0r+6gFUkxP6kkV2mKBs8UMZSYMdmAJcpxqTTGpqpcCEO1znCMTwlPFNbuF0uUs1UVwKYAWoRcwGDHsbNS/algwu+J1bvToI9TuAgZqetm1roPVk/FDazbhjaryr0SiSw/R1oFll94sWNnfsLrzS1eTkawyjKrE6HcwyeVtIix3s6Dc4ljzsTbnx74P1na83+uf8ZBn5cb0tjgsbHJjlvoMa8dxWT4XBDZmoCa3k7eH9yE0u4l9jr+dZN2P2ASnVorK8TwoVwxsglnYxNY9852oHMseogMEt+4QtnzgGDoTa8eRH4ulA4QOHCxs6ZhUBdNAIS7NIjp1+JgEaulwZzwsnXCjDDxPzB+Rwx1zS0fSoVZb/Mp4/lFqQxk5kjI1cZDWa179HTUEe8eRW9XoQZq5qeN/5fCFigWmd14VNRXLx3/et8lLC7N8XNtH0VP6mXfvV+z4iEsLFrbqqkXXho2Z8dynwgo8NdZK0SXpqxbmjrsgquhCsXrhgOYgL4h4k8Rca5VvFV7gTkySUVxrsbBjLuOGfMy1jCZFa6gv47hbeYU4ZA/XMmbRy13MFaJwqy4+Ez1cy3iSVsddfGLcdJvo33Ato5VcSeOva4WbvmQ2v+daxkrqfqXQJbNwk1fj9kOPuNwlZxdxNS7c5IW+MdRFMhd3oS/cpXmG4EOnRI8nAAt8sKsETz4AK1yahyqAy0vxvAaU7lEQcJ8yj9BPmUf+81MmR8iB//kBllOyZ2NOqR67XUAVABNjuXLlX2rCcoFjOcGoAAAAAElFTkSuQmCC'
local orgName
local orgGrade
local orgLabel
local allowstash
local allowmoney
local allowrecruit
local alloweditranks
local warehouseNumbers = {}
local playerOnline = false
local detailsLoaded = false -- register organisation on login ,stop it from repeating
local HasAlreadyEnteredMarker, LastZone = false, nil
local CurrentAction, CurrentActionMsg, CurrentActionData = nil, '', {}
local currentWarehouse
local currentGarage
local arrayWeight = Config.localWeight
local currentWeight = 0
local capacity
local pedsincar = {}
local garageBlip 
local warehouseBlip
local HQBlip
local HQInvite = 0
local wanted = false
local OwnedGarageBlip
local OwnedWarehouseBlip
local OwnedHQBlip
local buyHQBlips = {}
local buyGarageBlips = {}
local buyWarehouseBlips = {}
local playerJob

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	playerOnline = true
	Citizen.Wait(3000)
	playerJob = ESX.GetPlayerData().job.name
	TriggerEvent('cb:playerLoaded')
	TriggerServerEvent('cb_orgs:logInInstance')
end)

AddEventHandler('onResourceStart', function(resource)
	if resource == GetCurrentResourceName() then
		Citizen.Wait(3000)
		playerOnline = true
	end
end)

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().org == nil do
		Citizen.Wait(10)
	end

	ESX.PlayerData = ESX.GetPlayerData()
end)

-- Update client every 2.5 seconds on what their org and grade details are currently
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(500)

		if playerOnline == true then
			ESX.TriggerServerCallback('cb_orgs:getDetails', function(details)
				for i=1, #details, 1 do
					orgName = details[i].name
					orgGrade = details[i].grade
					orgLabel = details[i].label
				end
			end)	

			ESX.TriggerServerCallback('cb_orgs:getGradeDetails', function(gradeDetails)
				for i=1, #gradeDetails, 1 do
					allowstash = gradeDetails[i].allowstash
					allowmoney = gradeDetails[i].allowmoney
					allowrecruit = gradeDetails[i].allowrecruit
					alloweditranks = gradeDetails[i].alloweditranks
				end
			end)

			playerJob = ESX.GetPlayerData().job.name
			Citizen.Wait(2000)
		end

		if playerOnline == true then
			if detailsLoaded == false then
				Citizen.Wait(1000)
				--get all orgs after server restart, then register them on server side
				TriggerServerEvent('cb_orgs:registerorganisation', orgName, orgLabel, 'org_'..orgName..'', 'org_'..orgName..'', 'org_'..orgName..'', {type = 'private'})
				detailsLoaded = true
			end
		end

		if playerOnline == true then

			Citizen.Wait(1000)
			ESX.TriggerServerCallback('cb_orgs:getOrgProperties', function(propertyDetails)
				for i=1, #propertyDetails, 1 do
					garageBlip = propertyDetails[i].garageBlip
					warehouseBlip = propertyDetails[i].warehouseBlip
					HQBlip = propertyDetails[i].hqBlip
				end
			end, orgName)
			CreateBlips()
		end

		if playerOnline == true then
			if orgName == nil then
				ESX.TriggerServerCallback('cb_orgs:getDetails', function(details)
					for i=1, #details, 1 do
						orgName = details[i].name
						orgGrade = details[i].grade
						orgLabel = details[i].label
					end
				end)
			end
		end

		if ESX.PlayerData.name ~= nil then
			playerOnline = true
		end
	end
end)

-- ORG MENU START
function OpenOrgMenuOutside()
	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'reseller', {
		title    = _U('org_menu', orgLabel), 
		align    = 'left',
		elements = {
			{label = _U('members'),                value = 'members_menu'},
			{label = _U('ranks_menu'),                value = 'ranks_menu'},
			{label = _U('create_bill'),                    value = 'create_bill'},
			{label = _U('outstanding_bills'), value = 'outstanding_bills'},
			{label = _U('leave_org'), value = 'leave_org'},

		}
	}, function (data, menu)
		local action = data.current.value

		if action == 'members_menu' then
			OpenManageMembersMenu(orgName)
		elseif action == 'ranks_menu' then 
			if alloweditranks == 1 or orgGrade == 5 then
				OpenManageRanksMenu(orgName)
			else
				ESX.ShowNotification('~r~Not allowed')
			end
		elseif action == 'leave_org' then 
			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'recruit_confirm_', {
				title    = _U('confirm_leave_org', orgLabel),
				align    = 'center',
				elements = {
					{label = _U('no'), value = 'no'},
					{label = _U('yes'), value = 'yes'}
			}}, function(data3, menu3)


				if data3.current.value == 'yes' then
					if orgGrade < 5 then
						menu3.close()
						TriggerServerEvent('cb_orgs:leaveOrg')
						ESX.ShowNotification(_U('you_have_left', orgLabel))
						ESX.UI.Menu.CloseAll()
					else
						ESX.ShowNotification('~r~Demote yourself and make someone else boss first')
					end
				elseif data3.current.value == 'no' then
					menu3.close()
				end
			end, function(data3, menu3)

			end)
		elseif action == 'create_bill' then
			local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
			if closestPlayer == -1 or closestDistance > 3.0 then
				ESX.ShowNotification(_U('no_players'))
				return
			end

			ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'set_vehicle_owner_sell_amount', {
				title = _U('invoice_amount')
			}, function (data2, menu2)
				local amount = tonumber(data2.value)

				if amount == nil then
					ESX.ShowNotification(_U('invalid_amount'))
				else
					menu2.close()
					local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

					if closestPlayer == -1 or closestDistance > 3.0 then
						ESX.ShowNotification(_U('no_players'))
					else
						ESX.TriggerServerCallback('cb_orgs:getOtherPlayerData', function(data)
							TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(closestPlayer), 'org_'..orgName..'', orgLabel, tonumber(data2.value))
							ESX.ShowNotification('You have sent an invoice for ~g~$'..data2.value..' ~s~to ~y~'..data.name..'')
						end, GetPlayerServerId(closestPlayer))
					end
				end
			end, function (data2, menu2)
				menu2.close()
			end)
			--  OUTSTANDING BILLS  
		elseif data.current.value == 'outstanding_bills' then
			TriggerServerEvent('cb_orgs:logInInstance')
			ESX.TriggerServerCallback('cb_orgs:getOutstandingBills', function(result)
					local cancelled
					local elements = {
						head = { _U('customer_client'), _U('customer_due'), _U('created_on'), _U('cancelled'), _U('bill_actions') },-- _U('employee_id'),
						rows = {}
					}
						for i=1, #result, 1 do
							if result[i].cancelled == 1 then
								cancelled = _U('cancelled_yes')
							else 
								cancelled = ''
							end

							table.insert(elements.rows, {
								data = result[i],
								cols = {
									''..result[i].firstname..' '..result[i].lastname..'',
									result[i].amount,
									result[i].createdDate,
									cancelled,
									'{{' .. _U('remove_bill') .. '|remove_bill}}'
								}
							})
						end

					ESX.UI.Menu.Open('list', GetCurrentResourceName(), 'outstanding_bills', elements, function(data2, menu2)
						local bill = data2.data
						if data2.value == 'remove_bill' then
							if allowmoney == 1 or orgGrade == 5 then
								TriggerServerEvent('cb_orgs:removeBill', bill.id)
								menu2.close()
							else
								ESX.ShowNotification('~r~Not allowed')
							end
						end

					end, function(data2, menu2)
						menu2.close()
					end)
			end, orgName)
		end
	end, function (data, menu)
		menu.close()
	end)
end

function OpenManageMembersMenu(organisation)

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'manage_employees_' .. organisation, {
		title    = _U('employee_management'),
		align    = 'left',
		elements = {
			{label = _U('employee_list'), value = 'employee_list'},
			{label = _U('recruit'), value = 'recruit'}
	}}, function(data, menu)
		if data.current.value == 'employee_list' then
			OpenEmployeeList(organisation)
		elseif data.current.value == 'recruit' then 
			if allowrecruit == 1 or orgGrade == 5 then
				OpenRecruitMenu(organisation)
			else
				ESX.ShowNotification('~r~Not allowed')
			end
		end
	end, function(data, menu)
		menu.close()
	end)
end

function OpenEmployeeList(organisation)
	ESX.TriggerServerCallback('cb_orgs:getEmployees', function(employees)

		local elements = {
			head = {_U('employee'), _U('grade'), _U('phone'), _U('actions')},
			rows = {}
		}

		for i=1, #employees, 1 do
			local gradeLabel = (employees[i].org.grade_label == '' and employees[i].org.label or employees[i].org.grade_label)
			
			table.insert(elements.rows, {
				data = employees[i],
				cols = {
					employees[i].name,
					gradeLabel,
					employees[i].phone,
					'{{' .. _U('set_rank') .. '|set_rank}} {{' .. _U('fire') .. '|fire}}'
				}
			})
		end

		ESX.UI.Menu.Open('list', GetCurrentResourceName(), 'employee_list_' .. organisation, elements, function(data, menu)
			local employee = data.data

			if data.value == 'set_rank' then
				if alloweditranks == 1 or orgGrade == 5 then
					menu.close()
					OpenPromoteMenu(organisation, employee)
				else
					ESX.ShowNotification('~r~Not allowed')
				end
			elseif data.value == 'fire' then
				menu.close()
				ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'recruit_confirm_' .. organisation, {
					title    = _U('are_you_sure', employee.name, orgLabel),
					align    = 'center',
					elements = {
						{label = _U('no'), value = 'no'},
						{label = _U('yes'), value = 'yes'}
				}}, function(data3, menu3)
	
					if data3.current.value == 'yes' then
						ESX.TriggerServerCallback('cb_orgs:setOrg', function()
							OpenEmployeeList(organisation)
						end, employee.identifier, organisation, 0, '', 'fire')
		
						ESX.ShowNotification(_U('you_have_removed', employee.name, orgLabel))
						menu3.close()
					elseif data3.current.value == 'no' then
						menu3.close()
					end
				end)
			end
		end, function(data, menu)
			menu.close()
			OpenManageMembersMenu(organisation)
		end)
	end, organisation)
end

-- Warehouse menu
function OpenWarehouseMenu(value, size)
	local player = GetPlayerPed(-1)
	local orgWarehouse
	local sellprice
	local buyprice
	local takenNumber
	local coords
	local heading

	currentWarehouse = value

	if size == "(small)" then
		sellprice = 450000
		buyprice = 500000
		coords = vector3(1087.3731689453,-3099.4162597656,-39.499961853027)
		heading = 90.0
	elseif
		size == "(large)" then
		sellprice = 810000
		buyprice = 900000
		coords = vector3(1073.0769042969,-3102.6027832031,-39.399931335449)
		heading = 86.65
	end

	ESX.TriggerServerCallback('cb_orgs:checkWarehouse', function(property)
		ESX.TriggerServerCallback('cb_orgs:takenWarehouses', function(warehouseNumber)
			for i=1, #warehouseNumber, 1 do
				takenNumber = string.match(value, warehouseNumber[i].value)
			end
			for i=1, #property, 1 do
				orgWarehouse = property[i].warehouse
			end

			if orgWarehouse == value then
				ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'warehouse_menu', {
					title    = _U('warehouse_menu', value, size),
					align    = 'left',
					elements = {
						{label = _U('enter_warehouse'), value = 'enter_warehouse'},
						{label = _U('sell_warehouse'), value = 'sell_warehouse'}
				}}, function(data, menu)
					if data.current.value == 'enter_warehouse' then
						ESX.TriggerServerCallback('cb_orgs:getInstance', function(orgInstance)
							for i=1, #orgInstance, 1 do
								local state = orgInstance[i].instance
								local id = GetPlayerServerId(PlayerId())							
								TriggerServerEvent("play_instance:instance", id, state)
								menu.close()
								DoScreenFadeOut(800)

								while not IsScreenFadedOut() do
									Citizen.Wait(500)
								end
								SetEntityCoords(player, coords)
								SetEntityHeading(player, heading)
								DoScreenFadeIn(800)
							end
						end, orgName)
					elseif data.current.value == 'sell_warehouse' then 
						if orgGrade == 5 then
							menu.close()
							ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'sell_confirm_', {
								title    = _U('are_you_sure_warehouse_sell', sellprice),
								align    = 'center',
								elements = {
									{label = _U('no'), value = 'no'},
									{label = _U('yes'), value = 'yes'}
							}}, function(data3, menu3)
								menu3.close()
				
								if data3.current.value == 'yes' then
									TriggerServerEvent('cb_orgs:sellWarehouse', value, size, orgName)
									menu3.close()
								elseif data3.current.value == 'no' then
									menu3.close()
								end
							end)
						else
							ESX.ShowNotification('~r~Not allowed')
						end
					end
				end, function(data, menu)
					menu.close()
				end)				
			elseif orgWarehouse == 0 then
				if not takenNumber then
					ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'warehouse_menu', {
						title    = _U('warehouse_menu', value, size),
						align    = 'left',
						elements = {
							{label = _U('buy_warehouse', value, size), value = 'buy_warehouse'}
					}}, function(data, menu)
						if data.current.value == 'buy_warehouse' then
							if orgGrade == 5 then
								menu.close()
								ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'buy_confirm_', {
									title    = _U('warehouse_menu_buy', value, buyprice),
									align    = 'center',
									elements = {
										{label = _U('no'), value = 'no'},
										{label = _U('yes'), value = 'yes'}
								}}, function(data3, menu3)
					
									if data3.current.value == 'yes' then
										TriggerServerEvent('cb_orgs:buyWarehouse', value, size, orgName)
										menu3.close()
									elseif data3.current.value == 'no' then
										menu3.close()
									end
								end)
							else
								ESX.ShowNotification('~r~Not allowed')
							end
						end
					end, function(data, menu)
						menu.close()
					end)
				else
					ESX.ShowNotification('~r~This is already owned by someone else')
				end
			elseif orgWarehouse ~= value then
				if orgName ~= '' then
					ESX.ShowNotification('~r~This is not your warehouse')
				elseif playerJob == 'police' then
					ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'warehouse_menu', {
						title    = _U('warehouse_menu', value, size),
						align    = 'left',
						elements = {
							{label = _U('enter_warehouse'), value = 'enter_warehouse'}
					}}, function(data, menu)
						if data.current.value == 'enter_warehouse' then
							ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'get_org_name',
							{
							title = 'Name of Organisation'
							},
								function(data2, menu2)
									menu2.close()
					
									local name = tostring(data2.value)
								ESX.TriggerServerCallback('cb_orgs:getInstance', function(orgInstance)
									for i=1, #orgInstance, 1 do
										local state = orgInstance[i].instance
										local id = GetPlayerServerId(PlayerId())							
										TriggerServerEvent("play_instance:instance", id, state)
										menu.close()
										DoScreenFadeOut(800)
		
										while not IsScreenFadedOut() do
											Citizen.Wait(500)
										end
										SetEntityCoords(player, coords)
										SetEntityHeading(player, heading)
										DoScreenFadeIn(800)
									end
								end, name)
							end)
						end
					end, function(data, menu)
						menu.close()
					end)
				else
					ESX.ShowNotification('~r~You have to be in a organisation to buy this')
				end
			end
		end)
	end, orgName)
end

-- Garage menu
function OpenGarageMenu(value, size)
	local player = GetPlayerPed(-1)
	local orgGarage
	local sellprice
	local buyprice
	local takenNumber
	local coords
	local heading

	currentGarage = value

	if size == "(small)" then
		sellprice = 180000
		buyprice = 200000
		coords = vector3(173.53507995605,-1006.4486694336,-99.635887145996)
		heading = 281.56
	elseif size == "(medium)" then
		sellprice = 360000
		buyprice = 400000
		coords = vector3(202.08807373047,-1004.3768920898,-99.636070251465)
		heading = 358.67
	elseif size == "(large)" then
		sellprice = 1125000
		buyprice = 1250000
		coords = vector3(231.79791259766,-1004.1389770508,-99.547790527344)
		heading = 0.02
	end

	ESX.TriggerServerCallback('cb_orgs:checkGarage', function(property)
		ESX.TriggerServerCallback('cb_orgs:takenGarages', function(garageNumber)
			for i=1, #garageNumber, 1 do
				takenNumber = string.match(value, garageNumber[i].value)
			end
			for i=1, #property, 1 do
				orgGarage = property[i].garage
			end

			if orgGarage == value then
				ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'garage_menu', {
					title    = _U('garage_menu', value, size),
					align    = 'left',
					elements = {
						{label = _U('enter_garage'), value = 'enter_garage'},
						{label = _U('sell_garage'), value = 'sell_garage'}
				}}, function(data, menu)
					if data.current.value == 'enter_garage' then
						menu.close()
						TriggerEvent('cb_orgs:garageTeleport', coords, heading, 1)
					elseif data.current.value == 'sell_garage' then 
						if orgGrade == 5 then
							menu.close()
							ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'sell_confirm_', {
								title    = _U('are_you_sure_garage_sell', sellprice),
								align    = 'center',
								elements = {
									{label = _U('no'), value = 'no'},
									{label = _U('yes'), value = 'yes'}
							}}, function(data3, menu3)
								menu3.close()
				
								if data3.current.value == 'yes' then
									TriggerServerEvent('cb_orgs:sellGarage', value, size, orgName)
									menu3.close()
								elseif data3.current.value == 'no' then
									menu3.close()
								end
							end)
						else
							ESX.ShowNotification('~r~Not allowed')
						end
					end
				end, function(data, menu)
					menu.close()
				end)				
			elseif orgGarage == 0 then
				if not takenNumber then
					ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'garage_menu', {
						title    = _U('garage_menu', value, size),
						align    = 'left',
						elements = {
							{label = _U('buy_garage', value, size), value = 'buy_garage'}
					}}, function(data, menu)
						if data.current.value == 'buy_garage' then
							if orgGrade == 5 then
								menu.close()
								ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'buy_confirm_', {
									title    = _U('garage_menu_buy', value, buyprice),
									align    = 'center',
									elements = {
										{label = _U('no'), value = 'no'},
										{label = _U('yes'), value = 'yes'}
								}}, function(data3, menu3)
					
									if data3.current.value == 'yes' then
										TriggerServerEvent('cb_orgs:buyGarage', value, size, orgName)
										menu3.close()
									elseif data3.current.value == 'no' then
										menu3.close()
									end
								end)
							else
								ESX.ShowNotification('~r~Not allowed')
							end
						end
					end, function(data, menu)
						menu.close()
					end)
				else
					ESX.ShowNotification('~r~This is already owned by someone else')
				end
			elseif orgGarage ~= value then
				if playerJob == 'police' then
					ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'garage_menu', {
						title    = _U('garage_menu', value, size),
						align    = 'left',
						elements = {
							{label = _U('enter_garage'), value = 'enter_garage'}
					}}, function(data, menu)
						if data.current.value == 'enter_garage' then
							ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'get_org_name',
							{
							title = 'Name of Organisation'
							},
								function(data2, menu2)
									menu2.close()
					
									local name = tostring(data2.value)
								ESX.TriggerServerCallback('cb_orgs:getInstance', function(orgInstance)
									for i=1, #orgInstance, 1 do
										menu.close()
										TriggerEvent('cb_orgs:garageTeleport', coords, heading, 1, name)
									end
								end, name)
							end)
						end
					end)
				elseif orgName ~= '' then
					ESX.ShowNotification('~r~This is not your garage')
				else
					ESX.ShowNotification('~r~You have to be in a organisation to buy this')
				end
			end
		end)
	end, orgName)
end

-- HQ menu
function OpenHQMenu(name, value, price, coords, carAccess, headingInside)
	local player = GetPlayerPed(-1)
	local orgHQ
	local sellprice = price*0.9
	local takenNumber
	local heading


	ESX.TriggerServerCallback('cb_orgs:checkHQ', function(property)
		ESX.TriggerServerCallback('cb_orgs:takenHQ', function(hqNumber)
			for i=1, #hqNumber, 1 do

				if value == hqNumber[i].value then
					takenNumber = 1
				end
			end
			for i=1, #property, 1 do
				orgHQ = property[i].hq
			end

			if orgHQ == value then
				ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'HQ_menu', {
					title    = _U('HQ_menu', name),
					align    = 'left',
					elements = {
						{label = _U('enter_HQ'), value = 'enter_HQ'},
						{label = _U('invite_HQ'), value = 'invite_HQ'},
						{label = _U('sell_HQ'), value = 'sell_HQ'}
				}}, function(data, menu)
					if data.current.value == 'enter_HQ' then
						menu.close()
						if carAccess == 1 then 
							if IsPedInAnyVehicle(player, true) then
								DoScreenFadeOut(800)
		
								while not IsScreenFadedOut() do
									Citizen.Wait(500)
								end
								SetEntityCoords(GetVehiclePedIsUsing(player), coords)
								SetEntityHeading(GetVehiclePedIsUsing(player), headingInside)
								DoScreenFadeIn(800)
							else
								DoScreenFadeOut(800)
		
								while not IsScreenFadedOut() do
									Citizen.Wait(500)
								end
								SetEntityCoords(player, coords)
								SetEntityHeading(player, headingInside)
								DoScreenFadeIn(800)
							end
						else
							DoScreenFadeOut(800)
		
							while not IsScreenFadedOut() do
								Citizen.Wait(500)
							end
							SetEntityCoords(player, coords)
							SetEntityHeading(player, headingInside)
							DoScreenFadeIn(800)
						end
					elseif data.current.value == 'sell_HQ' then 
						if orgGrade == 5 then
							menu.close()
							ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'sell_confirm_', {
								title    = _U('are_you_sure_hq_sell', sellprice),
								align    = 'center',
								elements = {
									{label = _U('no'), value = 'no'},
									{label = _U('yes'), value = 'yes'}
							}}, function(data3, menu3)
								menu3.close()
				
								if data3.current.value == 'yes' then
									TriggerServerEvent('cb_orgs:sellHQ', value, sellprice, orgName)
									menu3.close()
								elseif data3.current.value == 'no' then
									menu3.close()
								end
							end)
						else
							ESX.ShowNotification('~r~Not allowed')
						end
					elseif data.current.value == 'invite_HQ' then
						local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
						local playerId = GetPlayerServerId(closestPlayer)
						TriggerServerEvent('cb_orgs:inviteTarget', playerId, value)
					end
				end, function(data, menu)
					menu.close()
				end)				
			elseif orgHQ == 0 then
				if not takenNumber then
					ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'HQ_menu', {
						title    = _U('HQ_menu', name),
						align    = 'left',
						elements = {
							{label = _U('buy_HQ', name), value = 'buy_HQ'},
							{label = _U('view_hq', name), value = 'view_HQ'}
					}}, function(data, menu)
						if data.current.value == 'buy_HQ' then
							if orgGrade == 5 then
								menu.close()
								ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'buy_confirm_', {
									title    = _U('HQ_menu_buy', name, price),
									align    = 'center',
									elements = {
										{label = _U('no'), value = 'no'},
										{label = _U('yes'), value = 'yes'}
								}}, function(data3, menu3)
					
									if data3.current.value == 'yes' then
										TriggerServerEvent('cb_orgs:buyHQ', value, price, orgName)
										menu3.close()
									elseif data3.current.value == 'no' then
										menu3.close()
									end
								end)
							else
								ESX.ShowNotification('~r~Not allowed')
							end
						elseif data.current.value == 'view_HQ' then
							menu.close()
							if carAccess == 1 then 
								if IsPedInAnyVehicle(player, true) then
									ESX.ShowNotification('~r~No vehicle access until owned')
								else
									DoScreenFadeOut(800)
			
									while not IsScreenFadedOut() do
										Citizen.Wait(500)
									end
									SetEntityCoords(player, coords)
									SetEntityHeading(player, headingInside)
									DoScreenFadeIn(800)
								end
							else
								DoScreenFadeOut(800)
			
								while not IsScreenFadedOut() do
									Citizen.Wait(500)
								end
								SetEntityCoords(player, coords)
								SetEntityHeading(player, headingInside)
								DoScreenFadeIn(800)
							end
						end
					end, function(data, menu)
						menu.close()
					end)
				else
					ESX.ShowNotification('~r~This is already owned by someone else')
				end
			elseif orgHQ ~= value then
				if playerJob == "police" then
					ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'HQ_menu', {
						title    = _U('HQ_menu', name),
						align    = 'left',
						elements = {
							{label = _U('enter_HQ'), value = 'enter_HQ'}
					}}, function(data, menu)
						if data.current.value == 'enter_HQ' then
							menu.close()
							if carAccess == 1 then 
								if IsPedInAnyVehicle(player, true) then
									DoScreenFadeOut(800)
			
									while not IsScreenFadedOut() do
										Citizen.Wait(500)
									end
									SetEntityCoords(GetVehiclePedIsUsing(player), coords)
									SetEntityHeading(GetVehiclePedIsUsing(player), headingInside)
									DoScreenFadeIn(800)
								else
									DoScreenFadeOut(800)
			
									while not IsScreenFadedOut() do
										Citizen.Wait(500)
									end
									SetEntityCoords(player, coords)
									SetEntityHeading(player, headingInside)
									DoScreenFadeIn(800)
								end
							else
								DoScreenFadeOut(800)
			
								while not IsScreenFadedOut() do
									Citizen.Wait(500)
								end
								SetEntityCoords(player, coords)
								SetEntityHeading(player, headingInside)
								DoScreenFadeIn(800)
							end
						end
					end, function(data, menu)
						menu.close()
					end)
				elseif HQInvite ~= value then
					if orgName ~= '' then
						ESX.ShowNotification('~r~This is not your HQ')
					else
						ESX.ShowNotification('~r~You have to be in a organisation to buy this')
					end
				else
					ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'HQ_menu', {
						title    = _U('HQ_menu', name),
						align    = 'left',
						elements = {
							{label = _U('enter_HQ'), value = 'enter_HQ'}
					}}, function(data, menu)
						if data.current.value == 'enter_HQ' then
							menu.close()
							if carAccess == 1 then 
								if IsPedInAnyVehicle(player, true) then
									DoScreenFadeOut(800)
			
									while not IsScreenFadedOut() do
										Citizen.Wait(500)
									end
									SetEntityCoords(GetVehiclePedIsUsing(player), coords)
									SetEntityHeading(GetVehiclePedIsUsing(player), headingInside)
									DoScreenFadeIn(800)
								else
									DoScreenFadeOut(800)
			
									while not IsScreenFadedOut() do
										Citizen.Wait(500)
									end
									SetEntityCoords(player, coords)
									SetEntityHeading(player, headingInside)
									DoScreenFadeIn(800)
								end
							else
								DoScreenFadeOut(800)
			
								while not IsScreenFadedOut() do
									Citizen.Wait(500)
								end
								SetEntityCoords(player, coords)
								SetEntityHeading(player, headingInside)
								DoScreenFadeIn(800)
							end
						end
					end, function(data, menu)
						menu.close()
					end)
				end
			end
		end)
	end, orgName)
end


local targetName = nil

RegisterNetEvent('cb_orgs:setName')
AddEventHandler('cb_orgs:setName', function(name)
	targetName = name
end)

function OpenRecruitMenu(organisation)
	local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
	local playerId = GetPlayerServerId(closestPlayer)
	local identifier = playerId

	if closestPlayer == -1 or closestDistance > 3.0 then
		ESX.ShowNotification(_U('no_players'))
		return
	else
		TriggerServerEvent('cb_orgs:GetTargetName', playerId)
		Citizen.Wait(1000)

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'recruit_confirm_' .. organisation, {
			title    = _U('do_you_want_to_recruit', targetName),
			align    = 'left',
			elements = {
				{label = _U('no'), value = 'no'},
				{label = _U('yes'), value = 'yes'}
		}}, function(data, menu)

			if data.current.value == 'yes' then
				local label = orgLabel

				ESX.TriggerServerCallback('cb_orgs:setOrg', function()
					menu.close()
					OpenManageMembersMenu(organisation)
				end, identifier, organisation, 1, label, 'hire')
			else
				menu.close()
				OpenManageMembersMenu(organisation)
			end
		end, function(data, menu)
			menu.close()
		end)
	end
end

function OpenPromoteMenu(organisation, employee)
	ESX.TriggerServerCallback('cb_orgs:getOrg', function(org)
		local elements = {}

		for i=1, #org.grades, 1 do
			local gradeLabel = (org.grades[i].label == '' and org.label or org.grades[i].label)

			table.insert(elements, {
				label = gradeLabel,
				value = org.grades[i].grade,
				selected = (employee.org.grade == org.grades[i].grade)
			})
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'promote_employee_' .. organisation, {
			title    = _U('promote_employee', employee.name),
			align    = 'left',
			elements = elements
		}, function(data, menu)
			menu.close()

			ESX.TriggerServerCallback('cb_orgs:setOrg', function()
				OpenEmployeeList(organisation)
			end, employee.identifier, organisation, data.current.value, data.current.label, 'promote')

			ESX.ShowNotification(_U('you_have_promoted', employee.name, data.current.label))
		end, function(data, menu)
			menu.close()
			OpenEmployeeList(organisation)
		end)
	end, organisation)
end



-- Working
function OpenManageRanksMenu(organisation)
	ESX.TriggerServerCallback('cb_orgs:getOrg', function(org)
		local elements = {}

		for i=1, #org.grades, 1 do
			gradeLabel = (org.grades[i].label == '' and org.label or org.grades[i].label)
			local gradeLabel = (org.grades[i].label == '' and org.label or org.grades[i].label)

			table.insert(elements, {
				label = ('<span style="color:orange;">%s</span>'):format(gradeLabel),
				value = org.grades[i].grade,
				selectedGradeLabel = org.grades[i].label
			})
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'manage_grades_' .. organisation, {
			title    = _U('rank_management'),
			align    = 'left',
			elements = elements
		}, function(data, menu)
			menu.close()
			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'manage_grades_' .. organisation, {
				title    = _U('rank_management_specific', data.current.selectedGradeLabel),
				align    = 'left',
				elements = {
					{label = _U('edit_rank_name'), value = 'edit_rank_name'},
					{label = _U('set_recruit'), value = 'set_recruit'},
					{label = _U('set_withdraw_stash'), value = 'set_withdraw_stash'},
					{label = _U('set_withdraw_cash'), value = 'set_withdraw_cash'},
					{label = _U('set_editranks'), value = 'set_editranks'},
			}}, function(data2, menu2)
				if data2.current.value == 'edit_rank_name' then
					ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'manage_grades_amount_' .. organisation, {
						title = _U('new_name')
					}, function(data3, menu3)
						local rankName = tostring(data3.value)
						local count = string.len(rankName)

						if rankName == nil then
							ESX.ShowNotification(_U('invalid_amount'))
						elseif count > 10 then
							ESX.ShowNotification(_U('invalid_amount_max'))
						else
							menu3.close()

							ESX.TriggerServerCallback('cb_orgs:setOrgRankName', function()
								OpenManageRanksMenu(organisation)
							end, organisation, data.current.value, rankName)
						end
					end, function(data3, menu3)
						menu3.close()
					end)

				elseif data2.current.value == 'set_withdraw_stash' then
					ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'recruit_confirm_' .. organisation, {
						title    = _U('allow_stash'),
						align    = 'center',
						elements = {
							{label = _U('no'), value = 'no'},
							{label = _U('yes'), value = 'yes'}
					}}, function(data3, menu3)
						if data3.current.value == 'yes' then
							--print(data.current.selectedGradeLabel)
							ESX.TriggerServerCallback('cb_orgs:setStashAccess', function()
								OpenManageRanksMenu(organisation)
							end, organisation, data.current.value, 1)
							ESX.ShowNotification('~g~You have granted ~b~'..data.current.selectedGradeLabel..'~g~ access to the stash')
							menu3.close()
						elseif data3.current.value == 'no' then
							ESX.TriggerServerCallback('cb_orgs:setStashAccess', function()
								OpenManageRanksMenu(organisation)
							end, organisation, data.current.value, 0)
							ESX.ShowNotification('~r~You have revoked ~y~'..data.current.selectedGradeLabel..'~r~ access to the stash')
							menu3.close()
						end
					end, 
					function(data3, menu3)end)

				elseif data2.current.value == 'set_withdraw_cash' then
					ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'recruit_confirm_' .. organisation, {
						title    = _U('allow_cash'),
						align    = 'center',
						elements = {
							{label = _U('no'), value = 'no'},
							{label = _U('yes'), value = 'yes'}
					}}, function(data3, menu3)

		
						if data3.current.value == 'yes' then
							menu3.close()
							ESX.TriggerServerCallback('cb_orgs:setAccountAccess', function()
								OpenManageRanksMenu(organisation)
							end, organisation, data.current.value, 1)
							ESX.ShowNotification('~g~You have granted ~b~'..data.current.selectedGradeLabel..'~g~ access to the account')
						elseif data3.current.value == 'no' then
							menu3.close()
							ESX.TriggerServerCallback('cb_orgs:setAccountAccess', function() 
								OpenManageRanksMenu(organisation)
							end, organisation, data.current.value, 0)
							ESX.ShowNotification('~r~You have revoked ~y~'..data.current.selectedGradeLabel..'~r~ access to the company account')
						end
					end, function(data3, menu3)
					end)
				elseif data2.current.value == 'set_recruit' then
					ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'recruit_confirm_' .. organisation, {
						title    = _U('allow_recruit'),
						align    = 'center',
						elements = {
							{label = _U('no'), value = 'no'},
							{label = _U('yes'), value = 'yes'}
					}}, function(data3, menu3)
		
						if data3.current.value == 'yes' then
							menu3.close()
							ESX.TriggerServerCallback('cb_orgs:setRecruitAccess', function()
								OpenManageRanksMenu(organisation)
							end, organisation, data.current.value, 1)
							ESX.ShowNotification('~g~You have granted ~b~'..data.current.selectedGradeLabel..'~g~ access to recruit members')
						elseif data3.current.value == 'no' then
							menu3.close()
							ESX.TriggerServerCallback('cb_orgs:setRecruitAccess', function()
								OpenManageRanksMenu(organisation)
							end, organisation, data.current.value, 0)
							ESX.ShowNotification('~r~You have revoked ~y~'..data.current.selectedGradeLabel..'~r~ access to recruit members')
						end
					end, function(data3, menu3)
					end)
				elseif data2.current.value == 'set_editranks' then
					ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'recruit_confirm_' .. organisation, {
						title    = _U('allow_editranks'),
						align    = 'center',
						elements = {
							{label = _U('no'), value = 'no'},
							{label = _U('yes'), value = 'yes'}
					}}, function(data3, menu3)
		
						if data3.current.value == 'yes' then
							menu3.close()
							ESX.TriggerServerCallback('cb_orgs:setRankAccess', function()
								OpenManageRanksMenu(organisation)
							end, organisation, data.current.value, 1)
							ESX.ShowNotification('~g~You have granted ~b~'..data.current.selectedGradeLabel..'~g~ access to edit ranks')
						elseif data3.current.value == 'no' then
							menu3.close()
							ESX.TriggerServerCallback('cb_orgs:setRankAccess', function()
								OpenManageRanksMenu(organisation)
							end, organisation, data.current.value, 0)
							ESX.ShowNotification('~r~You have revoked ~y~'..data.current.selectedGradeLabel..'~r~ access to edit ranks')
						end
					end, function(data3, menu3)
					end)
				end
			end, function(data2, menu2)
				menu2.close()
			end)
		end, function(data, menu)
			menu.close()
		end)
	end, organisation)
end

--OPEN STASH MENU SMALL WAREHOUSE
function OpenOrganisationStashMenu()
	currentWeight = 0

	if currentWarehouse >= 50 then
		capacity = Config.WarehouseLimit.large
	else
		capacity = Config.WarehouseLimit.small
	end

	ESX.TriggerServerCallback('cb_orgs:getWarehouseItems', function(orgStash)
		local weightTotal = 0
		for i=1, #orgStash, 1 do
			local item = orgStash[i].item
			local amount = orgStash[i].count
			local itemWeight = getItemyWeight(item)
			local weight = math.floor(itemWeight*amount)

			weightTotal = math.floor(weightTotal + weight)
		end
		currentWeight = math.floor(weightTotal)

		local elements = {
			{label = _U('withdraw_stash'), value = 'withdraw_stash'},
			{label = _U('deposit_stash'), value = 'deposit_stash'}
		}

		ESX.UI.Menu.CloseAll()

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'mechanic_harvest', {
			title    = _U('stash_menu', orgLabel, (currentWeight/1000), (capacity/1000)),
			align    = 'left',
			elements = elements
		}, function(data, menu)
			menu.close()

			if data.current.value == 'withdraw_stash' then
				if allowstash == 1 or orgGrade == 5 then

						OpenGetStocksMenu()
				else
					ESX.ShowNotification('~r~Not allowed')
				end
			elseif data.current.value == 'deposit_stash' then
				OpenPutStocksMenu()
			end
		end, function(data, menu)
			menu.close()
		end)
	end, orgName)
end

--OPEN STASH MENU HQ
function OpenOrganisationStashMenuHQ()
	currentWeight = 0
	capacity = Config.WarehouseLimit.large

	ESX.TriggerServerCallback('cb_orgs:getWarehouseItems', function(orgStash)
		local weightTotal = 0
		for i=1, #orgStash, 1 do
			local item = orgStash[i].item
			local amount = orgStash[i].count
			local itemWeight = getItemyWeight(item)
			local weight = math.floor(itemWeight*amount)

			weightTotal = math.floor(weightTotal + weight)
		end
		currentWeight = math.floor(weightTotal)

		local elements = {
			{label = _U('withdraw_stash'), value = 'withdraw_stash'},
			{label = _U('deposit_stash'), value = 'deposit_stash'}
		}

		ESX.UI.Menu.CloseAll()

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'mechanic_harvest', {
			title    = _U('stash_menu', orgLabel, (currentWeight/1000), (capacity/1000)),
			align    = 'left',
			elements = elements
		}, function(data, menu)
			menu.close()

			if data.current.value == 'withdraw_stash' then
				if allowstash == 1 or orgGrade == 5 then
					OpenGetStocksMenuHQ()
				else
					ESX.ShowNotification('~r~Not allowed')
				end
			elseif data.current.value == 'deposit_stash' then
				OpenPutStocksMenuHQ()
			end
		end, function(data, menu)
			menu.close()
		end)
	end, orgName)
end


local eventAlreadyTriggerd = false
-- ORG CREATION MENU AT CITYHALL --
function OpenRegisterOrgMenu()
    local elements = {}
    
    menuOpen = true

        ESX.UI.Menu.CloseAll()
        ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'org_register', {
            title    = '<span style="color:orange;">Organisation Registration</span>', 
            align    = 'center',
			elements = {
				{label = '<span style="color:white;">Register New Organisation</span> <span style="color:green;">$50000</span>', value = 'create_org'},
				{label = '<span style="color:red;">Disband Organisation</span>', value = 'delete_org'},
			},
        }, function(data, menu)

			if data.current.value == 'create_org' then
				ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'get_org_name',
				{
				title = 'Name of Organisation'
				},
					function(data2, menu2)
		
						local name = tostring(data2.value)
						
						if name == nil then
							ESX.ShowNotification(_U('invalid_quantity'))
						else
							local label = name
							local name = string.lower(name)
							local account = tostring('org_'..name..'')
							local account = string.gsub(account, "%s", "")
							local name = string.gsub(name, "%s", "")
							local count = string.len(name)
							
							ESX.TriggerServerCallback('cb_orgs:getDetails', function(details)
								for i=1, #details, 1 do
									local inOrg = string.len(details[i].name)	
		
									if inOrg <1 then

										ESX.TriggerServerCallback('cb_orgs:checkName', function(orgs)
											for i=1, #orgs, 1 do
												local takenLabel = string.match(label, orgs[i].label)
												local takenName = string.match(name, orgs[i].name)
												if count <20 then
													if not takenName then
														if not takenLabel then
															if not eventAlreadyTriggerd then
																eventAlreadyTriggerd = true
																
																ESX.TriggerServerCallback('cb_orgs:getMoney', function(amount)
																	if amount >= 50000 then
																		
																		ESX.TriggerServerCallback('cb_orgs:getIdentity', function(player)
																			for i=1, #player, 1 do
																				local firstName = player[i].firstname
																				local lastName = player[i].lastname
																				local owner = tostring(''..firstName..' '..lastName..'')
																				TriggerServerEvent('cb_orgs:payForOrg')
																				TriggerServerEvent('cb_orgs:registerNewOrg', name, label, account, owner)
																				ESX.ShowAdvancedNotification('~b~City Hall', '~y~' ..label..'', 'Your organisation named ~y~' ..label.. ' ~s~has been registered sucessfully', 'CHAR_SOCIAL_CLUB', 1)
																				menu2.close()
																				menu.close()
																				eventAlreadyTriggerd = false
																			end
																		end)
																	else
																		ESX.ShowNotification('~r~You do not have sufficient funds in your account')
																	end
																end)
															end
														else
															ESX.ShowNotification('~r~That name is not available')
														end	
													else
														ESX.ShowNotification('~r~That name is not available')
													end	
												else
													ESX.ShowNotification('~r~Too many letters, please try something else')
												end	
											end
										end)
									else
										ESX.ShowNotification('~r~Leave your current organisation first')
									end
								end	
							end)
						end
						menu2.close()
						menu.close()
					end, function(data2, menu2)
						menu2.close()
				end)
			elseif data.current.value == 'delete_org' then
				if orgGrade == 5 then
					ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'delete_confirm_', {
						title    = _U('delete_confirm', orgLabel),
						align    = 'center',
						elements = {
							{label = _U('no'), value = 'no'},
							{label = _U('yes'), value = 'yes'}
					}}, function(data3, menu3)
		
						if data3.current.value == 'yes' then
							menu3.close()
							TriggerServerEvent('cb_orgs:removeOrg', orgName, orgLabel, 'org_'..orgName..'')
							ESX.ShowNotification('~r~You have successfully disbanded ~b~'..orgLabel..'')
							ESX.UI.Menu.CloseAll()
						elseif data3.current.value == 'no' then
							menu3.close()
						end
					end, function(data3, menu3)
					end)
				else
					ESX.ShowNotification('~r~The organisation is not in your name')
				end
			end

        end, function(data, menu)
            menu.close()
            menuOpen = false
        end)
end


--Warehouse storage functions
function OpenGetStocksMenu()
	ESX.TriggerServerCallback('cb_orgs:getDetails', function(details)
		for i=1, #details, 1 do
			orgName = details[i].name
		
			ESX.TriggerServerCallback('cb_orgs:getStockItems', function(items)
				local elements = {}

				for i=1, #items, 1 do
					if items[i].count >=1 then
						table.insert(elements, {
							label = 'x' .. items[i].count .. ' ' .. items[i].label,
							value = items[i].name
						})
					end
				end

				ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'stocks_menu', {
					title    = _U('organisation_stock'),
					align    = 'left',
					elements = elements
				}, function(data, menu)
					local itemName = data.current.value

					ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'stocks_menu_get_item_count', {
						title = _U('quantity')
					}, function(data2, menu2)
						local count = tonumber(data2.value)

						if count == nil then
							ESX.ShowNotification(_U('invalid_quantity'))
						else
							menu2.close()
							menu.close()
							TriggerServerEvent('cb_orgs:getStockItem', itemName, count, orgName)

							Citizen.Wait(500)
							OpenGetStocksMenu()
						end
					end, function(data2, menu2)
						menu2.close()
					end)
				end, function(data, menu)
					menu.close()
					OpenOrganisationStashMenu()
				end)
			end, orgName)
		end
	end)
end

function OpenGetStocksMenuHQ()
	ESX.TriggerServerCallback('cb_orgs:getDetails', function(details)
		for i=1, #details, 1 do
			orgName = details[i].name

			ESX.TriggerServerCallback('cb_orgs:getStockItems', function(items)
				local elements = {}

				for i=1, #items, 1 do
					if items[i].count >=1 then
						table.insert(elements, {
							label = 'x' .. items[i].count .. ' ' .. items[i].label,
							value = items[i].name
						})
					end
				end

				ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'stocks_menu', {
					title    = _U('organisation_stock'),
					align    = 'left',
					elements = elements
				}, function(data, menu)
					local itemName = data.current.value

					ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'stocks_menu_get_item_count', {
						title = _U('quantity')
					}, function(data2, menu2)
						local count = tonumber(data2.value)

						if count == nil then
							ESX.ShowNotification(_U('invalid_quantity'))
						else
							menu2.close()
							menu.close()
							TriggerServerEvent('cb_orgs:getStockItem', itemName, count, orgName)

							Citizen.Wait(500)
							OpenGetStocksMenuHQ()
						end
					end, function(data2, menu2)
						menu2.close()
					end)
				end, function(data, menu)
					menu.close()
					OpenOrganisationStashMenuHQ()
				end)
			end, orgName)
		end
	end)
end

-- Org Stash weight checks
function getItemyWeight(item)
	local weight = 0
	local itemWeight = 0
	if item ~= nil then
		 itemWeight = Config.DefaultWeight
		 if arrayWeight[item] ~= nil then
			  itemWeight = arrayWeight[item]
		 end
	  end
	return itemWeight
end

function OpenPutStocksMenu()

	local elements = {}
	
	local capacity

	if currentWarehouse >= 50 then
		capacity = Config.WarehouseLimit.large
	else
		capacity = Config.WarehouseLimit.small
	end

	currentWeight = 0

	ESX.TriggerServerCallback('cb_orgs:getWarehouseItems', function(orgStash)
		local weightTotal = 0
		for i=1, #orgStash, 1 do
			local item = orgStash[i].item
			local amount = orgStash[i].count
			local itemWeight = getItemyWeight(item)
			local weight = math.floor(itemWeight*amount)

			weightTotal = math.floor(weightTotal + weight)
		end
		currentWeight = math.floor(weightTotal)

		ESX.TriggerServerCallback('cb_orgs:getPlayerInventory', function(inventory)
			local elements = {}

			for i=1, #inventory.items, 1 do
				local item = inventory.items[i]

				if item.count > 0 then
					table.insert(elements, {
						label = item.label .. ' x' .. item.count,
						type  = 'item_standard',
						value = item.name
					})
				end
			end

			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'stocks_menu', {
				title    = _U('inventory'),
				align    = 'left',
				elements = elements
			}, function(data, menu)
				local itemName = data.current.value

				ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'stocks_menu_put_item_count', {
					title = _U('quantity')
				}, function(data2, menu2)
					local count = tonumber(data2.value)

					if count == nil then
						ESX.ShowNotification(_U('invalid_quantity'))
					else
						local selectedItemWeight = getItemyWeight(itemName)
						local selectedTotalWeight = math.floor(selectedItemWeight * count)
						local newWeight = math.floor(currentWeight + selectedTotalWeight)

						if newWeight > capacity then
							ESX.ShowNotification('~r~Warehouse is full')
						else
							menu2.close()
							menu.close()
							TriggerServerEvent('cb_orgs:putStockItems', itemName, count, orgName)
						end
						Citizen.Wait(500)
						OpenPutStocksMenu()
					end
				end, function(data2, menu2)
					menu2.close()
				end)
			end, function(data, menu)
				menu.close()
				OpenOrganisationStashMenu()
			end)
		end)
	end, orgName)
end


function OpenPutStocksMenuHQ()

	local elements = {}

	capacity = Config.WarehouseLimit.large

	currentWeight = 0

	ESX.TriggerServerCallback('cb_orgs:getWarehouseItems', function(orgStash)
		local weightTotal = 0
		for i=1, #orgStash, 1 do
			local item = orgStash[i].item
			local amount = orgStash[i].count
			local itemWeight = getItemyWeight(item)
			local weight = math.floor(itemWeight*amount)

			weightTotal = math.floor(weightTotal + weight)
		end
		currentWeight = math.floor(weightTotal)

		ESX.TriggerServerCallback('cb_orgs:getPlayerInventory', function(inventory)
			local elements = {}

			for i=1, #inventory.items, 1 do
				local item = inventory.items[i]

				if item.count > 0 then
					table.insert(elements, {
						label = item.label .. ' x' .. item.count,
						type  = 'item_standard',
						value = item.name
					})
				end
			end

			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'stocks_menu', {
				title    = _U('inventory'),
				align    = 'left',
				elements = elements
			}, function(data, menu)
				local itemName = data.current.value

				ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'stocks_menu_put_item_count', {
					title = _U('quantity')
				}, function(data2, menu2)
					local count = tonumber(data2.value)

					if count == nil then
						ESX.ShowNotification(_U('invalid_quantity'))
					else
						local selectedItemWeight = getItemyWeight(itemName)
						local selectedTotalWeight = math.floor(selectedItemWeight * count)
						local newWeight = math.floor(currentWeight + selectedTotalWeight)

						if newWeight > capacity then
							ESX.ShowNotification('~r~Warehouse is full')
						else
							menu2.close()
							menu.close()
							TriggerServerEvent('cb_orgs:putStockItems', itemName, count, orgName)
						end
						Citizen.Wait(500)
						OpenPutStocksMenuHQ()
					end
				end, function(data2, menu2)
					menu2.close()
				end)
			end, function(data, menu)
				menu.close()
				OpenOrganisationStashMenuHQ()
			end)
		end)
	end, orgName)
end
--End of warehouse storage functions

--Item weight
function getItemWeight(item)
	local weight = 0
	local itemWeight = 0
	  if item ~= nil then
		itemWeight = Config.DefaultWeight
		if arrayWeight[item] ~= nil then
		  itemWeight = arrayWeight[item]
		end
	  end
	return itemWeight
end


-- Open org account menu in banks
function OpenAccountMenu()

	ESX.TriggerServerCallback('cb_orgs:getAccountMoney', function(account)

		local elements = {
			{label = _U('withdraw_cash'), value = 'withdraw_cash'},
			{label = _U('deposit_cash'), value = 'deposit_cash'}
		}

		ESX.UI.Menu.CloseAll()

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'bank_account_window', {
			title    = _U('bank_account_window', orgLabel, account),
			align    = 'left',
			elements = elements
		}, function(data, menu)
			menu.close()

			if data.current.value == 'withdraw_cash' then
				if allowmoney == 1 or orgGrade == 5 then
					ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'withdraw_money_amount_' .. orgLabel, {
						title = _U('withdraw_amount')
					}, function(data2, menu2)
						local amount = tonumber(data2.value)

						if amount == nil then
							ESX.ShowNotification(_U('invalid_money'))
							OpenAccountMenu()
						else
							menu2.close()
							TriggerServerEvent('cb_orgs:withdrawMoney', 'org_'..orgName..'', amount)
							Citizen.Wait(500)
							OpenAccountMenu()
						end
					end, function(data2, menu2)
						menu2.close()
					end)
				else
					ESX.ShowNotification('~r~Not allowed')
				end
			elseif data.current.value == 'deposit_cash' then
				ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'deposit_money_amount_' .. orgLabel, {
					title = _U('deposit_amount')
				}, function(data2, menu2)
					local amount = tonumber(data2.value)

					if amount == nil then
						ESX.ShowNotification(_U('invalid_money'))
						OpenAccountMenu()
					else
						menu2.close()
						TriggerServerEvent('cb_orgs:depositMoney', 'org_'..orgName..'', amount)
						Citizen.Wait(500)
						OpenAccountMenu()
					end
				end, function(data2, menu2)
					menu2.close()
				end)
			end
		end, function(data, menu)
			menu.close()
		end)
	end)
end


-- Org draw marker in city hall--
Citizen.CreateThread(function ()
    while true do
        Citizen.Wait(5)
        local player = GetPlayerPed(-1)
        local playerLoc = GetEntityCoords(player)

        DrawMarker(1, -552.47,-193.622,38.21, 0, 0, 0, 0, 0, 0, 1.101, 1.1001, 0.5001, 122, 0, 122, 0, 0, 0, 0, 0) --  Green, Blue, 200, 0, 0, 0, 0)

        if CheckPos(playerLoc.x, playerLoc.y, playerLoc.z, -552.47,-193.622,38.21, 1.5) then 
            alert('Press ~INPUT_CONTEXT~ to manage ~y~Organisation~s~')
        end

        if IsControlJustReleased(1, 38) then
            if(GetDistanceBetweenCoords(playerLoc.x, playerLoc.y, playerLoc.z, -552.47,-193.622,38.21, true) <= 1.5) then
				OpenRegisterOrgMenu()
            end
        end
    end                   
end)

function CheckPos(x, y, z, cx, cy, cz, radius)
    local t1 = x - cx
    local t12 = t1^2

    local t2 = y-cy
    local t21 = t2^2

    local t3 = z - cz
    local t31 = t3^2

    return (t12 + t21 + t31) <= radius^2
end

function alert(msg)
    SetTextComponentFormat("STRING")
    AddTextComponentString(msg)
    DisplayHelpTextFromStringLabel(0,0,1,-1)
end

-- Button for opening org menu
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if playerOnline == true then
			if IsControlJustReleased(0, 207) then -- 207 = pg down / 42 = ]
				ESX.TriggerServerCallback('cb_orgs:getDetails', function(details)
					for i=1, #details, 1 do
						local inOrg = string.len(details[i].name)	


						if inOrg ~= 0 then
							local playerPed    = PlayerPedId()			
							OpenOrgMenuOutside()
						else
							ESX.ShowNotification('~r~You are not in a Organisation')
						end
					end
				end)
			end
		end
	end
end)

-- Banks Display markers
Citizen.CreateThread(function ()
    while true do
		if playerOnline == true then
			Citizen.Wait(5)
			local player = GetPlayerPed(-1)
			local playerLoc = GetEntityCoords(player)
			if orgName or playerJob == 'police' then
				for k, v in pairs(Config.Locations.banks.coords) do
					DrawMarker(1, v.x, v.y, v.z, 0, 0, 0, 0, 0, 0, 1.101, 1.1001, 0.5001, 122, 0, 122, 0, 0, 0, 0, 0)

					if CheckPos(playerLoc.x, playerLoc.y, playerLoc.z, v.x, v.y, v.z, 1.1) then 
							alert('Press ~INPUT_CONTEXT~ to access ~y~'..orgLabel..'~s~\'s company account')
					end

					if IsControlJustReleased(1, 38) then
						if(GetDistanceBetweenCoords(playerLoc.x, playerLoc.y, playerLoc.z, v.x, v.y, v.z, true) <= 1.1) then
							if orgName ~= '' then
								OpenAccountMenu()
							else
								ESX.ShowNotification('~r~You are not in a company')
							end
						end
					end
				end

				for k, v in pairs(Config.Locations.stash.coords) do
					DrawMarker(1, v.x, v.y, v.z, 0, 0, 0, 0, 0, 0, 1.101, 1.1001, 0.5001, 122, 0, 122, 0, 0, 0, 0, 0)

					if CheckPos(playerLoc.x, playerLoc.y, playerLoc.z, v.x, v.y, v.z, 2.0) then 
						alert('Press ~INPUT_CONTEXT~ to access ~y~'..orgLabel..'~s~\'s stash')
					end

					if IsControlJustReleased(1, 38) then
						if(GetDistanceBetweenCoords(playerLoc.x, playerLoc.y, playerLoc.z, v.x, v.y, v.z, true) <= 2.0) then
							if orgName ~= '' then
								OpenOrganisationStashMenu()
							else
								ESX.ShowNotification('~r~You are not in a company')
							end
						end
					end
				end

				--Enter warehouses
				for k, v in pairs(Config.Warehouses) do
					if wanted == false then
						DrawMarker(1, v.x, v.y, v.z, 0, 0, 0, 0, 0, 0, 1.101, 1.1001, 0.5001, 122, 0, 122, 0, 0, 0, 0, 0)

						if CheckPos(playerLoc.x, playerLoc.y, playerLoc.z, v.coords.x, v.coords.y, v.coords.z, 1.1) then 
							alert('Press ~INPUT_CONTEXT~ for ~y~Warehouse ~s~menu')
						end

						if IsControlJustReleased(1, 38) then
							if(GetDistanceBetweenCoords(playerLoc.x, playerLoc.y, playerLoc.z, v.coords.x, v.coords.y, v.coords.z, true) <= 1.1) then
								local size = v.size
								local value = v.value
								local heading = v.heading
								OpenWarehouseMenu(value, size)
							end
						end
					end

					--Leave small warehouse
					if CheckPos(playerLoc.x, playerLoc.y, playerLoc.z, 1087.4390869141,-3099.3679199219,-38.999961853027, 1.5) then 
						alert('Press ~INPUT_CONTEXT~ to ~b~Leave')
					end
					if IsControlJustReleased(1, 38) then
						if(GetDistanceBetweenCoords(playerLoc.x, playerLoc.y, playerLoc.z, 1087.4390869141,-3099.3679199219,-38.999961853027, true) <= 1.5) then
							if v.value == currentWarehouse then
								DoScreenFadeOut(800)
								local id = GetPlayerServerId(PlayerId())							
								TriggerServerEvent("play_instance:instance", id, 0)
								while not IsScreenFadedOut() do
									Citizen.Wait(500)
								end
								SetEntityCoords(player, v.coords)
								SetEntityHeading(player, v.headingOutside)
								DoScreenFadeIn(800)
							end
						end
					end

					--Leave large warehouse
					if CheckPos(playerLoc.x, playerLoc.y, playerLoc.z, 1072.9969482422,-3102.6926269531,-38.999927520752, 1.5) then 
						alert('Press ~INPUT_CONTEXT~ to ~b~Leave')
					end
					if IsControlJustReleased(1, 38) then
						if(GetDistanceBetweenCoords(playerLoc.x, playerLoc.y, playerLoc.z, 1072.9969482422,-3102.6926269531,-38.999927520752, true) <= 1.5) then
							if v.value == currentWarehouse then
								DoScreenFadeOut(800)
								local id = GetPlayerServerId(PlayerId())							
								TriggerServerEvent("play_instance:instance", id, 0)
								while not IsScreenFadedOut() do
									Citizen.Wait(500)
								end
								SetEntityCoords(player, v.coords)
								SetEntityHeading(player, v.headingOutside)
								DoScreenFadeIn(800)
							end
						end
					end
				end

				---Enter garages
				for k, v in pairs(Config.Garages) do
					if wanted == false then
						DrawMarker(1, v.x, v.y, v.z, 0, 0, 0, 0, 0, 0, 1.101, 1.1001, 0.5001, 122, 0, 122, 0, 0, 0, 0, 0)

						if CheckPos(playerLoc.x, playerLoc.y, playerLoc.z, v.coords.x, v.coords.y, v.coords.z, 3.0) then 
							alert('Press ~INPUT_CONTEXT~ for ~y~Garage ~s~menu')
						end

						if IsControlJustReleased(1, 38) then
							if(GetDistanceBetweenCoords(playerLoc.x, playerLoc.y, playerLoc.z, v.coords.x, v.coords.y, v.coords.z, true) <= 3.0) then
								local size = v.size
								local value = v.value
								local heading = v.heading
								OpenGarageMenu(value, size)
							end
						end
					end

					--Leave small garage
					if CheckPos(playerLoc.x, playerLoc.y, playerLoc.z, 171.10455322266,-1007.0956420898,-98.999984741211, 2.0) then 
						alert('Press ~INPUT_CONTEXT~ to ~b~Leave')
					end
					if IsControlJustReleased(1, 38) then
						if(GetDistanceBetweenCoords(playerLoc.x, playerLoc.y, playerLoc.z, 171.10455322266,-1007.0956420898,-98.999984741211, true) <= 2.0) then
							if v.value == currentGarage then
								local coords = v.coords
								local heading = v.headingOutside
								local instance = 0
								if playerJob == 'police' then
									TriggerEvent('cb_orgs:garageTeleport', coords, heading, instance, 0)
								else
									TriggerEvent('cb_orgs:garageTeleport', coords, heading, instance)
								end
							elseif currentGarage == nil then
								local player = GetPlayerPed(-1)
								local id = GetPlayerServerId(PlayerId())
								TriggerEvent('cb_weapons:removeAttachedWeaponsTeleport')
								TriggerServerEvent("play_instance:instance", id, 0)
								SetEntityCoords(player, vector3(213.8184967041,-808.677734375,31.014888763428))
								ESX.ShowNotification('~r~Logged out in unknown garage')
							end
						end
					end
					--Leave medium garage
					if CheckPos(playerLoc.x, playerLoc.y, playerLoc.z, 201.96032714844,-1005.4312744141,-99.000022888184, 1.5) then 
						alert('Press ~INPUT_CONTEXT~ to ~b~Leave')
					end
					if IsControlJustReleased(1, 38) then
						if(GetDistanceBetweenCoords(playerLoc.x, playerLoc.y, playerLoc.z, 201.96032714844,-1005.4312744141,-99.000022888184, true) <= 1.5) then
							if v.value == currentGarage then
								local coords = v.coords
								local heading = v.headingOutside
								local instance = 0
								if playerJob == 'police' then
									TriggerEvent('cb_orgs:garageTeleport', coords, heading, instance, 0)
								else
									TriggerEvent('cb_orgs:garageTeleport', coords, heading, instance)
								end
							elseif currentGarage == nil then
								local player = GetPlayerPed(-1)
								local id = GetPlayerServerId(PlayerId())
								TriggerEvent('cb_weapons:removeAttachedWeaponsTeleport')
								TriggerServerEvent("play_instance:instance", id, 0)
								SetEntityCoords(player, vector3(213.8184967041,-808.677734375,31.014888763428))
								ESX.ShowNotification('~r~Logged out in unknown garage')
							end
						end
					end
					--Leave large garage
					if CheckPos(playerLoc.x, playerLoc.y, playerLoc.z, 231.66374206543,-1003.6762084961,-99.547019958496, 2.0) then 
						alert('Press ~INPUT_CONTEXT~ to ~b~Leave')
					end
					if IsControlJustReleased(1, 38) then
						if(GetDistanceBetweenCoords(playerLoc.x, playerLoc.y, playerLoc.z, 231.66374206543,-1003.6762084961,-99.547019958496, true) <= 2.0) then
							
							if v.value == currentGarage then
								local coords = v.coords
								local heading = v.headingOutside
								local instance = 0
								if playerJob == 'police' then
									TriggerEvent('cb_orgs:garageTeleport', coords, heading, instance, 0)
								else
									TriggerEvent('cb_orgs:garageTeleport', coords, heading, instance)
								end
								
							elseif currentGarage == nil then
								local player = GetPlayerPed(-1)
								local id = GetPlayerServerId(PlayerId())
								TriggerEvent('cb_weapons:removeAttachedWeaponsTeleport')
								TriggerServerEvent("play_instance:instance", id, 0)
								SetEntityCoords(player, vector3(213.8184967041,-808.677734375,31.014888763428))
								ESX.ShowNotification('~r~Logged out in unknown garage')
							end
						end
					end
				end
				-- HQ Stashes
				for k, v in pairs(Config.HQ) do
					if v.stash ~= nil then
						DrawMarker(1, v.stash.x, v.stash.y, v.stash.z, 0, 0, 0, 0, 0, 0, 1.101, 1.1001, 0.5001, 122, 0, 122, 0, 0, 0, 0, 0)

						if CheckPos(playerLoc.x, playerLoc.y, playerLoc.z, v.stash.x, v.stash.y, v.stash.z, 2.0) then 
							alert('Press ~INPUT_CONTEXT~ to access ~y~'..orgLabel..'~s~\'s stash')
						end

						if IsControlJustReleased(1, 38) then
							ESX.TriggerServerCallback('cb_orgs:checkHQ', function(property)
								for i=1, #property, 1 do
									orgHQ = property[i].hq
								end
								local UserHQ = orgHQ
								local ThisHQ = v.value

								
								if(GetDistanceBetweenCoords(playerLoc.x, playerLoc.y, playerLoc.z, v.stash.x, v.stash.y, v.stash.z, true) <= 2.0) then
									if UserHQ == ThisHQ then
										if orgName ~= '' then
											OpenOrganisationStashMenuHQ()
										else
											ESX.ShowNotification('~r~You are not in a company')
										end
									else 
										ESX.ShowNotification('~r~This is not your stash')
									end
								end
							end, orgName)
						end
					end
				end
				---Enter HQ's
				for k, v in pairs(Config.HQ) do
					if wanted == false then						
						DrawMarker(1, v.x, v.y, v.z, 0, 0, 0, 0, 0, 0, 1.101, 1.1001, 0.5001, 122, 0, 122, 0, 0, 0, 0, 0)

						if CheckPos(playerLoc.x, playerLoc.y, playerLoc.z, v.coordsOutside.x, v.coordsOutside.y, v.coordsOutside.z, 3.0) then 
							alert('Press ~INPUT_CONTEXT~ for ~y~HQ ~s~menu')
						end

						if IsControlJustReleased(1, 38) then
							if(GetDistanceBetweenCoords(playerLoc.x, playerLoc.y, playerLoc.z, v.coordsOutside.x, v.coordsOutside.y, v.coordsOutside.z, true) <= 3.0) then
								local price = v.price
								local value = v.value
								local coords = v.coordsInside
								local carAccess = v.carTeleport
								local headingInside = v.headingInside
								local name = v.name
								OpenHQMenu(name, value, price, coords, carAccess, headingInside)
							end
						end
						--Seperate markers for garage additions (like arcadius building)
						if v.garageCoordsInside ~= nil then
							
							DrawMarker(1, v.garageCoordsOutside.x, v.garageCoordsOutside.y, v.garageCoordsOutside.z, 0, 0, 0, 0, 0, 0, 1.101, 1.1001, 0.5001, 122, 0, 122, 0, 0, 0, 0, 0)

							if CheckPos(playerLoc.x, playerLoc.y, playerLoc.z, v.garageCoordsOutside.x, v.garageCoordsOutside.y, v.garageCoordsOutside.z, 3.0) then 
								alert('Press ~INPUT_CONTEXT~ for ~y~HQ ~s~menu')
							end

							if IsControlJustReleased(1, 38) then
								if(GetDistanceBetweenCoords(playerLoc.x, playerLoc.y, playerLoc.z, v.garageCoordsOutside.x, v.garageCoordsOutside.y, v.garageCoordsOutside.z, true) <= 3.0) then
									local price = v.price
									local value = v.value
									local coords = v.garageCoordsInside
									local carAccess = 1
									local headingInside = v.garageHeadingInside
									local name = v.name
									OpenHQMenu(name, value, price, coords, carAccess, headingInside)
								end
							end
						end
					end

					--Seperate markers for garage additions (like arcadius building)
					if v.garageCoordsInside ~= nil then
			
						DrawMarker(1, v.garageCoordsInside.x, v.garageCoordsInside.y, v.garageCoordsInside.z, 0, 0, 0, 0, 0, 0, 1.101, 1.1001, 0.5001, 122, 0, 122, 0, 0, 0, 0, 0)

						if CheckPos(playerLoc.x, playerLoc.y, playerLoc.z, v.garageCoordsInside.x, v.garageCoordsInside.y, v.garageCoordsInside.z, 3.0) then 
							alert('Press ~INPUT_CONTEXT~ to leave ~y~HQ ~s~ garage')
						end

						if IsControlJustReleased(1, 38) then
							if(GetDistanceBetweenCoords(playerLoc.x, playerLoc.y, playerLoc.z, v.garageCoordsInside.x, v.garageCoordsInside.y, v.garageCoordsInside.z, true) <= 3.0) then
								if IsPedInAnyVehicle(player, true) then
									DoScreenFadeOut(800)
			
									while not IsScreenFadedOut() do
										Citizen.Wait(500)
									end
									SetEntityCoords(GetVehiclePedIsUsing(player), v.garageCoordsOutside)
									SetEntityHeading(GetVehiclePedIsUsing(player), v.garageHeadingOutside)
									DoScreenFadeIn(800)
								else
									DoScreenFadeOut(800)
			
									while not IsScreenFadedOut() do
										Citizen.Wait(500)
									end
									SetEntityCoords(player, v.garageCoordsOutside)
									SetEntityHeading(player, v.garageHeadingOutside)
									DoScreenFadeIn(800)
								end
							end
						end
					end
				end
			end
			-- Dont need to be in an org to leave HQ
			for k, v in pairs(Config.HQ) do
				-- Leave HQ's
				DrawMarker(1, v.x, v.y, v.z, 0, 0, 0, 0, 0, 0, 1.101, 1.1001, 0.5001, 122, 0, 122, 0, 0, 0, 0, 0)

				if CheckPos(playerLoc.x, playerLoc.y, playerLoc.z, v.coordsInside.x, v.coordsInside.y, v.coordsInside.z, 3.0) then 
					alert('Press ~INPUT_CONTEXT~ to leave ~y~HQ')
				end

				if IsControlJustReleased(1, 38) then
					if(GetDistanceBetweenCoords(playerLoc.x, playerLoc.y, playerLoc.z, v.coordsInside.x, v.coordsInside.y, v.coordsInside.z, true) <= 3.0) then
						if v.carTeleport == 1 then 
							if IsPedInAnyVehicle(player, true) then
								DoScreenFadeOut(800)
		
								while not IsScreenFadedOut() do
									Citizen.Wait(500)
								end
								SetEntityCoords(GetVehiclePedIsUsing(player), v.coordsOutside)
								SetEntityHeading(GetVehiclePedIsUsing(player), v.headingOutside)
								DoScreenFadeIn(800)
							else
								DoScreenFadeOut(800)
		
								while not IsScreenFadedOut() do
									Citizen.Wait(500)
								end
								SetEntityCoords(player, v.coordsOutside)
								SetEntityHeading(player, v.headingOutside)
								DoScreenFadeIn(800)
							end
						else
							DoScreenFadeOut(800)
		
							while not IsScreenFadedOut() do
								Citizen.Wait(500)
							end
							SetEntityCoords(player, v.coordsOutside)
							SetEntityHeading(player, v.headingOutside)
							DoScreenFadeIn(800)
						end
					end
				end
			end
		else
			Citizen.Wait(500)
		end 
	end                 
end)

RegisterNetEvent('cb_orgs:teleportWithDriver')
AddEventHandler('cb_orgs:teleportWithDriver', function(state, coords, currentGarageValue)
	DoScreenFadeOut(800)
	currentGarage = currentGarageValue

	local player = GetPlayerPed(-1)
	local id = GetPlayerServerId(PlayerId())
	local heading 
	local coordsSmall = vector3(173.53507995605,-1006.4486694336,-99.635887145996)
	local coordsMedium = vector3(202.08807373047,-1004.3768920898,-99.636070251465)
	local coordsLarge = vector3(231.79791259766,-1004.1389770508,-99.547790527344)

	while not IsScreenFadedOut() do
		Citizen.Wait(500)
	end

	TriggerServerEvent("play_instance:instance", id, state)
	if coords == coordsSmall then
		coords = vector3(178.99534606934,-1003.6773071289,-98.999870300293)
		heading = 179.18
	elseif coords == coordsMedium then
		coords = vector3(207.29560852051,-999.13458251953,-98.999900817871)
		heading = 91.93
	elseif coords == coordsLarge then
		coords = vector3(239.98063659668,-1004.723449707,-98.999862670898)
		heading = 88.42
	else
		local vector = vector3(0.0,1.5,0.0)
		coords = (coords - vector)
	end
	TriggerEvent('cb_weapons:removeAttachedWeaponsTeleport')
	SetEntityCoords(player, coords)
	SetEntityHeading(player, heading)
	DoScreenFadeIn(800)
end)

RegisterNetEvent('cb_orgs:garageTeleport')
AddEventHandler('cb_orgs:garageTeleport', function(coords, heading, instance, police)
	local orgName

	ESX.TriggerServerCallback('cb_orgs:getDetails', function(details)
		for i=1, #details, 1 do
			orgName = details[i].name
		end
	
		if police ~= nil then
			orgName = police
		else
			orgName = orgName
		end

		ESX.TriggerServerCallback('cb_orgs:getInstance', function(orgInstance)
			for i=1, #orgInstance, 1 do
				local state

				if instance > 0 then
					state = orgInstance[i].instance
				elseif instance == 0 then 
					state = 0
				end

				local id = GetPlayerServerId(PlayerId())
				local player = GetPlayerPed(-1)

				if IsPedInAnyVehicle(player, true) then
					local vehicle = GetVehiclePedIsIn(player, false)
					--[[This part is used to take people sitting in vehicle with you, can't place them back in their seat in a different instance though]]
						local numPas = GetVehicleMaxNumberOfPassengers(vehicle)

						pedsincar = {}
						
						for i = 0, numPas do
							if not IsVehicleSeatFree(vehicle, i) then
								local pasInSeat = GetPedInVehicleSeat(vehicle, i)
								local pasInSeatId = NetworkGetPlayerIndexFromPed(pasInSeat)
								local pasInSeatServerId = GetPlayerServerId(pasInSeatId)
								table.insert(pedsincar, 1, pasInSeatServerId)
							end
						end

					local vehicleProps = exports.renzu_customs:GetVehicleProperties(vehicle) 
					local plate = vehicleProps.plate
					local orgName
					local organisation
					local playerCoords = GetEntityCoords(player)
					local playerHeading = GetEntityHeading(player)
			
					ESX.TriggerServerCallback('cb_orgs:getDetails', function(details)
						for i=1, #details, 1 do
							orgName = details[i].name
						end
				
						organisation = 'org_'..orgName..''
						ESX.TriggerServerCallback('esx_advancedgarage:portOrganisationVehicle', function(valid)
							if valid then
								DoScreenFadeOut(800)
								Citizen.Wait(800)
								TriggerEvent('cb_garages:storeVehicle', vehicle, vehicleProps)	
							else
								ESX.ShowNotification(_U('cannot_enter_vehicle'))
							end
						end, vehicleProps, organisation)	
					end)
					
					while DoesEntityExist(vehicle) do
						Citizen.Wait(500)
					end

					TriggerServerEvent("play_instance:instance", id, state)

					while not IsScreenFadedOut() do
						Citizen.Wait(500)
					end

					ESX.TriggerServerCallback('esx_advancedgarage:getOwnedOrganisationVehiclesPort', function(portVehicle)
						for _,v in pairs(portVehicle) do
							local vehVehicle = v.newvehicle

							ESX.Game.SpawnVehicle(vehVehicle.model, playerCoords, playerHeading, function(callback_vehicle)
								ESX.Game.SetVehicleProperties(callback_vehicle, vehicle)
								local playerPed = PlayerPedId()
								TaskWarpPedIntoVehicle(playerPed, callback_vehicle, -1)	
								TriggerServerEvent('cb_orgs:sendPlayersInVeh', pedsincar, state, coords, currentGarage)									
							end)
							Citizen.Wait(500)
							TriggerEvent('cb_weapons:removeAttachedWeaponsTeleport')
							SetEntityCoords(GetVehiclePedIsUsing(player), coords)
							SetEntityHeading(GetVehiclePedIsUsing(player), heading)
							DoScreenFadeIn(800)
						end
					end, plate, organisation)
				else

					TriggerServerEvent("play_instance:instance", id, state)
					DoScreenFadeOut(800)

					while not IsScreenFadedOut() do
						Citizen.Wait(500)
					end
					SetEntityCoords(player, coords)
					SetEntityHeading(player, heading)
					DoScreenFadeIn(800)
				end
			end
		end, orgName)
	end)
end)

-- Create Blips
function CreateBlips()
	if garageBlip then
		if not OwnedGarageBlip then
			for k,v in pairs(Config.Garages) do
				if v.value == garageBlip then
					local blip = AddBlipForCoord(v.coords)

					SetBlipSprite (blip, Config.Blips.Garages.Sprite)
					SetBlipColour (blip, Config.Blips.Garages.Color)
					SetBlipDisplay(blip, Config.Blips.Garages.Display)
					SetBlipScale  (blip, Config.Blips.Garages.Scale)
					SetBlipAsShortRange(blip, true)

					BeginTextCommandSetBlipName("STRING")
					AddTextComponentString(_U('blip_garage'))
					EndTextCommandSetBlipName(blip)
					OwnedGarageBlip = blip
				end
			end
		end
	end
	if warehouseBlip then
		if not OwnedWarehouseBlip then
			for k,v in pairs(Config.Warehouses) do
				if v.value == warehouseBlip then
					local blip = AddBlipForCoord(v.coords)

					SetBlipSprite (blip, Config.Blips.Warehouses.Sprite)
					SetBlipColour (blip, Config.Blips.Warehouses.Color)
					SetBlipDisplay(blip, Config.Blips.Warehouses.Display)
					SetBlipScale  (blip, Config.Blips.Warehouses.Scale)
					SetBlipAsShortRange(blip, true)

					BeginTextCommandSetBlipName("STRING")
					AddTextComponentString(_U('blip_warehouse'))
					EndTextCommandSetBlipName(blip)
					OwnedWarehouseBlip = blip
				end
			end
		end
	end
	if HQBlip then
		if not OwnedHQBlip then
			for k,v in pairs(Config.HQ) do
				if v.value == HQBlip then
					local blip = AddBlipForCoord(v.coordsOutside)

					SetBlipSprite (blip, Config.Blips.HQ.Sprite)
					SetBlipColour (blip, Config.Blips.HQ.Color)
					SetBlipDisplay(blip, Config.Blips.HQ.Display)
					SetBlipScale  (blip, Config.Blips.HQ.Scale)
					SetBlipAsShortRange(blip, true)

					BeginTextCommandSetBlipName("STRING")
					AddTextComponentString(_U('blip_hq'))
					EndTextCommandSetBlipName(blip)
					OwnedHQBlip = blip
				end
			end
		end
	end
end

function CreateBlipsGarage()

	for k,v in pairs(Config.Garages) do
		if v.value ~= garageBlip then
			local blip = AddBlipForCoord(v.coords)

			SetBlipSprite (blip, Config.Blips.buyGarage.Sprite)
			SetBlipColour (blip, Config.Blips.buyGarage.Color)
			SetBlipDisplay(blip, Config.Blips.buyGarage.Display)
			SetBlipScale  (blip, Config.Blips.buyGarage.Scale)
			SetBlipAsShortRange(blip, true)

			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString(_U('blip_garage_sale'))
			EndTextCommandSetBlipName(blip)
			
			table.insert(buyGarageBlips, blip)
		end
	end
end

function CreateBlipsWarehouse()
	for k,v in pairs(Config.Warehouses) do
		if v.value ~= warehouseBlip then
			local blip = AddBlipForCoord(v.coords)

			SetBlipSprite (blip, Config.Blips.buyWarehouse.Sprite)
			SetBlipColour (blip, Config.Blips.buyWarehouse.Color)
			SetBlipDisplay(blip, Config.Blips.buyWarehouse.Display)
			SetBlipScale  (blip, Config.Blips.buyWarehouse.Scale)
			SetBlipAsShortRange(blip, true)

			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString(_U('blip_warehouse_sale'))
			EndTextCommandSetBlipName(blip)
			
			table.insert(buyWarehouseBlips, blip)
		end
	end
end

function CreateBlipsHQ()
	for k,v in pairs(Config.HQ) do
		if v.value ~= HQBlip then
			local blip = AddBlipForCoord(v.coords)

			SetBlipSprite (blip, Config.Blips.buyHQ.Sprite)
			SetBlipColour (blip, Config.Blips.buyHQ.Color)
			SetBlipDisplay(blip, Config.Blips.buyHQ.Display)
			SetBlipScale  (blip, Config.Blips.buyHQ.Scale)
			SetBlipAsShortRange(blip, true)

			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString(_U('blip_HQ_sale'))
			EndTextCommandSetBlipName(blip)
			
			table.insert(buyHQBlips, blip)
		end
	end
end

function DeleteBlips()
	if buyGarageBlips[1] ~= nil then
		for i=1, #buyGarageBlips, 1 do
			RemoveBlip(buyGarageBlips[i])
			buyGarageBlips[i] = nil
		end
	end
	if buyWarehouseBlips[1] ~= nil then
		for i=1, #buyWarehouseBlips, 1 do
			RemoveBlip(buyWarehouseBlips[i])
			buyWarehouseBlips[i] = nil
		end
	end
	if buyHQBlips[1] ~= nil then
		for i=1, #buyHQBlips, 1 do
			RemoveBlip(buyHQBlips[i])
			buyHQBlips[i] = nil
		end
	end
end

RegisterNetEvent('cb_orgs:showWarehouses')
AddEventHandler('cb_orgs:showWarehouses', function()
	if buyWarehouseBlips[1] == nil then
		CreateBlipsWarehouse()
	else
		DeleteBlips()
	end
end)


RegisterNetEvent('cb_orgs:showGarages')
AddEventHandler('cb_orgs:showGarages', function()
	if buyGarageBlips[1] == nil then
		CreateBlipsGarage()
	else
		DeleteBlips()
	end
end)

RegisterNetEvent('cb_orgs:showHQs')
AddEventHandler('cb_orgs:showHQs', function()
	if buyHQBlips[1] == nil then
		CreateBlipsHQ()
	else
		DeleteBlips()
	end
end)

RegisterNetEvent('cb_orgs:setInvite')
AddEventHandler('cb_orgs:setInvite', function(value)
	HQInvite = value
	ESX.ShowNotification('~y~You have been invited to enter the HQ')
	Citizen.Wait(60000)
	HQInvite = 0
end)

RegisterNetEvent('cb_orgs:setWanted')
AddEventHandler('cb_orgs:setWanted', function()
	wanted = true
	Citizen.Wait(600000)
	wanted = false
end)


RegisterNetEvent('cb_orgs:Instance')
AddEventHandler('cb_orgs:Instance', function()
	ESX.TriggerServerCallback('cb_orgs:getDetails', function(details)
		for i=1, #details, 1 do
			orgName = details[i].name
	
			ESX.TriggerServerCallback('cb_orgs:getInstance', function(orgInstance)
				for i=1, #orgInstance, 1 do
					local state = orgInstance[i].instance
					local id = GetPlayerServerId(PlayerId())							
					TriggerServerEvent("play_instance:instance", id, state)
				end
			end, orgName)
		end
	end)
end)
