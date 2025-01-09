ESX = nil
local Orgs = {}
local RegisteredOrganisations = {}
local existingOrg = false
local arrayWeight = Config.localWeight

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


function Getorganisation(name)
	for i=1, #RegisteredOrganisations, 1 do
		if RegisteredOrganisations[i].name == name then
			return RegisteredOrganisations[i]
		end
	end
end

-- UPDATE ORG NAMES AND RANKS EVERY 5 SEC
Citizen.CreateThread(function()
	while true do
		MySQL.ready(function()
			local result = MySQL.Sync.fetchAll('SELECT * FROM orgs', {})
	
			for i=1, #result, 1 do
				Orgs[result[i].name] = result[i]
				Orgs[result[i].name].grades = {}
			end
	
			local result2 = MySQL.Sync.fetchAll('SELECT * FROM org_grades', {})
	
			for i=1, #result2, 1 do
				Orgs[result2[i].org_name].grades[tostring(result2[i].grade)] = result2[i]
			end
		end)
		Citizen.Wait(5000)
	end
end)



RegisterServerEvent('cb_orgs:registerorganisation')
AddEventHandler('cb_orgs:registerorganisation', function(name, label, account, datastore, inventory, data)
	local found = false

	local organisation = {
		name = name,
		label = label,
		account = account,
		datastore = datastore,
		inventory = inventory,
		data = data
	}

	for i=1, #RegisteredOrganisations, 1 do
		if RegisteredOrganisations[i].name == name then
			found, RegisteredOrganisations[i] = true, organisation
			break
		end
	end

	if not found then
		table.insert(RegisteredOrganisations, organisation)
	end

	if found then
		existingOrg = true
	end
end)

AddEventHandler('cb_orgs:getOrganisations', function(cb)
	cb(RegisteredOrganisations)
end)

AddEventHandler('cb_orgs:getorganisation', function(name, cb)
	cb(Getorganisation(name))
end)

ESX.RegisterServerCallback('cb_orgs:getorganisationMoney', function(source, cb, organisationName)
	local organisation = Getorganisation(organisationName)

	if organisation then
		TriggerEvent('esx_addonaccount:getSharedAccount', organisation.account, function(account)
			cb(account.money)
		end)
	else
		cb(0)
	end
end)

ESX.RegisterServerCallback('cb_orgs:getEmployees', function(source, cb, organisation)
	if Config.EnableESXIdentity then

		MySQL.Async.fetchAll('SELECT firstname, lastname, phone_number, identifier, org_name, org_grade FROM users WHERE org_name = @org_name ORDER BY org_grade DESC', {
			['@org_name'] = organisation
		}, function (results)
			local employees = {}

			for i=1, #results, 1 do
				table.insert(employees, {
					name       = results[i].firstname .. ' ' .. results[i].lastname,
					identifier = results[i].identifier,
					phone = results[i].phone_number,
					org = {
						name        = results[i].org_name,
						label       = results[i].org_label,
						grade       = results[i].org_grade,
						grade_name  = Orgs[results[i].org_name].grades[tostring(results[i].org_grade)].name,
						grade_label = Orgs[results[i].org_name].grades[tostring(results[i].org_grade)].label
					}
				})
			end

			cb(employees)
		end)
	end
end)

ESX.RegisterServerCallback('cb_orgs:getOrg', function(source, cb, organisation)
	local org = json.decode(json.encode(Orgs[organisation]))
	local grades = {}

	for k,v in pairs(org.grades) do
		table.insert(grades, v)
	end

	table.sort(grades, function(a, b)
		return a.grade < b.grade
	end)

	org.grades = grades

	cb(org)
end)

ESX.RegisterServerCallback('cb_orgs:setOrg', function(source, cb, identifier, org, grade, label, type)
	local xPlayer = ESX.GetPlayerFromId(source)
	local xTarget = ESX.GetPlayerFromId(identifier)
	local orgGrade

	MySQL.Async.fetchAll('SELECT org_name, org_grade, org_label FROM users WHERE identifier = @identifier', {
		['@identifier'] = xPlayer.identifier
	}, function (result)

		for i=1, #result, 1 do
			orgGrade = result[i].org_grade
			orgName  = result[i].org_name
			orgLabel = result[i].org_label
		end

		if orgGrade == 5 then
			if type == 'hire' then
				if xTarget then
					local targetOrgName
					local targetOrgGrade
					MySQL.Async.fetchAll('SELECT org_name, org_grade, org_label FROM users WHERE identifier = @identifier', {
						['@identifier'] = xTarget.identifier
					}, function (result)
				
						for i=1, #result, 1 do
							targetOrgGrade = result[i].org_grade
							targetOrgName  = result[i].org_name
						end
					end)
					xPlayer.showNotification('Working...')
					Citizen.Wait(3000)
					local count = string.len(targetOrgName)
					if count >= 1 then
						xTarget.showNotification('~r~You are already in an Organisation')
						xPlayer.showNotification('~r~Person is already in an Organisation')
					else
						
						MySQL.Async.execute('UPDATE users SET org_name = @org_name, org_grade = @org_grade, org_label = @org_label WHERE identifier = @identifier', {
							['@org_name']   = org,
							['@org_grade']  = grade,
							['@org_label']  = label,
							['@identifier'] = xTarget.identifier
						}, function(rowsChanged)
							cb()
						end)
						xPlayer.showNotification('~y~'..xTarget.name.. '~s~ has been added to the roster')
						xTarget.showNotification(_U('you_have_been_hired', label))
					end
				end
			elseif type == 'promote' then
				
				MySQL.Async.execute('UPDATE users SET org_grade = @org_grade WHERE identifier = @identifier', {
					['@org_grade']  = grade,
					['@identifier'] = identifier
				}, function(rowsChanged)
					cb()
				end)

				if xTarget then
					xTarget.showNotification(_U('rank_changed', orgLabel, label))
				end
			elseif type == 'fire' then
				
				MySQL.Async.execute('UPDATE users SET org_name = @org_name, org_grade = @org_grade, org_label = @org_label WHERE identifier = @identifier', {
					['@org_name']   = '',
					['@org_grade']  = '',
					['@org_label']  = '',
					['@identifier'] = identifier
				}, function(rowsChanged)
					cb()
				end)

				if xTarget then
					xTarget.showNotification(_U('you_have_been_removed', orgLabel))
				end
			end
		else
			xPlayer.showNotification('~r~You are not the boss')
		end
	end)
end)

