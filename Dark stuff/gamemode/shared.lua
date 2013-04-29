/*--------------------------------------------------------
Default teams. If you make a team above the citizen team, people will spawn with that team!
--------------------------------------------------------*/
TEAM_CITIZEN = AddExtraTeam("Citizen", {
	color = Color(20, 150, 20, 255),
	model = {
		"models/player/Group01/Female_01.mdl",
		"models/player/Group01/Female_02.mdl",
		"models/player/Group01/Female_03.mdl",
		"models/player/Group01/Female_04.mdl",
		"models/player/Group01/Female_06.mdl",
		"models/player/group01/male_01.mdl",
		"models/player/Group01/Male_02.mdl",
		"models/player/Group01/male_03.mdl",
		"models/player/Group01/Male_04.mdl",
		"models/player/Group01/Male_05.mdl",
		"models/player/Group01/Male_06.mdl",
		"models/player/Group01/Male_07.mdl",
		"models/player/Group01/Male_08.mdl",
		"models/player/Group01/Male_09.mdl"
	},
	description = [[The Citizen is the most basic level of society you can hold
		besides being a hobo.
		You have no specific role in city life.]],
	weapons = {},
	command = "citizen",
	max = 0,
	salary = 45,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false
})

TEAM_POLICE = AddExtraTeam("Civil Protection", {
	color = Color(25, 25, 170, 255),
	model = "models/player/police.mdl",
	description = [[The protector of every citizen that lives in the city .
		You have the power to arrest criminals and protect innocents.
		Hit them with your arrest baton to put them in jail
		Bash them with a stunstick and they might learn better than to disobey
		the law.
		The Battering Ram can break down the door of a criminal with a warrant
		for his/her arrest.
		The Battering Ram can also unfreeze frozen props(if enabled).
		Type /wanted <name> to alert the public to this criminal
		OR go to tab and warrant someone by clicking the warrant button]],
	weapons = {"arrest_stick", "unarrest_stick", "weapon_glock2", "stunstick", "door_ram", "weaponchecker"},
	command = "cp",
	max = 4,
	salary = 65,
	admin = 0,
	vote = true,
	hasLicense = true,
	help = LANGUAGE.cophelp
})

TEAM_GANG = AddExtraTeam("Mexican Mafia", {
	color = Color(75, 75, 75, 255),
	model = {
		"models/player/Group03/Female_01.mdl",
		"models/player/Group03/Female_02.mdl",
		"models/player/Group03/Female_03.mdl",
		"models/player/Group03/Female_04.mdl",
		"models/player/Group03/Female_06.mdl",
		"models/player/group03/male_01.mdl",
		"models/player/Group03/Male_02.mdl",
		"models/player/Group03/male_03.mdl",
		"models/player/Group03/Male_04.mdl",
		"models/player/Group03/Male_05.mdl",
		"models/player/Group03/Male_06.mdl",
		"models/player/Group03/Male_07.mdl",
		"models/player/Group03/Male_08.mdl",
		"models/player/Group03/Male_09.mdl"},
	description = [[The lowest person of crime.
		A gangster generally works for the Mobboss who runs the crime family.
		The Mobboss sets your agenda and you follow it or you might be punished.]],
	weapons = {"lockpick"},
	command = "gangster",
	max = 3,
	salary = 45,
	admin = 0,
	vote = false,
	hasLicense = false
})

TEAM_MOB = AddExtraTeam("Mexican Leader", {
	color = Color(25, 25, 25, 255),
	model = "models/player/gman_high.mdl",
	description = [[The Mobboss is the boss of the criminals in the city.
		With his power he coordinates the gangsters and forms an efficent crime
		organization.
		He has the ability to break into houses by using a lockpick.
		The Mobboss also can unarrest you.]],
	weapons = {"lockpick", "unarrest_stick"},
	command = "mobboss",
	max = 1,
	salary = 60,
	admin = 0,
	vote = false,
	hasLicense = false,
	help = LANGUAGE.bosshelp
})

TEAM_GUN = AddExtraTeam("Gun Dealer", {
	color = Color(255, 140, 0, 255),
	model = "models/player/monk.mdl",
	description = [[A gun dealer is the only person who can sell guns to other
		people.
		However, make sure you aren't caught selling guns that are illegal to
		the public.
		/Buyshipment <name> to Buy a  weapon shipment
		/Buygunlab to Buy a gunlab that spawns P228 pistols]],
	weapons = {},
	command = "gundealer",
	max = 2,
	salary = 45,
	admin = 0,
	vote = false,
	hasLicense = false
})

