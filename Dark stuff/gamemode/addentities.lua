AddEntity("Drug lab", {
	ent = "drug_lab",
	model = "models/props_lab/crematorcase.mdl",
	price = 400,
	max = 3,
	cmd = "/buydruglab",
	allowed = {TEAM_DRUG}
})

AddEntity("Money printer", {
	ent = "money_printer",
	model = "models/props_c17/consolebox01a.mdl",
	price = 1000,
	max = 2,
	cmd = "/buymoneyprinter"
})

AddEntity("Microwave", {
	ent = "microwave",
	model = "models/props/cs_office/microwave.mdl",
	price = 400,
	max = 1,
	cmd = "/buymicrowave",
	allowed = TEAM_COOK
})

AddEntity("Gun lab", {
	ent = "gunlab",
	model = "models/props_c17/TrapPropeller_Engine.mdl",
	price = 500,
	max = 1,
	cmd = "/buygunlab",
	allowed = TEAM_GUN
})
AddEntity("Topaz Printer", {
        ent = "topaz_money_printer",
        model = "models/props_lab/reciever01a.mdl",
        price = 2000,
        max = 3,
        cmd = "/buytopaz",
		customCheck = function(ply) return CLIENT or not ply:IsUserGroup("vip") end,
		CustomCheckFailMsg = "Ok, listen up! Buy VIP printers. Why? Why not!"
})
 
AddEntity("Amethyst Printer", {
        ent = "amethyst_money_printer",
        model = "models/props_lab/reciever01a.mdl",
        price = 3000,
        max = 3,
        cmd = "/buyamethyst",
		customCheck = function(ply) return CLIENT or not ply:IsUserGroup("vip") end,
		CustomCheckFailMsg = "Ok, listen up! Buy VIP printers. Why? Why not!"
})
 
AddEntity("Emerald Printer", {
        ent = "emerald_money_printer",
        model = "models/props_c17/consolebox03a.mdl",
        price = 5000,
        max = 3,
        cmd = "/buyemerald",
		customCheck = function(ply) return CLIENT or not ply:IsUserGroup("vip") end,
		CustomCheckFailMsg = "Ok, listen up! Buy VIP printers. Why? Why not!"
})
 
AddEntity("Ruby Printer", {
        ent = "ruby_money_printer",
        model = "models/props_c17/consolebox03a.mdl",
        price = 10000,
        max = 3,
        cmd = "/buyruby",
		customCheck = function(ply) return CLIENT or not ply:IsUserGroup("vip") end,
		CustomCheckFailMsg = "Ok, listen up! Buy VIP printers. Why? Why not!"
})
 
AddEntity("Sapphire Printer", {
        ent = "sapphire_money_printer",
        model = "models/props_lab/reciever01b.mdl",
        price = 14000,
        max = 3,
        cmd = "/buysapphire",
		customCheck = function(ply) return CLIENT or not ply:IsUserGroup("vip") end,
		CustomCheckFailMsg = "Ok, listen up! Buy VIP printers. Why? Why not!"
})

AddEntity("Rainbow Printer", {
        ent = "rainbowdash_money_printer",
        model = "models/props_lab/reciever01b.mdl",
        price = 20000,
        max = 3,
        cmd = "/buyrainbowdash",
		customCheck = function(ply) return CLIENT or not ply:IsUserGroup("vip") end,
		CustomCheckFailMsg = "Ok, listen up! Buy VIP printers. Why? Why not!"
})

AddEntity("Yellow Diamond Printer", {
        ent = "yellowdiamond_money_printer",
        model = "models/props_lab/reciever01b.mdl",
        price = 50000,
        max = 3,
        cmd = "/buyyellowdiamond",
		customCheck = function(ply) return CLIENT or not ply:IsUserGroup("vip") end,
		CustomCheckFailMsg = "Ok, listen up! Buy VIP printers. Why? Why not!"
})

AddEntity("The Ray Printer", {
        ent = "god_money_printer",
        model = "models/props_lab/reciever01b.mdl",
        price = 125000,	
        max = 3,
        cmd = "/buygod",
		customCheck = function(ply) return CLIENT or not ply:IsUserGroup("vip") end,
		CustomCheckFailMsg = "Ok, listen up! Buy VIP printers. Why? Why not!"
})