ESX.RegisterServerCallback('cb_orgs:setOrgRankName', function(source, cb, org, grade, rankName)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT org_name, org_grade FROM users WHERE identifier = @identifier', {
		['@identifier'] = xPlayer.identifier
	}, function (result)

		for i=1, #result, 1 do
				orgGrade = result[i].org_grade
				orgName = result[i].org_name
		end

		if orgName == org and orgGrade == 5 then
			MySQL.Async.execute('UPDATE org_grades SET label = @label WHERE org_name = @org_name AND grade = @grade', {
				['@label']   = rankName,
				['@org_name'] = orgName,
				['@grade']    = grade
			}, function(rowsChanged)

			end)
		else
			print(('cb_orgs: %s attempted to setOrgRankName'):format(xPlayer.identifier))
			cb()
		end
	end)
end)

--Allow/Revoke stash access
ESX.RegisterServerCallback('cb_orgs:setStashAccess', function(source, cb, org, grade, access)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT org_name, org_grade FROM users WHERE identifier = @identifier', {
		['@identifier'] = xPlayer.identifier
	}, function (result)

		for i=1, #result, 1 do
				orgGrade = result[i].org_grade
				orgName = result[i].org_name
		end

		if orgName == org and orgGrade == 5 then
			MySQL.Async.execute('UPDATE org_grades SET allowstash = @allowstash WHERE org_name = @org_name AND grade = @grade', {
				['@allowstash']   = access,
				['@org_name'] = orgName,
				['@grade']    = grade
			}, function(rowsChanged)

			end)
		else
			print(('cb_orgs: %s attempted to setOrgRankName'):format(xPlayer.identifier))
			cb()
		end
	end)
end)

--Allow/Revoke Account access
ESX.RegisterServerCallback('cb_orgs:setAccountAccess', function(source, cb, org, grade, access)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT org_name, org_grade FROM users WHERE identifier = @identifier', {
		['@identifier'] = xPlayer.identifier
	}, function (result)

		for i=1, #result, 1 do
				orgGrade = result[i].org_grade
				orgName = result[i].org_name
		end

		if orgName == org and orgGrade == 5 then
			MySQL.Async.execute('UPDATE org_grades SET allowmoney = @allowmoney WHERE org_name = @org_name AND grade = @grade', {
				['@allowmoney']   = access,
				['@org_name'] = orgName,
				['@grade']    = grade
			}, function(rowsChanged)

			end)
		else
			print(('cb_orgs: %s attempted to setOrgRankName'):format(xPlayer.identifier))
			cb()
		end
	end)
end)

--Allow/Revoke Recruiting access
ESX.RegisterServerCallback('cb_orgs:setRecruitAccess', function(source, cb, org, grade, access)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT org_name, org_grade FROM users WHERE identifier = @identifier', {
		['@identifier'] = xPlayer.identifier
	}, function (result)

		for i=1, #result, 1 do
				orgGrade = result[i].org_grade
				orgName = result[i].org_name
		end

		if orgName == org and orgGrade == 5 then
			MySQL.Async.execute('UPDATE org_grades SET allowrecruit = @allowrecruit WHERE org_name = @org_name AND grade = @grade', {
				['@allowrecruit']   = access,
				['@org_name'] = orgName,
				['@grade']    = grade
			}, function(rowsChanged)

			end)
		else
			print(('cb_orgs: %s attempted to setOrgRankName'):format(xPlayer.identifier))
			cb()
		end
	end)
end)