TEAM_MEDIC = AddExtraTeam("Medic", {
	color = Color(47, 79, 79, 255),
	model = "models/player/kleiner.mdl",
	description = [[With your medical knowledge,
		you heal players to proper
		health.
		Without a medic, people can not be healed.
		Left click with the Medical Kit to heal other players.
		Right click with the Medical Kit to heal yourself.]],
	weapons = {"med_kit"},
	command = "medic",
	max = 3,
	salary = 45,
	admin = 0,
	vote = false,
	hasLicense = false
})

TEAM_COOK = AddExtraTeam("Cook", {
	color = Color(238, 99, 99, 255),
	model = "models/player/mossman.mdl",
	description = [[As a cook, it is your responsibility to feed the other members
		of your city.
		You can spawn a microwave and sell the food you make:
		/Buymicrowave]],
	weapons = {},
	command = "cook",
	max = 2,
	salary = 45,
	admin = 0,
	vote = false,
	hasLicense = false
})

TEAM_CHIEF = AddExtraTeam("Civil Protection Chief", {
	color = Color(20, 20, 255, 255),
	model = "models/player/combine_soldier_prisonguard.mdl",
	description = [[The Chief is the leader of the Civil Protection unit.
		Coordinate the police forces to bring law to the city
		Hit them with arrest baton to put them in jail
		Bash them with a stunstick and they might learn better than to
		disobey the law.
		The Battering Ram can break down the door of a criminal with a
		warrant for his/her arrest.
		Type /wanted <name> to alert the public to this criminal
		Type /jailpos to set the Jail Position]],
	weapons = {"arrest_stick", "unarrest_stick", "weapon_deagle2", "stunstick", "door_ram", "weaponchecker"},
	command = "chief",
	max = 1,
	salary = 75,
	admin = 0,
	vote = false,
	hasLicense = true,
	NeedToChangeFrom = TEAM_POLICE,
	help = LANGUAGE.cophelp
})

TEAM_MAYOR = AddExtraTeam("Mayor", {
	color = Color(150, 20, 20, 255),
	model = "models/player/breen.mdl",
	description = [[The Mayor of the city creates laws to serve the greater good
	of the people.
	If you are the mayor you may create and accept warrants.
	Type /wanted <name>  to warrant a player
	Type /jailpos to set the Jail Position
	Type /lockdown initiate a lockdown of the city.
	Everyone must be inside during a lockdown.
	The cops patrol the area
	/unlockdown to end a lockdown]],
	weapons = {},
	command = "mayor",
	max = 1,
	salary = 85,
	admin = 0,
	vote = true,
	hasLicense = false,
	help = LANGUAGE.mayorhelp
})

