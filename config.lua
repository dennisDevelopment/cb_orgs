Config = {}

Config.Locale = 'en'
Config.EnableESXIdentity = true
Config.MaxSalary = 500
Config.DrawDistance               = 20.0 -- How close you need to be in order for the markers to be drawn (in GTA units).
Config.MarkerSize				  = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor				  = { r = 255, g = 255, b = 255 }
Config.MarkerText				  = true

Config.Blips = {
	Garages = {Sprite = 524, Color = 46, Display = 2, Scale = 0.8}, -- Organisation Garage Blip.
	Warehouses = {Sprite = 473, Color = 46, Display = 2, Scale = 0.8}, -- Organisation Warehouse Blip.
	HQ = {Sprite = 475, Color = 46, Display = 2, Scale = 0.8}, -- Organisation HQ Blip.
	
	--For Sale
	buyGarage = {Sprite = 369, Color = 2, Display = 2, Scale = 0.8}, -- Buy Garages Blip.
	buyWarehouse = {Sprite = 474, Color = 2, Display = 2, Scale = 0.8}, -- Buy Warehouse Blip.
	buyHQ = {Sprite = 476, Color = 2, Display = 2, Scale = 0.8}, -- Buy HQ Blip.
}

-- Banks for organisation accounts
Config.Locations = {
	stash = {
		coords = {
			vector3(1088.3388671875,-3102.5932617188,-38.96549987793), -- Small warehouse --
			vector3(1049.05139,-3100.547,-40.1), -- Large Warehouse
		},
	},
	HQstash = {
		coords = {
			vector3(1118.2012939453,-3143.1918945313,-37.062770843506), -- Biker HQ small
			vector3(-124.26077270508,-641.41333007813,168.82049560547) -- Arcadius HQ
		},
	},
	banks = {
		coords = {
			vector3(149.8127746582,-1040.6981201172,29.374088287354), -- Fleeca Vespucci blvd
			vector3(314.16134643555,-279.12231445313,54.170783996582), -- Fleeca Hawick ave
			vector3(243.26885986328,224.7541809082,106.28684997559), -- Pacific standard --
			vector3(248.37063598633,222.89558410645,106.28667449951), -- Pacific standard
			vector3(253.58024597168,221.02182006836,106.2865447998), -- Pacific standard
			vector3(251.72219848633,221.72125244141,106.2865447998), -- Pacific standard
			vector3(-350.98684692383,-49.885807037354,49.042583465576), -- Big Fleeca Hawick Ave
			vector3(-1212.6578369141,-330.83511352539,37.787029266357), -- Del perro blvd
			vector3(-2962.572265625,482.88482666016,15.703106880188), -- great ocean hwy
			vector3(1174.9963378906,2706.8046875,38.094032287598), -- Fleeca route 68
			vector3(-113.04085540771,6470.212890625,31.626714706421) --Blaine county savings Paleto
		},
	},
}

Config.Warehouses = {
	--SMALL WAREHOUSES
		Warehouse1 = {
			coords   = vector3(-53.882503509521,-1213.3275146484,27.674203872681), 
			size  = '(small)',
			value = 1,
			headingOutside = 88.0
		},
	--LARGE WAREHOUSES

		Warehouse50 = {
			coords   = vector3(-15.388976097107,-1310.7535400391,29.266555786133),
			size  = '(large)',
			value = 50,
			headingOutside = 359.83
		},
		Warehouse51 = {
			coords   = vector3(3.4255263805389,-1309.6854248047,30.164724349976), 
			size  = '(large)',
			value = 51,
			headingOutside = 359.52
		},
		Warehouse52 = {
			coords   = vector3(122.1030960083,-1577.5250244141,29.602439880371), 
			size  = '(large)',
			value = 52,
			headingOutside = 49.309
		}
}