--Allow/Revoke Rank edit access
ESX.RegisterServerCallback('cb_orgs:setRankAccess', function(source, cb, org, grade, access)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT org_name, org_grade FROM users WHERE identifier = @identifier', {
		['@identifier'] = xPlayer.identifier
	}, function (result)

		for i=1, #result, 1 do
				orgGrade = result[i].org_grade
				orgName = result[i].org_name
		end

		if orgName == org and orgGrade == 5 then
			MySQL.Async.execute('UPDATE org_grades SET alloweditranks = @alloweditranks WHERE org_name = @org_name AND grade = @grade', {
				['@alloweditranks']   = access,
				['@org_name'] = orgName,
				['@grade']    = grade
			}, function(rowsChanged)

			end)
		else
			print(('cb_orgs: %s attempted to setOrgRankName'):format(xPlayer.identifier))
			cb()
		end
	end)
end)


ESX.RegisterServerCallback('cb_orgs:getOnlinePlayers', function(source, cb)
	local xPlayers = ESX.GetPlayers()
	local players = {}

	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		table.insert(players, {
			source = xPlayer.source,
			identifier = xPlayer.identifier,
			name = xPlayer.name,
		})
	end

	MySQL.Async.fetchAll('SELECT org_name FROM users WHERE identifier = @identifier', {
		['@identifier'] = identifier
	}, function(result)
		for i=1, #result, 1 do
			table.insert(players, {
				org = result[i].org_name
			})
		end
	end)

	cb(players)
end)

---Get target name---
RegisterServerEvent('cb_orgs:GetTargetName')
AddEventHandler('cb_orgs:GetTargetName', function(playerId)
	local xTarget = ESX.GetPlayerFromId(playerId)
	local name = xTarget.name

	TriggerClientEvent('cb_orgs:setName', source, name)
end)

---Invite target to HQ---
RegisterServerEvent('cb_orgs:inviteTarget')
AddEventHandler('cb_orgs:inviteTarget', function(playerId, value)


	TriggerClientEvent('cb_orgs:setInvite', playerId, value)
end)

-- Register org to database
RegisterServerEvent('cb_orgs:registerNewOrg')
AddEventHandler('cb_orgs:registerNewOrg', function(name, label, account, owner)
		local _source = source
		local xPlayer = ESX.GetPlayerFromId(_source)
		local name = name
		local label = label
		local account = account
		local owner = owner


	TriggerEvent('cb_orgs:registerorganisation', name, label, account, account, account, {type = 'public'})
	Citizen.Wait(2000)
	
		MySQL.Async.execute('INSERT INTO orgs (name, label, shared, owner) VALUES (@name, @label, @shared, @owner)', {
			['@name'] = name,
			['@label'] = label,
			['@shared'] = 1,
			['@owner'] = owner

		}, function(rowsChanged)
		end)
		
		MySQL.Async.execute('INSERT INTO addon_account (name, label, shared) VALUES (@name, @label, @shared)', {
			['@name'] = account,
			['@label'] = label,
			['@shared'] = 1
		}, function(rowsChanged)
		end)

		MySQL.Async.execute('INSERT INTO datastore (name, label, shared) VALUES (@name, @label, @shared)', {
			['@name'] = account,
			['@label'] = label,
			['@shared'] = 1
		}, function(rowsChanged)
		end)

		MySQL.Async.execute('INSERT INTO addon_inventory (name, label, shared) VALUES (@name, @label, @shared)', {
			['@name'] = account,
			['@label'] = label,
			['@shared'] = 1
		}, function(rowsChanged)
		end)

		MySQL.Async.execute('INSERT INTO org_grades (org_name, grade, name, label, allowstash, allowmoney, allowrecruit, alloweditranks) VALUES (@org_name, @grade, @name, @label, @allowstash, @allowmoney, @allowrecruit, @alloweditranks)', {
			['@org_name'] = name,
			['@grade'] = 5,
			['@name'] = 'boss',
			['@label'] = 'Boss',
			['@allowstash'] = 1,
			['@allowmoney'] = 1,
			['@allowrecruit'] = 1,
			['@alloweditranks'] = 1
		}, function(rowsChanged)
		end)
		MySQL.Async.execute('INSERT INTO org_grades (org_name, grade, name, label) VALUES (@org_name, @grade, @name, @label)', {
			['@org_name'] = name,
			['@grade'] = 4,
			['@name'] = 'second',
			['@label'] = 'Second'
		}, function(rowsChanged)
		end)
		MySQL.Async.execute('INSERT INTO org_grades (org_name, grade, name, label) VALUES (@org_name, @grade, @name, @label)', {
			['@org_name'] = name,
			['@grade'] = 3,
			['@name'] = 'veteran',
			['@label'] = 'Veteran'
		}, function(rowsChanged)
		end)
		MySQL.Async.execute('INSERT INTO org_grades (org_name, grade, name, label) VALUES (@org_name, @grade, @name, @label)', {
			['@org_name'] = name,
			['@grade'] = 2,
			['@name'] = 'member',
			['@label'] = 'Member'
		}, function(rowsChanged)
		end)
		MySQL.Async.execute('INSERT INTO org_grades (org_name, grade, name, label) VALUES (@org_name, @grade, @name, @label)', {
			['@org_name'] = name,
			['@grade'] = 1,
			['@name'] = 'recruit',
			['@label'] = 'Recruit'
		}, function(rowsChanged)
		end)
		
		MySQL.Async.execute('UPDATE users SET org_name = @org_name, org_grade = @org_grade, org_label = @org_label WHERE identifier = @identifier', {
			['@org_name']        = name,
			['@org_grade']  = 5,
			['@org_label']  = label,
			['@identifier'] = xPlayer.identifier
		}, function(rowsChanged)
		end)--]]

		Citizen.Wait(2000)
		TriggerEvent('esx_addonaccount:ResetAccounts')