AddEntity("VIP Topaz Printer", {
		ent = "vip_topaz_money_printer",
		model = "models/props_lab/reciever01a.mdl",
		price = 2500,
		max = 3,
		cmd = "/buyviptopaz",
		customCheck = function(ply) return CLIENT or ply:IsUserGroup("vip") or ply:IsUserGroup("admin") or ply:IsUserGroup("superadmin") end,
		CustomCheckFailMsg = "You need to be VIP to buy this printer.",
		isVip = 1,
})

AddEntity("VIP Amethyst Printer", {
        ent = "vip_amethyst_money_printer",
        model = "models/props_lab/reciever01a.mdl",
        price = 3750,
        max = 3,
        cmd = "/buyvipamethyst",
		customCheck = function(ply) return CLIENT or ply:IsUserGroup("vip") or ply:IsUserGroup("admin") or ply:IsUserGroup("superadmin") end,
		CustomCheckFailMsg = "You need to be VIP to buy this printer.",
		isVip = 1,
})

AddEntity("VIP Emerald Printer", {
        ent = "vip_emerald_money_printer",
        model = "models/props_c17/consolebox03a.mdl",
        price = 6250,
        max = 3,
        cmd = "/buyvipemerald",
		customCheck = function(ply) return CLIENT or ply:IsUserGroup("vip") or ply:IsUserGroup("admin") or ply:IsUserGroup("superadmin") end,
		CustomCheckFailMsg = "You need to be VIP to buy this printer.",
		isVip = 1,
})
 
AddEntity("VIP Ruby Printer", {
        ent = "vip_ruby_money_printer",
        model = "models/props_c17/consolebox03a.mdl",
        price = 12500,
        max = 3,
        cmd = "/buyvipruby",
		customCheck = function(ply) return CLIENT or ply:IsUserGroup("vip") or ply:IsUserGroup("admin") or ply:IsUserGroup("superadmin") end,
		CustomCheckFailMsg = "You need to be VIP to buy this printer.",
		isVip = 1,
})
 
AddEntity("VIP Sapphire Printer", {
        ent = "vip_sapphire_money_printer",
        model = "models/props_lab/reciever01b.mdl",
        price = 17500,
        max = 3,
        cmd = "/buyvipsapphire",
		customCheck = function(ply) return CLIENT or ply:IsUserGroup("vip") or ply:IsUserGroup("admin") or ply:IsUserGroup("superadmin") end,
		CustomCheckFailMsg = "You need to be VIP to buy this printer.",
		isVip = 1,
})

AddEntity("VIP Rainbow Dash Printer", {
        ent = "vip_rainbowdash_money_printer",
        model = "models/props_lab/reciever01b.mdl",
        price = 25000,
        max = 3,
        cmd = "/buyviprainbowdash",
		customCheck = function(ply) return CLIENT or ply:IsUserGroup("vip") or ply:IsUserGroup("admin") or ply:IsUserGroup("superadmin") end,
		CustomCheckFailMsg = "You need to be VIP to buy this printer.",
		isVip = 1,
})

AddEntity("VIP Yellow Diamond Printer", {
        ent = "vip_yellowdiamond_money_printer",
        model = "models/props_lab/reciever01b.mdl",
        price = 62500,
        max = 3,
        cmd = "/buyvipyellowdiamond",
		customCheck = function(ply) return CLIENT or ply:IsUserGroup("vip") or ply:IsUserGroup("admin") or ply:IsUserGroup("superadmin") end,
		CustomCheckFailMsg = "You need to be VIP to buy this printer.",
		isVip = 1,
})

AddEntity("VIP God Printer", {
        ent = "vip_god_money_printer",
        model = "models/props_lab/reciever01b.mdl",
        price = 156250,	
        max = 3,
        cmd = "/buyvipgod",
		customCheck = function(ply) return CLIENT or ply:IsUserGroup("vip") or ply:IsUserGroup("admin") or ply:IsUserGroup("superadmin") end,
		CustomCheckFailMsg = "You need to be VIP to buy this printer.",
		isVip = 1,
})