Config.Garages = {

		Garage1 = {
			coords   = vector3(-327.48532104492,-1348.8051757813,30.707530975342), 
			size  = '(small)',
			value = 1,
			headingOutside = 91.19
		},

		Garage50 = {
			coords   = vector3(-396.80645751953,-135.20252990723,38.532238006592), 
			size  = '(medium)',
			value = 50,
			headingOutside = 338.92
		},

		Garage100 = {
			coords   = vector3(-1140.8061523438,-319.77056884766,37.673496246338),
			size  = '(large)',
			value = 100,
			headingOutside = 264.96
		},
		Garage101 = {
			coords   = vector3(-1151.9696044922,-204.4144744873,37.959991455078),
			size  = '(large)',
			value = 101,
			headingOutside = 193.75
		}
}


Config.HQ = {

	HQ1 = {
		name = 'Small Biker HQ',
		coordsOutside   = vector3(922.43353271484,-1556.4411621094,30.572595596313),
		coordsInside   = vector3(1109.3836669922,-3162.4279785156,-37.752910614014), -- Biker garage HQ 
		carTeleport = 1,
		price  = 5000,
		value = 1,
		headingOutside = 87.43,
		headingInside = 0.04
	},

	HQ30 = {
		name = 'Biker HQ',
		coordsOutside   = vector3(845.19006347656,-2360.658203125,30.106336593628),
		coordsInside   = vector3(1001.4454956055,-3164.1750488281,-39.142379760742), -- Biker Garage HQ more luxureous
		carTeleport = 1,
		price  = 12000,
		value = 30,
		headingOutside = 354.5,
		headingInside = 272.0
	},

	HQ51 = {
		name = 'Arcadius Office HQ',
		garageCoordsOutside   = vector3(-144.13078308105,-577.00030517578,31.787742614746),
		garageCoordsInside   = vector3(-142.01760864258,-591.10595703125,166.76374816895),
		garageHeadingInside = 130.15,
		garageHeadingOutside = 159.98,
		coordsOutside   = vector3(-117.48293304443,-605.84613037109,36.280727386475),
		coordsInside   = vector3(-141.55491638184,-620.97265625,168.82049560547), -- Arcadius building office (done)
		carTeleport = 0,
		price  = 10000,
		value = 51,
		headingOutside = 251.0,
		headingInside = 274.72,
		stash = vector3(-124.27744293213,-641.45141601563,168.82032775879)
	}
	--[[ -- Possible extra locations, Not tested. future update.
	HQ52 = {
		name = 'Mazebank Office HQ',
		coordsOutside   = vector3(-1140.8061523438,-319.77056884766,37.673496246338),
		coordsInside   = vector3(-75.44054, -827.1487, 243.3859), -- Mazebank building office
		carTeleport = 0,
		price  = 10000,
		value = 52,
		headingOutside = 91.19,
		headingInside = 91.19
	},

	HQ53 = {
		name = 'MazeWest Office HQ',
		coordsOutside   = vector3(-1140.8061523438,-319.77056884766,37.673496246338),
		coordsInside   = vector3(-1392.617, -480.6363, 72.04208), -- MazeWest building office
		carTeleport = 0,
		price  = 10000,
		value = 53,
		headingOutside = 91.19,
		headingInside = 91.19
	},

	HQ54 = {
		name = 'LomBank Office HQ',
		coordsOutside   = vector3(-1140.8061523438,-319.77056884766,37.673496246338),
		coordsInside   = vector3(-1579.702, -565.0366, 108.5229), -- LomBank building office
		carTeleport = 0,
		price  = 10000,
		value = 54,
		headingOutside = 91.19,
		headingInside = 91.19
	}, 

	HQ100 = {
		name = 'Reserved For HUGE',
		coordsOutside   = vector3(-1140.8061523438,-319.77056884766,37.673496246338),
		coordsInside   = vector3(-1140.8061523438,-319.77056884766,37.673496246338), --
		carTeleport = 0,
		price  = 10000,
		value = 100,
		headingOutside = 264.96,
		headingInside = 91.19
	},--]]
--},
}




--Warehouse weight table
Config.DefaultWeight = 1000