end)


--Disband organisation, includes removing all members
RegisterServerEvent('cb_orgs:removeOrg')
AddEventHandler('cb_orgs:removeOrg', function(name, label, account)
		local _source = source
		local xPlayer = ESX.GetPlayerFromId(_source)
		local name = name
		local label = label
		local account = account

		-- Update:make it so you only have the option to delete org when in an org
		-- Update:make orgs update when deleted so it doesn't start throwing errors

		
		MySQL.Async.fetchAll('SELECT identifier FROM users WHERE org_name = @org_name', {
			['@org_name'] = name
		}, function (results)
			
			for i=1, #results, 1 do
				MySQL.Async.execute('UPDATE users SET org_name = @org_name, org_grade = @org_grade, org_label = @org_label WHERE identifier = @identifier', {
					['@org_name']   = '',
					['@org_grade']  = 0,
					['@org_label']  = '',
					['@identifier'] = results[i].identifier
				}, function(rowsChanged)
				end)
			end			
		end)

		--[[ -- delete all org vehicles? Probably don't want to use this, but its here.
		MySQL.Async.execute('DELETE FROM owned_vehicles WHERE owner= @owner;', { 
			['@owner'] = name,
		}, function(rowsChanged)
		end)
		--]]

		MySQL.Async.execute('DELETE FROM orgs WHERE name= @name;', { 
			['@name'] = name,
		}, function(rowsChanged)
		end)

		MySQL.Async.execute('DELETE FROM addon_account WHERE name= @name;', {
			['@name'] = account,
			}, function(rowsChanged)
		end)

		MySQL.Async.execute('DELETE FROM addon_account_data WHERE name= @name;', {
			['@name'] = account,
			}, function(rowsChanged)
		end)

		MySQL.Async.execute('DELETE FROM datastore WHERE name= @name;', { 
			['@name'] = account,
			}, function(rowsChanged)
		end)

		MySQL.Async.execute('DELETE FROM addon_inventory WHERE name= @name;', { 
			['@name'] = account,
			}, function(rowsChanged)
		end)
		
		MySQL.Async.execute('DELETE FROM org_grades WHERE org_name = @org_name', {  
			['@org_name'] = name,
			}, function(rowsChanged)
		end)
end)

-- Player leaves org, remove them from tables
RegisterServerEvent('cb_orgs:leaveOrg')
AddEventHandler('cb_orgs:leaveOrg', function(name, label, account)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	MySQL.Async.execute('UPDATE users SET org_name = @org_name, org_grade = @org_grade, org_label = @org_label WHERE identifier = @identifier', {
		['@org_name']   = '',
		['@org_grade']  = 0,
		['@org_label']  = '',
		['@identifier'] = xPlayer.identifier
	}, function(rowsChanged)
	end)
end)

-- Pay for org register
ESX.RegisterServerCallback('cb_orgs:buyName', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
    local bankBalance = xPlayer.getAccount('bank').money

	if bankBalance >= 50000 then
		xPlayer.removeAccountMoney('bank', 50000)
		TriggerClientEvent('esx:showNotification', source, 'You transferred ~g~$50000~s~ to the city')
		cb(1)
	elseif bankBalance < 50000 then
		cb(0)
	end
end)

-- Pay for org
RegisterServerEvent('cb_orgs:payForOrg')
AddEventHandler('cb_orgs:payForOrg', function()
	local xPlayer = ESX.GetPlayerFromId(source)
    local bankBalance = xPlayer.getAccount('bank').money
	xPlayer.removeAccountMoney('bank', 50000)
	TriggerClientEvent('esx:showNotification', source, 'You transferred ~g~$50000~s~ to the city')
end)


-- check player funds
ESX.RegisterServerCallback('cb_orgs:getMoney', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
    local bankBalance = xPlayer.getAccount('bank').money

	cb(bankBalance)
end)

--Fetch org instance (these cannot be on client due to possible abuse)
ESX.RegisterServerCallback('cb_orgs:getInstance', function (source, cb, orgName)

	MySQL.Async.fetchAll('SELECT instance FROM orgs WHERE name = @name', {
		['@name'] = orgName
	}, function (result)
		
		local orgInstance = {}

		for i=1, #result, 1 do
			table.insert(orgInstance, {
				instance  = result[i].instance
			})
		end

		cb(orgInstance)
	end)
end)