AddEntity("VIP Melon Printer", {
		ent = "vip_melon_printer",
		model = "models/props_junk/watermelon01.mdl",
		price = 1250000,
		max = 3,
		cmd = "/buyvipmelonprinter",
		customCheck = function(ply) return CLIENT or ply:IsUserGroup("vip") or ply:IsUserGroup("admin") or ply:IsUserGroup("superadmin") end,
		CustomCheckFailMsg = "You need to be VIP to buy this printer.",
		isVip = 1,
})

-- ADD CUSTOM SHIPMENTS HERE(next line):
AddCustomShipment("M249", "models/weapons/w_mach_m249para.mdl", "weapon_mad_m249", 6000, 10, false, nil, false, {TEAM_GUN})
AddCustomShipment("Galil", "models/weapons/w_rif_galil.mdl", "weapon_mad_galil", 4000, 10, false, nil, false, {TEAM_GUN})
AddCustomShipment("AK47", "models/weapons/w_rif_ak47.mdl", "weapon_mad_ak47", 4000, 10, false, nil, false, {TEAM_GUN})
AddCustomShipment("M4A1", "models/weapons/w_rif_m4a1.mdl", "weapon_mad_m4", 3900, 10, false, nil, false, {TEAM_GUN})
AddCustomShipment("Famas", "models/weapons/w_rif_famas.mdl", "weapon_mad_famas", 3900, 10, false, nil, false, {TEAM_GUN})
AddCustomShipment("AWP", "models/weapons/w_snip_awp.mdl", "weapon_mad_awp", 5000, 10, false, nil, false, {TEAM_MARKET})
AddCustomShipment("Scout", "models/weapons/w_snip_scout.mdl", "weapon_mad_scout", 4500, 10, false, nil, false, {TEAM_GUN})
AddCustomShipment("Steyr Aug", "models/weapons/w_rif_aug.mdl", "weapon_mad_aug", 4000, 10, false, nil, false, {TEAM_GUN})
AddCustomShipment("SG552", "models/weapons/w_rif_sg552.mdl", "weapon_mad_sg552", 4000, 10, false, nil, false, {TEAM_GUN})
AddCustomShipment("G3SG1", "models/weapons/w_snip_g3sg1.mdl", "weapon_mad_g3", 4000, 10, false, nil, false, {TEAM_GUN})
AddCustomShipment("SG550", "models/weapons/w_snip_sg550.mdl", "weapon_mad_sg550", 4000, 10, false, nil, false, {TEAM_GUN})
AddCustomShipment("UMP45", "models/weapons/w_smg_ump45.mdl", "weapon_mad_ump", 3600, 10, false, nil, false, {TEAM_GUN})
AddCustomShipment("P90", "models/weapons/w_smg_p90.mdl", "weapon_mad_p90", 3500, 10, false, nil, false, {TEAM_GUN})
AddCustomShipment("TMP", "models/weapons/w_smg_tmp.mdl", "weapon_mad_tmp", 3500, 10, false, nil, false, {TEAM_GUN})
AddCustomShipment("MP5", "models/weapons/w_smg_mp5.mdl", "weapon_mad_mp5", 3200, 10, false, nil, false, {TEAM_GUN})
AddCustomShipment("Mac-10", "models/weapons/w_smg_mac10.mdl", "weapon_mad_mac10", 3000, 10, false, nil, false, {TEAM_GUN})
AddCustomShipment("AutoShotgun", "models/weapons/w_shot_xm1014.mdl", "weapon_mad_xm1014", 3000, 10, false, nil, false, {TEAM_MARKET, TEAM_GUN})
AddCustomShipment("Shotgun", "models/weapons/w_shot_m3super90.mdl", "weapon_mad_m3", 2500, 10, false, nil, false, {TEAM_GUN})
AddCustomShipment("Dual Elites", "models/weapons/w_pist_elite_dropped.mdl", "weapon_mad_dual", 2300, 10, false, nil, false, {TEAM_GUN})
AddCustomShipment("Deagle", "models/weapons/w_pist_deagle.mdl", "weapon_mad_deagle", 2300, 10, false, nil, false, {TEAM_GUN})
AddCustomShipment("USP", "models/weapons/w_pist_usp.mdl", "weapon_mad_usp", 2200, 10, false, nil, false, {TEAM_GUN})
AddCustomShipment("P228", "models/weapons/w_pist_p228.mdl", "weapon_mad_p228", 2100, 10, true, 600, false, {TEAM_GUN})
AddCustomShipment("Five-Seven", "models/weapons/w_pist_fiveseven.mdl", "weapon_mad_57", 1900, 10, false, nil, false, {TEAM_GUN})
AddCustomShipment("Knife", "models/weapons/w_knife_t.mdl", "weapon_mad_knife", 1400, 10, true, 800, false, {TEAM_GUN})
AddCustomShipment("Health", "models/items/w_medkit.mdl", "item_healthkit", 5000, 10, true, 1000, false, {TEAM_GUN})
AddCustomShipment("Armor", "models/Items/battery.mdl", "item_battery", 4000, 10, false, 100, false, {TEAM_GUN})
AddCustomShipment("Beer", "models/drug_mod/alcohol_can.mdl", "durgz_alcohol", 400, 10, false, 50, false, {TEAM_DRUG})
AddCustomShipment("Weed", "models/katharsmodels/contraband/zak_wiet/zak_wiet.mdl", "durgz_weed", 1900, 10, false, 200, false, {TEAM_DRUG})
AddCustomShipment("Cigarettes", "models/boxopencigshib.mdl", "durgz_cigarette", 200, 10, false, 30, false, {TEAM_DRUG})
AddCustomShipment("Heroine", "models/katharsmodels/syringe_out/syringe_out.mdl", "durgz_heroine", 900, 10, false, 100, false, {TEAM_DRUG})
AddCustomShipment("LSD", "models/smile/smile.mdl", "durgz_lsd", 2400, 10, false, 250, false, {TEAM_DRUG})
AddCustomShipment("Shrooms", "models/ipha/mushroom_small.mdl", "durgz_mushroom", 2300, 10,false, 240, false, {TEAM_DRUG})
AddCustomShipment("Water", "models/drug_mod/the_bottle_of_water.mdl", "durgz_water", 250, 10, false, 30, false, {TEAM_DRUG})
AddCustomShipment("Asprin", "models/jaanus/aspbtl.mdl", "durgz_asprin", 400, 10, false, 50, false, {TEAM_DRUG})
AddCustomShipment("Grenade", "models/weapons/w_eq_fraggrenade.mdl", "weapon_mad_grenade", 15000, 3, false, nil, false, {TEAM_MARKET})
AddCustomShipment("KeypadCracker", "models/weapons/w_c4.mdl", "keypad_cracker", 4000, 10, false, 0, false, {TEAM_MARKET})
AddCustomShipment("Lock Pick", "models/weapons/w_crowbar.mdl", "lockpick", 500, 10, false, 200, false, {TEAM_MARKET})
AddCustomShipment("MedicKit", "models/weapons/w_c4.mdl", "med_kit", 5500, 10, false, 0, false, {TEAM_MARKET})
AddCustomShipment("Magic Stick", "models/weapons/w_stunbaton.mdl", "unarrest_stick", 750, 10, false, 80, false, {TEAM_MARKET})
AddCustomVehicle("chargersrt8tdm", "models/tdmcars/chargersrt8.mdl" , 30000, {TEAM_CAR})
AddCustomVehicle("dodgeramtdm", "models/tdmcars/dodgeram.mdl" , 30000, {TEAM_CAR})
AddCustomVehicle("bmwm5e60tdm", "models/tdmcars/bmwm5e60.mdl" , 10000, {TEAM_CAR})
AddCustomVehicle("507tdm", "models/tdmcars/507.mdl" , 9000, {TEAM_CAR})
AddEntity("Nuclear Money printer", "nuclear_money_printer", "models/props_lab/reciever01a.mdl", 8000, 1, "/buymoneyprinter1")