Config.localWeight = {

	alive_chicken	= 2000,
	boosterPack	= 200,
	ambulance_badge	= 5,
	baggy	= 1,
	bandage	= 5,
	beer	= 300,
	blue_billstrap	= 100,
	bracelet1	= 150,
	bracelet2	= 300,
	bracelet3	= 250,
	bracelet4	= 250,
	brake_fluid	= 250,
	bread	= 100,
	brown_billstrap	= 100,
	bulletproof	= 3000,
	captains	= 1,
	carokit	= 2000,
	car_battery	= 1200,
	car_cleankit	= 500,
	car_key_2015polstang	= 1,
	car_key_e450ambo	= 1,
	car_key_fbi	= 1,
	car_key_fbi2	= 1,
	car_key_fd2	= 1,
	car_key_lib18tahoe	= 1,
	car_key_police2	= 1,
	car_key_police3	= 1,
	car_key_police4	= 1,
	car_key_police5	= 1,
	car_key_police6	= 1,
	car_key_police8	= 1,
	car_key_policeb	= 1,
	car_key_policet	= 1,
	car_key_polmav	= 1,
	car_key_seasparrow	= 1,
	car_key_sheriff3	= 1,
	car_key_stretcher	= 1,
	car_key_supervolito	= 1,
	car_key_riot2	= 1,
	casinochips	= 1,
	chips	= 1,
	chronic_baggy	= 1,
	chronic_plant	= 800,
	chronic_seeds	= 1,
	clothe	= 12,
	coca_seeds	= 1,
	coffee	= 250,
	copper	= 1,
	crowbar	= 3000,
	cutted_wood	= 1000,
	diamond	= 10,
	dirt_baggy	= 1,
	dirt_joint	= 10,
	dirt_plant	= 1500,
	drill	= 3000,
	earrings1	= 100,
	earrings2	= 200,
	earrings3	= 100,
	earrings4	= 200,
	ecola	= 300,
	ecola_can	= 300,
	ephedrine	= 100,
	essence	= 500,
	fabric	= 400,
	fertilizer	= 5000,
	fertilizerx	= 750,
	fish1	= 300,
	fish2	= 400,
	fish3	= 500,
	fish4	= 800,
	fishbait = 50,
	fixkit	= 2500,
	fixtool	= 1500,
	gazbottle	= 5000,
	gold	= 600,
	green_billstrap	= 100,
	hamburger	= 300,
	handcuffs	= 300,
	handcuff_keys	= 10,
	heist_bag	= 300,
	heist_bag_e	= 1,
	heist_mask	= 100,
	heist_mask_e	= 100,
	id_card_fleeca	= 5,
	id_card_fleeca_forged	= 5,
	id_card_fleeca_real	= 5,
	id_card_secure	= 1,
	iodine	= 30,
	iron	= 500,
	keycard_casino	= 1,
	keycard_casino_temp	= 1,
	key_nightclub	= 1,
	lithium	= 5000,
	lockpick	= 10,
	lootbox_launchday	= 500,
	lootbox_starter	= 10,
	medikit	= 2000,
	meteorite	= 1,
	mg_ammo	= 15,
	middies_baggy	= 1,
	middies_plant	= 800,
	middies_seeds	= 1,
	modkit_window_tint	= 1000,
	modkit_neon	= 2500,
	modkit_body	= 2500,
	modkit_tires	= 4000,
	modkit_mechanical	= 2000,
	modkit_wiring	= 800,
	modkit_detail	= 1300,
	mustard_billstrap	= 100,
	packaged_chicken	= 1,
	packaged_plank	= 5000,
	petrol	= 500,
	petrol_raffin	= 500,
	phone	= 1,
	pistol_ammo	= 10,
	plastic	= 1,
	police_badge	= 50,
	red_billstrap	= 100,
	red_phosphorus	= 500,
	release	= 1,
	rifle_ammo	= 15,
	ring1	= 100,
	ring2	= 150,
	ring3	= 150,
	ring4	= 200,
	rolling_paper	= 1,
	scrap	= 10,
	shotgun_ammo	= 20,
	slaughtered_chicken	= 1500,
	smg_ammo	= 10,
	sprunk	= 300,
	sprunk_can	= 300,
	starter_keys	= 1,
	stone	= 350,
	surgery_ticket	= 1,
	tai_golden_ticket	= 1,
	tcg_card_launch	= 10,
	tcg_card_launch_foil	= 10,
	tequila	= 800,
	toluene	= 7200,
	valuable_scrap	= 100,
	violet_billstrap	= 100,
	vodka	= 800,
	washed_stone	= 250,
	water	= 100,
	WEAPON_ASSAULTRIFLE	= 2400,
	WEAPON_ASSAULTRIFLE_MK2	= 2600,
	WEAPON_BAT	= 1000,
	WEAPON_BULLPUPRIFLE	= 2300,
	WEAPON_BULLPUPRIFLE_MK2	= 2500,
	WEAPON_CARBINERIFLE	= 1400,
	WEAPON_COMBATMG	= 4200,
	WEAPON_COMBATMG_MK2	= 4500,
	WEAPON_COMBATPDW	= 1400,
	WEAPON_COMBATPISTOL	= 800,
	WEAPON_CROWBAR	= 3000,
	WEAPON_DAGGER	= 500,
	WEAPON_FIREEXTINGUISHER	= 3000,
	WEAPON_FLARE	= 400,
	WEAPON_FLAREGUN	= 700,
	WEAPON_FLASHLIGHT	= 500,
	WEAPON_GOLFCLUB	= 2000,
	WEAPON_GUSENBERG	= 3800,
	WEAPON_HAMMER	= 1200,
	WEAPON_HATCHET	= 1500,
	WEAPON_HEAVYPISTOL	= 1200,
	WEAPON_KNIFE	= 400,
	WEAPON_MACHETE	= 1200,
	WEAPON_MG	= 4000,
	WEAPON_MICROSMG	= 1200,
	WEAPON_MOLTOV	= 900,
	WEAPON_NIGHTSTICK	= 500,
	WEAPON_PETROLCAN	= 5000,
	WEAPON_PISTOL	= 900,
	WEAPON_PISTOL50	= 1000,
	WEAPON_PISTOL_MK2	= 800,
	WEAPON_PUMPSHOTGUN	= 1200,
	WEAPON_REVOLVER	= 1400,
	WEAPON_REVOLVER_MK2	= 1600,
	weapon_rounds_mg	= 3750,
	weapon_rounds_pistol	= 1000,
	weapon_rounds_rifle	= 3750,
	weapon_rounds_shotgun	= 2000,
	weapon_rounds_smg	= 2500,
	WEAPON_SMG	= 1400,
	WEAPON_SMG_MK2	= 1500,
	WEAPON_SNSPISTOL	= 800,
	WEAPON_SNSPISTOL_MK2	= 800,
	WEAPON_STUNGUN	= 300,
	WEAPON_SWITCHBLADE	= 300,
	WEAPON_VINTAGEPISTOL	= 1100,
	WEAPON_WRENCH	= 1200,
	weld	= 2500,
	winter_pop	= 1,
	wood	= 1,
	wool	= 1,
	yellow_billstrap	= 100,
	zebra	= 1,
	mike_lemonade = 100,
	coca_leaf = 5,
	coca_paste = 3000,
	coca_paste2 = 4000,
	coca_paste3 = 5000,
	buttermilk = 1000,
	buttermilk2 = 1000,
	buttermilk3 = 1000,
	bleach = 1000,
	cement = 10000,
	hcl = 250,
	potassium = 2500,
	sodium = 2500,
	ammonia = 1000,
	gasoline = 10000,
	gem_of_holding_5 = 1,
	gem_of_holding_10 = 1,
	gem_of_holding_15 = 1,
	tcg_card_cayo = 10,
	tcg_card_cayo_foil = 10,
	maracuya = 50,
	aguapanela = 50,
	revive_token = 10,
	swagley_bobbypin = 10,
	abel_ducky = 10,
	cassidy_necklace = 10,
	chem_sniffer = 10,
	invis_cloak = 10,
	car_key_predator = 10,
	car_key_opd = 10,
	sharkbait = 100,
	turtlebait = 250,
	shark = 5000,
	plate = 800,
	fake_plate = 800,
	real_plate = 800,
}

Config.WarehouseLimit = {
    small = 200000,
    large = 500000, 
}