--Fetch client org details on startup
ESX.RegisterServerCallback('cb_orgs:checkName', function (source, cb)
	MySQL.Async.fetchAll('SELECT name, label, owner FROM orgs', {}, function (result)
		local orgs = {}
	
		for i=1, #result, 1 do

			table.insert(orgs, {
				name  = result[i].name,
				label = result[i].label,
				owner = result[i].owner
			})
		end
	
		cb(orgs)
	end)
end)

-- Fetch org details from ID -- (to check certain things, like is this person already in an org or whats their grade in it)
ESX.RegisterServerCallback('cb_orgs:getDetails', function (source, cb)
	local source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	
	if xPlayer ~= nil then
		MySQL.Async.fetchAll('SELECT org_name, org_grade, org_label FROM users WHERE identifier = @identifier', {
			['@identifier'] = xPlayer.identifier
		}, function (result)

			local details = {}

			for i=1, #result, 1 do
				table.insert(details, {
					name  = result[i].org_name,
					grade = result[i].org_grade,
					label = result[i].org_label
				})
			end

			cb(details)
		end)
	end
end)

--Fetch organisation properties for blips
ESX.RegisterServerCallback('cb_orgs:getOrgProperties', function (source, cb)
	local source = source
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT org_name FROM users WHERE identifier = @identifier', {
		['@identifier'] = xPlayer.identifier
	}, function (org)
		for i=1, #org, 1 do
			local orgName
			orgName = org[i].org_name

			MySQL.Async.fetchAll('SELECT * FROM orgs WHERE name = @name', {
				['@name'] = orgName
			}, function (result)

				local propertyDetails = {}

				for i=1, #result, 1 do

					table.insert(propertyDetails, {
						garageBlip  = result[i].garage,
						warehouseBlip = result[i].warehouse,
						hqBlip = result[i].hq
					})
				end

				cb(propertyDetails)
			end)
		end
	end)
end)

--Get org details from target player
ESX.RegisterServerCallback('cb_orgs:getDetailsTarget', function (source, cb, playerId)
	local source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	local xTarget = ESX.GetPlayerFromId(playerId)
	

	MySQL.Async.fetchAll('SELECT org_name, org_grade, org_label FROM users WHERE identifier = @identifier', {
		['@identifier'] = xTarget.identifier
	}, function (result)

		local details = {}

		for i=1, #result, 1 do
			table.insert(details, {
				name  = result[i].org_name,
				grade = result[i].org_grade,
				label = result[i].org_label
			})
		end

		cb(details)
	end)
end)

-- Fetch person first and last name --
ESX.RegisterServerCallback('cb_orgs:getIdentity', function (source, cb)
	local source = source
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT firstname, lastname FROM users WHERE identifier = @identifier', {
		['@identifier'] = xPlayer.identifier
	}, function (result)

		local player = {}

		for i=1, #result, 1 do
			table.insert(player, {
				firstname  = result[i].firstname,
				lastname = result[i].lastname
			})
		end

		cb(player)
	end)
end)

-- Fetch org details, like label etc
ESX.RegisterServerCallback('cb_orgs:getNameDetails', function (source, cb, orgName)

	local orgName = tostring(orgName)

	MySQL.Async.fetchAll('SELECT label, owner FROM orgs WHERE name = @name', {
		['@name'] = orgName
	}, function (result)

		local orgDetails = {}

		for i=1, #result, 1 do
			table.insert(orgDetails, {
				label  = result[i].label,
				owner = result[i].owner
			})
		end

		cb(orgDetails)
	end)
end)

--Fetch grades details
ESX.RegisterServerCallback('cb_orgs:getGradeDetails', function (source, cb)

	local source = source
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT org_name, org_grade, org_label FROM users WHERE identifier = @identifier', {
		['@identifier'] = xPlayer.identifier
	}, function (result)

		for i=1, #result, 1 do
			orgGrade = result[i].org_grade
			orgName  = result[i].org_name
		end
	end)
	Citizen.Wait(2000)

	MySQL.Async.fetchAll('SELECT label, allowstash, allowmoney, allowrecruit, alloweditranks FROM org_grades WHERE org_name = @org_name AND grade = @grade', {
		['@grade'] = orgGrade,
		['@org_name'] = orgName
	}, function(result2)

		local gradeDetails = {}

		for i=1, #result2, 1 do
			table.insert(gradeDetails, {
				label  = result2[i].label,
				allowstash  = result2[i].allowstash,
				allowmoney  = result2[i].allowmoney,
				allowrecruit  = result2[i].allowrecruit,
				alloweditranks  = result2[i].alloweditranks
			})
		end
		cb(gradeDetails)
	end)

end)

-- Get target player data (used when u need names etc in client)
ESX.RegisterServerCallback('cb_orgs:getOtherPlayerData', function(source, cb, target)
	local xPlayer = ESX.GetPlayerFromId(target)

	if xPlayer then
		local data = {
			name = xPlayer.getName(),
			job = xPlayer.job.label,
			grade = xPlayer.job.grade_label,
			inventory = xPlayer.getInventory(),
			accounts = xPlayer.getAccounts(),
			weapons = xPlayer.getLoadout()
		}

		if Config.EnableESXIdentity then
			data.dob = xPlayer.get('dateofbirth')
			data.height = xPlayer.get('height')

			if xPlayer.get('sex') == 'm' then data.sex = 'male' else data.sex = 'female' end
		end
		cb(data)
	end
end)