TEAM_HOBO = AddExtraTeam("Hobo", {
	color = Color(80, 45, 0, 255),
	model = "models/player/corpse1.mdl",
	description = [[The lowest member of society. All people see you laugh.
		You have no home.
		Beg for your food and money
		Sing for everyone who passes to get money
		Make your own wooden home somewhere in a corner or
		outside someone else's door]],
	weapons = {"weapon_bugbait"},
	command = "hobo",
	max = 5,
	salary = 0,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false
})

//ADD CUSTOM TEAMS UNDER THIS LINE:
TEAM_SWAT = AddExtraTeam("S.W.A.T", Color(0,204,255,255), "models/player/swat.mdl", [[S.W.A.T is some who come in,
 when the police is having trouble.]], {"weapon_mad_57", "weapon_mad_p90", "arrest_stick"}, "swat", 2, 70, 0, false, true, TEAM_POLICE)
TEAM_DRUG = AddExtraTeam("Drug Dealer", Color(153, 102, 153, 255), "models/player/group01/Male_07.mdl", [[Drug dealer . you know what this mean.]], {}, "drug", 3, 50, 0, false, false, false)
TEAM_SS = AddExtraTeam("Secret Service", Color(205,0,0), "models/player/Barney.mdl", [[Secret Service are some people,
 that protect the mayor!]], {"weapon_mad_m4", "weapon_mad_57", "weapon_mad_knife"}, "secretservice", 2, 70, 0, true, true)
TEAM_BODY = AddExtraTeam("Body Guard", Color(60,0,100,255), "models/player/odessa.mdl", [[You must guard/protect those who hire you. 
Do not use stunstick and usp for personal use.
Weapons that you spawn with must only be used, 
against those who try to harm your employer.]], {"weapon_mad_p228", "item_ammo_pistol", "Stunstick"}, "bodyguard", 2, 50, 0, false)
TEAM_ASG = AddExtraTeam("SG Admin on Duty", Color(255,0,0), "models/player/combine_super_soldier.mdl", [[S ADMIN ]], 
{"weapon_mad_grenade", "weapon_mad_m3", "weapon_mad_awp", "item_ammo_pistol", "item_ammo_rifle", "item_ammo_shotgun"}, "avg", 5, 100, 2, false, true)
TEAM_Thief = AddExtraTeam("Thief", Color(25, 25, 25, 255), "models/player/arctic.mdl", [[Break into people's house for money.]], {"lockpick", "keypad_cracker"}, "thief", 2, 50, 0, false)
TEAM_hitman = AddExtraTeam("Hitman", Color(100,20,0,255), "models/player/leet.mdl", [[You get paid to take out "hits" or in
	other words, get to kill people. You MUST at least
	get paid $1000 and must then type: /advert Hit Accepted
	when first getting the hit, then: /advert Hit Completed
	when you have completed the hit! Paying someone to
	pay you is not allowed!
]], {"lockpick", "weapon_mad_p228", "item_ammo_pistol_large"}, "hitman", 2, 50, 0, false)
TEAM_GMEDIC = AddExtraTeam("Gangster Medic", Color(51, 51, 51, 255), "models/player/Group01/Male_06.mdl", [[A gangster medic heal your fellas]], {"med_kit","lockpick"}, "gmedic", 5, 45, 0, false, false, false)
TEAM_RUNNER = AddExtraTeam("FreeRunner", Color(255, 255, 51, 255), "models/player/Group03/Male_07.mdl", [[Do parkour everywhere!
Raid? Yes.]], {"climb_swep2"}, "runner", 5, 45, 0, false, false, false)
TEAM_HEADCRAB = AddExtraTeam("HeadCrab Gang", Color(153, 102, 0, 255), "models/headcrabclassic.mdl", [[You are a hedcrab your choise is be a pet. or be a
wild pet This class isnt allowed to have gunThis class can be jailed by a cop]], {"weapon_mad_knife"}, "headcrab", 2, 0, 0, false, false, false)
TEAM_SPIDER = AddExtraTeam("Spiderman", Color(51, 0, 255, 255), "models/player/group01/Male_05.mdl", [[Spiderman !]], {"spiderman\'s_swep","unarrest_stick"}, "spider", 1, 50, 0, true, true, false)
TEAM_MARKET = AddExtraTeam("Black Market Dealer", Color(255, 204, 102, 255), "models/player/soldier_stripped.mdl", [[You sell ilegal stuff you must beware and dint get
caugth]], {}, "market", 3, 20, 0, false, false, false)
TEAM_CAR = AddExtraTeam("Car Dealer", Color(0, 255, 255, 255), "models/player/eli.mdl", [[Sell cars and get some profit]], {}, "car", 2, 45, 0, false, false, false)
TEAM_DEMON = AddExtraTeam("Sewer Demon", {
	color = Color(255, 0, 0, 255),
	model = {
		"models/player/charple.mdl",
		"models/player/zombie_classic.mdl",
		"models/player/zombie_fast.mdl"
	},
	description = [[You are the demon that lurks in the sewers. 
	(AND YOU MUST STAY IN THE SEWERS!)
	You wait for unsuspecting fools, and you 
	ravage them with your crowbar.]],
	weapons = {"weapon_crowbar"},
	command = "lakedemon",
	max = 4,
	salary = 20,
	admin = 0,
	vote = true,
	hasLicense = false,
})
TEAM_MELON = AddExtraTeam("A Melon", {
	color = Color(152, 255, 152, 255),
	model = "models/props_junk/watermelon01.mdl",
	description = [[This is a VIP and admin only job.
	You are a melon. Do what a melon would do. Find the inner fucking melon
	within you, bro. :P]],
	weapons = {},
	command = "melon",
	max = 4,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = true,
		customCheck = function(ply) return CLIENT or ply:IsUserGroup("superadmin") or ply:IsUserGroup("admin") or ply:IsUserGroup("vip") or ply:IsUserGroup("owner") or ply:IsUserGroup("applyadmin") end,
        CustomCheckFailMsg = "You need to be VIP to become a melon. LOLOLOLOLOL :3",
		isVIP = 1
})
TEAM_HUNTER = AddExtraTeam("Sewer Demon Hunter", { 
color = Color(100, 0, 0, 255),
 model = "models/player/guerilla.mdl",
 description = [[This is a VIP and admin only job.
You are a Lake Demon Hunter. You use your trusty
shotgun to kick the asses of sewer demons. Good to
fight them off, since they can only go close ranged.]], 
 weapons = {"weapon_mad_m3", "weapon_mad_fists"},
 command = "demonhunter", 
 max = 3, 
 salary = 40, 
 admin = 0, 
 vote = false, 
 hasLicense = true,
 customCheck = function(ply) return CLIENT or ply:IsUserGroup("vip") or ply:IsUserGroup("admin") or ply:IsUserGroup("superadmin") or ply:IsUserGroup("owner") end,
        CustomCheckFailMsg = "You need to be VIP to become a Lake Demon Hunter.",
		 isVIP = 1
})
TEAM_EXDRUG = AddExtraTeam("Extreme Drug Dealer", {
	color = Color(0, 255, 0, 255),
	model = "models/player/combine_soldier.mdl",
	description = [[This is a VIP and admin only job. You sell extreme drugs
	that have a significently larger effect than normal drugs do. 
	Although they are more expensive. T
	his job is also nonfunctioning, soon to be fixed!]],
	weapons = {"weapon_mad_m4", "weapon_mad_fists"},
	command = "extremedrugdealer",
	max = 3,
	salary = 40,
	admin = 0,
	vote = false,
	hasLicense = false,
	customCheck = function(ply) return CLIENT or ply:IsUserGroup("vip") or ply:IsUserGroup("admin") or ply:IsUserGroup("superadmin") or ply:IsUserGroup("owner") end,
    CustomCheckFailMsg = "You need to be VIP to become an Extreme Drug Dealer",
	 isVIP = 1
})
TEAM_EXPLODE = AddExtraTeam("Explosions Dealer", {
	color = Color(255, 0, 0, 255),
	model = "models/player/guerilla.mdl",
	description = [[This is a VIP and admin only job.
	An explosives dealer is the only person who can sell explosives to other
	people. No explosives are illegal, so feel free to sell openly!]],
	weapons = {"weapon_mad_fists"},
	command = "explode",
	max = 3,
	salary = 40,
	admin = 0,
	vote = false,
	hasLicense = true,
	customCheck = function(ply) return CLIENT or ply:IsUserGroup("vip") or ply:IsUserGroup("admin") or ply:IsUserGroup("superadmin") or ply:IsUserGroup("weezy") or ply:IsUserGroup("shining") end,
    CustomCheckFailMsg = "You need to be VIP to become an Explosives Dealer.",
	 isVIP = 1
})
TEAM_MIB = AddExtraTeam("Man in Black", {
	color = Color(0, 0, 0, 255),
	model = "models/player/breen.mdl",
	description = [[This job is VIP and admin only. 
	Make your playermodel color black to use this job.
	You spawn with an ak47, a knife, and flashbangs to throw so that people won't remember you.
	Flashbangs best used after saying "You saw nothing". or something cool like that.]],
	weapons = {"weapon_mad_p90", "weapon_mad_knife", "weapon_real_cs_flash", "weapon_mad_fists"},
	command = "maninblack",
	max = 1,
	salary = 40,
	admin = 0,
	vote = false,
	hasLicense = true,
	customCheck = function(ply) return CLIENT or ply:IsUserGroup("vip") or ply:IsUserGroup("admin") or ply:IsUserGroup("superadmin") or ply:IsUserGroup("weezy") or ply:IsUserGroup("shining") end,
        CustomCheckFailMsg = "You need to be VIP to become a Man in Black.",
		 isVIP = 1
})
TEAM_CASINO = AddExtraTeam("Casino Owner", {
	color = Color(205, 133, 63, 255),
	model = "models/player/hostage/hostage_02.mdl",
	description = [[You are a Casino Owner. You are to get a Casino, 
	and use the chat command !r to have people 
	gamble at your casino. You are the only job that is to 
	create games with the !r command. 
	For instance, roll a 7, and you win double of what you bet.
	Use /advert to advertise your casino, 
	and what your game is. May it be Lucky 7's, or whatever :).
	Do not scam! Scamming is a demoteable, and even BANNABLE offense.]],
	weapons = {"weapon_mad_fists"},
	command = "casinoowner",
	max = 1,
	salary = 40,
	admin = 0,
	vote = false,
	hasLicense = false,
})
TEAM_VIPHITMAN = AddExtraTeam("VIP Hitman", {
	color = Color(0, 0, 0, 255),
	model = "models/player/leet.mdl",
	description = [[This job is VIP and admin only.
	You get paid to take out "hits" or in
	other words, get to kill people. You MUST at least
	get paid $5000 and must then type: /advert Hit Accepted
	when first getting the hit, then: /advert Hit Completed
	when you have completed the hit! Paying someone to
	pay you is not allowed! This version of the hitman job
	comes with a very nice loadout of snipers and automatic
	weapons, and a nice looking Agent Smith playermodel.
	You also spawn with the notoriously overpowered
	Silenced Sniper.]],
	weapons = {"weapon_mad_incendiary", "weapon_mad_awp", "weapon_mad_galil"},
	command = "viphitman",
	max = 2,
	salary = 60,
	admin = 0,
	vote = false,
	hasLicense = false,
	customCheck = function(ply) return CLIENT or ply:IsUserGroup("vip") or ply:IsUserGroup("admin") or ply:IsUserGroup("superadmin") or ply:IsUserGroup("owner") end,
        CustomCheckFailMsg = "You need to be VIP to become a VIP Hitman.",
		 isVIP = 1
})
TEAM_SING = AddExtraTeam("Singer", {
         color = Color(0, 255, 0, 255),
        model = {
		"models/player/Group01/Female_01.mdl",
		"models/player/Group01/Female_02.mdl",
		"models/player/Group01/Female_03.mdl",
		"models/player/Group01/Female_04.mdl",
		"models/player/Group01/Female_06.mdl",
		"models/player/group01/male_01.mdl",
		"models/player/Group01/Male_02.mdl",
		"models/player/Group01/male_03.mdl",
		"models/player/Group01/Male_04.mdl",
		"models/player/Group01/Male_05.mdl",
		"models/player/Group01/Male_06.mdl",
		"models/player/Group01/Male_07.mdl",
		"models/player/Group01/Male_08.mdl",
		"models/player/Group01/Male_09.mdl"
	},
        description = [[You are a singer. 
		Create an area, advertise where you are, and sing.
		(Important Notice: You must have a good quality microphone.)]],
        weapons = {"weapon_mad_fists"},
        command = "singer",
        max = 2,
        salary = 40,
        admin = 0,
        vote = false,
        hasLicense = false
})
TEAM_PAP = AddExtraTeam("Paparazzi", {
	color = Color(0, 102, 102, 255),
	model = {
		"models/player/Group01/Female_01.mdl",
		"models/player/Group01/Female_02.mdl",
		"models/player/Group01/Female_03.mdl",
		"models/player/Group01/Female_04.mdl",
		"models/player/Group01/Female_06.mdl",
		"models/player/group01/male_01.mdl",
		"models/player/Group01/Male_02.mdl",
		"models/player/Group01/male_03.mdl",
		"models/player/Group01/Male_04.mdl",
		"models/player/Group01/Male_05.mdl",
		"models/player/Group01/Male_06.mdl",
		"models/player/Group01/Male_07.mdl",
		"models/player/Group01/Male_08.mdl",
		"models/player/Group01/Male_09.mdl"
	},
	description = [[You are a Paparazzi. 
	People pay you to follow them around with a camera
	and take screenshots of them. If you are NOT paid,
	do not take pictures of anybody. If you are told to
	stop, then you should stop. If you abuse the job, you
	will be demoted. I have a feeling this job will be
	abused, but I'm going to give it a chance. Please
	do not ruin this job for everyone by abusing it <3]],
	weapons = {"weapon_mad_fists"},
	command = "paparazzi",
	max = 1,
	salary = 30,
	admin = 0,
	vote = false,
	hasLicense = false
})
TEAM_PGUN = AddExtraTeam("Premium Gun Dealer", {
	color = Color(0, 128, 255, 255),
	model = "models/player/monk.mdl",
	description = [[This job is VIP and admin only.
	A gun dealer is the only person who can sell guns to other
	people. No guns are illegal,
	so feel free to sell openly! 
	The premium gundealer sells 
	shotguns, knives, assault rifles, snipers, and M249 SAW's,
	unlike the regular gundealer who sells just pistols and SMG's. 
	You also spawn with an AK47 to defend yourself.]],
	weapons = {"weapon_mad_deagle"},
	command = "premiumgundealer",
	max = 3,
	salary = 1350,
	admin = 0,
	vote = false,
	hasLicense = true,
	customCheck = function(ply) return CLIENT or ply:IsUserGroup("vip") or ply:IsUserGroup("admin") or ply:IsUserGroup("superadmin") or ply:IsUserGroup("owner") end,
    CustomCheckFailMsg = "You need to be VIP to become a Premium Gun Dealer.",
	 isVIP = 1
})
TEAM_CHINA = AddExtraTeam("Chinese Mafia", {
	color = Color(255, 0, 0, 255),
	model = {
		"models/player/Group03/Female_01.mdl",
		"models/player/Group03/Female_02.mdl",
		"models/player/Group03/Female_03.mdl",
		"models/player/Group03/Female_04.mdl",
		"models/player/Group03/Female_06.mdl",
		"models/player/group03/male_01.mdl",
		"models/player/Group03/Male_02.mdl",
		"models/player/Group03/male_03.mdl",
		"models/player/Group03/Male_04.mdl",
		"models/player/Group03/Male_05.mdl",
		"models/player/Group03/Male_06.mdl",
		"models/player/Group03/Male_07.mdl",
		"models/player/Group03/Male_08.mdl",
		"models/player/Group03/Male_09.mdl"},
	description = [[A Blood works for the Blood Leader who runs the Blood family.
		The Blood leader sets your agenda and you follow it or you might be punished.]],
	weapons = {"lockpick"},
	command = "china",
	max = 6,
	salary = 45,
	admin = 0,
	vote = false,
	hasLicense = false
})
/*
--------------------------------------------------------
HOW TO MAKE A DOOR GROUP
--------------------------------------------------------
AddDoorGroup("NAME OF THE GROUP HERE, you see this when looking at a door", Team1, Team2, team3, team4, etc.)

WARNING: THE DOOR GROUPS HAVE TO BE UNDER THE TEAMS IN SHARED.LUA. IF THEY ARE NOT, IT MIGHT MUCK UP!


The default door groups, can also be used as examples:
*/
AddDoorGroup("Cops and Mayor only", TEAM_CHIEF, TEAM_POLICE, TEAM_MAYOR)
AddDoorGroup("Gundealer only", TEAM_GUN)


/*
--------------------------------------------------------
HOW TO MAKE AN AGENDA
--------------------------------------------------------
AddAgenda(Title of the agenda, Manager (who edits it), Listeners (the ones who just see and follow the agenda))

WARNING: THE AGENDAS HAVE TO BE UNDER THE TEAMS IN SHARED.LUA. IF THEY ARE NOT, IT MIGHT MUCK UP!

The default agenda's, can also be used as examples:
*/
AddAgenda("Gangster's agenda", TEAM_MOB, {TEAM_GANG})
AddAgenda("Police agenda", TEAM_MAYOR, {TEAM_CHIEF, TEAM_POLICE})


/*
---------------------------------------------------------------------------
HOW TO MAKE A GROUP CHAT
---------------------------------------------------------------------------
Pick one!
GAMEMODE:AddGroupChat(List of team variables separated by comma)

or

GAMEMODE:AddGroupChat(a function with ply as argument that returns whether a random player is in one chat group)
This one is for people who know how to script Lua.

*/
GM:AddGroupChat(function(ply) return ply:IsCP() end)
GM:AddGroupChat(TEAM_MOB, TEAM_GANG)

/*---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------*/
GM.CivilProtection = {
	[TEAM_POLICE] = true,
	[TEAM_CHIEF] = true,
	[TEAM_MAYOR] = true,
}