-- Get outstanding bills

ESX.RegisterServerCallback('cb_orgs:getOutstandingBills', function (source, cb, orgName)
	
	MySQL.Async.fetchAll('SELECT * FROM billing INNER JOIN users ON billing.identifier = users.identifier WHERE target = @target', {
		['@target'] = 'org_'..orgName..'' 
	}, function(result)
		cb(result)
	end)
end)

-- Remove bill from outstanding bills list
RegisterServerEvent('cb_orgs:removeBill')
AddEventHandler('cb_orgs:removeBill', function(billId)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.execute('DELETE FROM billing WHERE id = @id', {
		['@id'] = billId
	}, function(rowsChanged)
		if rowsChanged == 1 then
			xPlayer.showNotification(_U('removed_bill'))
		end
	end)
end)

--Get stock in warehouse
ESX.RegisterServerCallback('cb_orgs:getStockItems', function(source, cb, orgName)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'org_'..orgName..'', function(inventory)
		cb(inventory.items)
	end)
end)

--Get player inventory
ESX.RegisterServerCallback('cb_orgs:getPlayerInventory', function(source, cb)
	local xPlayer    = ESX.GetPlayerFromId(source)
	local items      = xPlayer.inventory

	cb({items = items})
end)

--Get item out of the warehouse
RegisterServerEvent('cb_orgs:getStockItem')
AddEventHandler('cb_orgs:getStockItem', function(itemName, count, orgName)
	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'org_'..orgName..'', function(inventory)
		local item = inventory.getItem(itemName)

		-- is there enough in the society?
		if count > 0 and item.count >= count then

			-- can the player carry the said amount of x item?
			if xPlayer.canCarryItem(itemName, count) then
				inventory.removeItem(itemName, count)
				xPlayer.addInventoryItem(itemName, count)
				xPlayer.showNotification(_U('have_withdrawn_item', count, item.label))
			else
				xPlayer.showNotification(_U('player_cannot_hold'))
			end
		else
			xPlayer.showNotification(_U('invalid_quantity'))
		end
	end)
end)

--Deposit item in warehouse 
RegisterServerEvent('cb_orgs:putStockItems')
AddEventHandler('cb_orgs:putStockItems', function(itemName, count, orgName)
	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'org_'..orgName..'', function(inventory)
		local item = inventory.getItem(itemName)
		local playerItemCount = xPlayer.getInventoryItem(itemName).count

		if item.count >= 0 and count <= playerItemCount then
			xPlayer.removeInventoryItem(itemName, count)
			inventory.addItem(itemName, count)
		else
			xPlayer.showNotification(_U('invalid_quantity'))
		end

		xPlayer.showNotification(_U('have_deposited_item', count, item.label))
	end)
end)

--Get account money
ESX.RegisterServerCallback('cb_orgs:getAccountMoney', function(source, cb)
	TriggerEvent('esx_addonaccount:getSharedAccount', 'org_'..orgName..'', function(account)
		cb(account.money)
	end)
end)

--Withdraw / Deposit Organisation account money
RegisterServerEvent('cb_orgs:withdrawMoney')
AddEventHandler('cb_orgs:withdrawMoney', function(orgName, amount)
	local xPlayer = ESX.GetPlayerFromId(source)
	amount = ESX.Math.Round(tonumber(amount))

	TriggerEvent('esx_addonaccount:getSharedAccount', orgName, function(account)
		if amount > 0 and account.money >= amount then
			account.removeMoney(amount)
			xPlayer.addMoney(amount)
			xPlayer.showNotification(_U('have_withdrawn_money', ESX.Math.GroupDigits(amount)))
		else
			xPlayer.showNotification(_U('insuffiecient'))
		end
	end)
end)

RegisterServerEvent('cb_orgs:depositMoney')
AddEventHandler('cb_orgs:depositMoney', function(orgName, amount)
	local xPlayer = ESX.GetPlayerFromId(source)
	amount = ESX.Math.Round(tonumber(amount))

	if amount > 0 and xPlayer.getMoney() >= amount then
		TriggerEvent('esx_addonaccount:getSharedAccount', orgName, function(account)
			xPlayer.removeMoney(amount)
			xPlayer.showNotification(_U('have_deposited_money', ESX.Math.GroupDigits(amount)))
			account.addMoney(amount)
		end)
	else
		xPlayer.showNotification(_U('insuffiecient'))
	end
end)

--Warehouse check
ESX.RegisterServerCallback('cb_orgs:checkWarehouse', function (source, cb, orgName)

	MySQL.Async.fetchAll('SELECT warehouse FROM orgs WHERE name = @name;', {
		['@name'] = orgName
	}, function (result)

		local property = {}
	
		for i=1, #result, 1 do
			table.insert(property, {
				warehouse  = result[i].warehouse,
			})
		end
		cb(property)
	end)
end)

--Garage check
ESX.RegisterServerCallback('cb_orgs:checkGarage', function (source, cb, orgName)

	MySQL.Async.fetchAll('SELECT garage FROM orgs WHERE name = @name;', {
		['@name'] = orgName
	}, function (result)

		local property = {}
	
		for i=1, #result, 1 do
			table.insert(property, {
				garage  = result[i].garage,
			})
		end
		cb(property)
	end)
end)

--HQ check
ESX.RegisterServerCallback('cb_orgs:checkHQ', function (source, cb, orgName)

	MySQL.Async.fetchAll('SELECT hq FROM orgs WHERE name = @name;', {
		['@name'] = orgName
	}, function (result)

		local property = {}
	
		for i=1, #result, 1 do
			table.insert(property, {
				hq  = result[i].hq,
			})
		end
		cb(property)
	end)
end)

--All warehouse that are taken to be sent to client periodically
ESX.RegisterServerCallback('cb_orgs:takenWarehouses', function (source, cb)

	MySQL.Async.fetchAll('SELECT warehouse FROM orgs WHERE NOT warehouse = @warehouse;', {
		['@warehouse'] = 0
	}, function (result)

		local warehouseNumbersTaken = {}
	
		for i=1, #result, 1 do
			table.insert(warehouseNumbersTaken, {
				value  = result[i].warehouse
			})
		end
		cb(warehouseNumbersTaken)
	end)
end)

--All garages that are taken to be sent to client periodically
ESX.RegisterServerCallback('cb_orgs:takenGarages', function (source, cb)

	MySQL.Async.fetchAll('SELECT garage FROM orgs WHERE NOT garage = @garage;', {
		['@garage'] = 0
	}, function (result)

		local garageNumbersTaken = {}
	
		for i=1, #result, 1 do
			table.insert(garageNumbersTaken, {
				value  = result[i].garage
			})
		end
		cb(garageNumbersTaken)
	end)
end)

--All HQ's that are taken to be sent to client periodically
ESX.RegisterServerCallback('cb_orgs:takenHQ', function (source, cb)

	MySQL.Async.fetchAll('SELECT hq FROM orgs WHERE NOT hq = @hq;', {
		['@hq'] = 0
	}, function (result)

		local hqNumbersTaken = {}
	
		for i=1, #result, 1 do
			table.insert(hqNumbersTaken, {
				value  = result[i].hq
			})
		end
		cb(hqNumbersTaken)
	end)
end)

--Buy warehouse
RegisterServerEvent('cb_orgs:buyWarehouse')
AddEventHandler('cb_orgs:buyWarehouse', function(value, size, orgName)
	local xPlayer = ESX.GetPlayerFromId(source)
	if size == '(small)' then
		price = 500000
	elseif size == "(large)" then
		price = 900000
	end

	TriggerEvent('esx_addonaccount:getSharedAccount', 'org_'..orgName..'', function(account)
		if account.money >= price then
						
			MySQL.Async.execute('UPDATE orgs SET warehouse = @warehouse WHERE name = @name', {
				['@name']   = orgName,
				['@warehouse']  = value
			}, function(rowsChanged)
				
				if rowsChanged == 1 then
					account.removeMoney(price)
					xPlayer.showNotification('Successfully purchased ~y~Warehouse '..value..'~s~ for ~g~$'..price..'')
				else
					xPlayer.showNotification('~r~Something went wrong, contact CB')
				end
			end)
		else
			xPlayer.showNotification('~r~Not enough money in ~b~Organisation account')
		end
	end)
end)

--Sell warehouse
RegisterServerEvent('cb_orgs:sellWarehouse')
AddEventHandler('cb_orgs:sellWarehouse', function(value, size, orgName)
	local xPlayer = ESX.GetPlayerFromId(source)
	if size == '(small)' then
		amount = 450000
	elseif size == "(large)" then
		amount = 810000
	end

	TriggerEvent('esx_addonaccount:getSharedAccount', 'org_'..orgName..'', function(account)
		
		MySQL.Async.execute('UPDATE orgs SET warehouse = @warehouse WHERE name = @name', {
			['@name']   = orgName,
			['@warehouse']  = 0
		}, function(rowsChanged)
			if rowsChanged == 1 then
				account.addMoney(amount)
				xPlayer.showNotification('Successfully sold ~y~Warehouse '..value..'~s~ for ~g~$'..amount..'')
			else
				xPlayer.showNotification('~r~Something went wrong, contact CB')
			end
		end)
	end)
end)

--Buy garage
RegisterServerEvent('cb_orgs:buyGarage')
AddEventHandler('cb_orgs:buyGarage', function(value, size, orgName)
	local xPlayer = ESX.GetPlayerFromId(source)
	if size == '(small)' then
		price = 200000
	elseif size == "(medium)" then
		price = 400000
	elseif size == "(large)" then
		price = 1250000
	end

	TriggerEvent('esx_addonaccount:getSharedAccount', 'org_'..orgName..'', function(account)
		if account.money >= price then
						
			MySQL.Async.execute('UPDATE orgs SET garage = @garage WHERE name = @name', {
				['@name']   = orgName,
				['@garage']  = value
			}, function(rowsChanged)
				
				if rowsChanged == 1 then
					account.removeMoney(price)
					xPlayer.showNotification('Successfully purchased ~y~Garage '..value..'~s~ for ~g~$'..price..'')
				else
					xPlayer.showNotification('~r~Something went wrong, contact CB')
				end
			end)
		else
			xPlayer.showNotification('~r~Not enough money in ~b~Organisation account')
		end
	end)
end)

--Sell garage
RegisterServerEvent('cb_orgs:sellGarage')
AddEventHandler('cb_orgs:sellGarage', function(value, size, orgName)
	local xPlayer = ESX.GetPlayerFromId(source)
	if size == '(small)' then
		amount = 180000
	elseif size == "(medium)" then
		amount = 360000
	elseif size == "(large)" then
		amount = 1125000
	end

	TriggerEvent('esx_addonaccount:getSharedAccount', 'org_'..orgName..'', function(account)
		
		MySQL.Async.execute('UPDATE orgs SET garage = @garage WHERE name = @name', {
			['@name']   = orgName,
			['@garage']  = 0
		}, function(rowsChanged)
			if rowsChanged == 1 then
				account.addMoney(amount)
				xPlayer.showNotification('Successfully sold ~y~Garage '..value..'~s~ for ~g~$'..amount..'')
			else
				xPlayer.showNotification('~r~Something went wrong, contact CB')
			end
		end)
	end)
end)

--Buy HQ
RegisterServerEvent('cb_orgs:buyHQ')
AddEventHandler('cb_orgs:buyHQ', function(value, price, orgName)
	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addonaccount:getSharedAccount', 'org_'..orgName..'', function(account)
		if account.money >= price then
						
			MySQL.Async.execute('UPDATE orgs SET hq = @hq WHERE name = @name', {
				['@name']   = orgName,
				['@hq']  = value
			}, function(rowsChanged)
				
				if rowsChanged == 1 then
					account.removeMoney(price)
					xPlayer.showNotification('Successfully purchased ~y~Garage '..value..'~s~ for ~g~$'..price..'')
				else
					xPlayer.showNotification('~r~Something went wrong, contact CB')
				end
			end)
		else
			xPlayer.showNotification('~r~Not enough money in ~b~Organisation account')
		end
	end)
end)
--Sell HQ
RegisterServerEvent('cb_orgs:sellHQ')
AddEventHandler('cb_orgs:sellHQ', function(value, sellprice, orgName)
	local xPlayer = ESX.GetPlayerFromId(source)
	local amount = sellprice

	TriggerEvent('esx_addonaccount:getSharedAccount', 'org_'..orgName..'', function(account)
		
		MySQL.Async.execute('UPDATE orgs SET hq = @hq WHERE name = @name', {
			['@name']   = orgName,
			['@hq']  = 0
		}, function(rowsChanged)
			if rowsChanged == 1 then
				account.addMoney(amount)
				xPlayer.showNotification('Successfully sold ~y~HQ '..value..'~s~ for ~g~$'..amount..'')
			else
				xPlayer.showNotification('~r~Something went wrong, contact CB')
			end
		end)
	end)
end)

-- Get ALL org stash items in warehouse
ESX.RegisterServerCallback('cb_orgs:getWarehouseItems', function (source, cb, orgName)

	MySQL.Async.fetchAll('SELECT * FROM addon_inventory_items WHERE inventory_name = @inventory_name', {
		['@inventory_name'] = 'org_'..orgName..''
	}, function (result)
		
		local orgStash = {}

		for i=1, #result, 1 do
			table.insert(orgStash, {
				item = result[i].name,
				count = result[i].count
			})
		end

		cb(orgStash)
	end)
end)

RegisterServerEvent('cb_orgs:sendPlayersInVeh')
AddEventHandler('cb_orgs:sendPlayersInVeh', function(pedsincar, state, coords, currentGarage)
	for i = 1, #pedsincar do
		if pedsincar[i] >= 1 then
			TriggerClientEvent('cb_orgs:teleportWithDriver', pedsincar[i], state, coords, currentGarage)
		end
	end
end)

RegisterServerEvent('cb_orgs:setWantedS')
AddEventHandler('cb_orgs:setWantedS', function(closestPlayer)
	TriggerClientEvent('cb_orgs:setWanted', closestPlayer)
end)

RegisterServerEvent('cb_orgs:logInInstance')
AddEventHandler('cb_orgs:logInInstance', function()
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT inOrgInstance, org_name FROM users WHERE identifier = @identifier', {
	
		['@identifier'] = xPlayer.identifier
	}, function (result)

		for i=1, #result, 1 do
			inOrgInstance = result[i].inOrgInstance

            if inOrgInstance == true then 
				xPlayer.showNotification('in instance')
                TriggerClientEvent('cb_orgs:Instance', source)
			else
				xPlayer.showNotification('NOT in instance')
            end
        end
    end)
end)