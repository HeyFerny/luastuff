/*---------------------------------------------------------------------------
HUD ConVars
---------------------------------------------------------------------------*/
local ConVars = {}
local HUDWidth
local HUDHeight

CreateClientConVar("weaponhud", 0, true, false)

local function ReloadConVars()
	ConVars = {
		background = {0,0,0,100},
		Healthbackground = {0,0,0,200},
		Healthforeground = {140,0,0,180},
		HealthText = {255,255,255,200},
		Job1 = {0,0,150,200},
		Job2 = {0,0,0,255},
		salary1 = {0,150,0,200},
		salary2 = {0,0,0,255}
	}

	for name, Colour in pairs(ConVars) do
		ConVars[name] = {}
		for num, rgb in SortedPairs(Colour) do
			local CVar = GetConVar(name..num) or CreateClientConVar(name..num, rgb, true, false)
			table.insert(ConVars[name], CVar:GetInt())

			if not cvars.GetConVarCallbacks(name..num, false) then
				cvars.AddChangeCallback(name..num, function() timer.Simple(0,ReloadConVars) end)
			end
		end
		ConVars[name] = Color(unpack(ConVars[name]))
	end


	HUDWidth = (GetConVar("HudW") or  CreateClientConVar("HudW", 240, true, false)):GetInt()
	HUDHeight = (GetConVar("HudH") or CreateClientConVar("HudH", 115, true, false)):GetInt()

	if not cvars.GetConVarCallbacks("HudW", false) and not cvars.GetConVarCallbacks("HudH", false) then
		cvars.AddChangeCallback("HudW", function() timer.Simple(0,ReloadConVars) end)
		cvars.AddChangeCallback("HudH", function() timer.Simple(0,ReloadConVars) end)
	end
end
ReloadConVars()

local function formatNumber(n)
	n = tonumber(n)
	if (!n) then
		return 0
	end
	if n >= 1e14 then return tostring(n) end
    n = tostring(n)
    sep = sep or ","
    local dp = string.find(n, "%.") or #n+1
	for i=dp-4, 1, -3 do
		n = n:sub(1, i) .. sep .. n:sub(i+1)
    end
    return n
end


local Scrw, Scrh, RelativeX, RelativeY
/*---------------------------------------------------------------------------
HUD Seperate Elements
---------------------------------------------------------------------------*/
local function DrawInfo()
	LocalPlayer().DarkRPVars = LocalPlayer().DarkRPVars or {}
	local Salary = 	LANGUAGE.salary .. CUR .. (LocalPlayer().DarkRPVars.salary or 0)

	local JobWallet =
	LANGUAGE.job .. (LocalPlayer().DarkRPVars.job or "") .. "\n"..
	LANGUAGE.wallet .. CUR .. (formatNumber(LocalPlayer().DarkRPVars.money) or 0)

	local wep = LocalPlayer( ):GetActiveWeapon( );

	if IsValid(wep) and GAMEMODE.Config.weaponhud then
        local name = wep:GetPrintName();
		draw.DrawText("Weapon: "..name, "UiBold", RelativeX + 5, RelativeY - HUDHeight - 18, Color(255, 255, 255, 255), 0)
	end
end

local Page = Material("icon16/page_white_text.png")
local function GunLicense()
	if LocalPlayer().DarkRPVars.HasGunlicense then
		surface.SetMaterial(Page)
		surface.SetDrawColor(255, 255, 255, 255)
		surface.DrawTexturedRect(RelativeX + HUDWidth, ScrH() - 34, 32, 32)
	end
end

local function Agenda()
	local DrawAgenda, AgendaManager = DarkRPAgendas[LocalPlayer():Team()], LocalPlayer():Team()
	if not DrawAgenda then
		for k,v in pairs(DarkRPAgendas) do
			if table.HasValue(v.Listeners or {}, LocalPlayer():Team()) then
				DrawAgenda, AgendaManager = DarkRPAgendas[k], k
				break
			end
		end
	end
	if DrawAgenda then
		draw.RoundedBox(10, 10, ScrH() - 120, 460, 110, Color(0, 0, 0, 155))
		draw.RoundedBox(10, 12, ScrH() - 122, 456, 106, Color(51, 58, 51,100))
		draw.RoundedBox(10, 12, ScrH() - 122, 456, 20, Color(0, 0, 70, 100))

		draw.DrawText(DrawAgenda.Title, "DarkRPHUD1", 20, ScrH() - 120, Color(255,0,0,255),0)

		local AgendaText = ""
		for k,v in pairs(team.GetPlayers(AgendaManager)) do
			if not v.DarkRPVars then continue end
			AgendaText = AgendaText .. (v.DarkRPVars.agenda or "") .. "\n"
		end
		draw.DrawText(string.gsub(string.gsub(AgendaText, "//", "\n"), "\\n", "\n"), "DarkRPHUD1", 30, 35, Color(255,255,255,255),0)
	end
end

local VoiceChatTexture = surface.GetTextureID("voice/icntlk_pl")
local function DrawVoiceChat()
	if LocalPlayer().DRPIsTalking then
		local chbxX, chboxY = chat.GetChatBoxPos()

		local Rotating = math.sin(CurTime()*3)
		local backwards = 0
		if Rotating < 0 then
			Rotating = 1-(1+Rotating)
			backwards = 180
		end
		surface.SetTexture(VoiceChatTexture)
		surface.SetDrawColor(ConVars.Healthforeground)
		surface.DrawTexturedRectRotated(ScrW() - 100, chboxY, Rotating*96, 96, backwards)
	end
end

local function LockDown()
	local chbxX, chboxY = chat.GetChatBoxPos()
	if util.tobool(GetConVarNumber("DarkRP_LockDown")) then
		local cin = (math.sin(CurTime()) + 1) / 2
		local chatBoxSize = math.floor(ScrH() / 4)
		draw.DrawText(LANGUAGE.lockdown_started, "ScoreboardSubtitle", chbxX, chboxY + chatBoxSize, Color(cin * 255, 0, 255 - (cin * 255), 255), TEXT_ALIGN_LEFT)
	end
end

local Arrested = function() end

usermessage.Hook("GotArrested", function(msg)
	local StartArrested = CurTime()
	local ArrestedUntil = msg:ReadFloat()

	Arrested = function()
		if CurTime() - StartArrested <= ArrestedUntil and LocalPlayer().DarkRPVars.Arrested then
		draw.DrawText(string.format(LANGUAGE.youre_arrested, math.ceil(ArrestedUntil - (CurTime() - StartArrested))), "DarkRPHUD1", ScrW()/2, ScrH() - ScrH()/12, Color(255,255,255,255), 1)
		elseif not LocalPlayer().DarkRPVars.Arrested then
			Arrested = function() end
		end
	end
end)

local AdminTell = function() end

usermessage.Hook("AdminTell", function(msg)
	local Message = msg:ReadString()

	AdminTell = function()
		draw.RoundedBox(4, 10, 10, ScrW() - 20, 100, Color(0, 0, 0, 200))
		draw.DrawText(LANGUAGE.listen_up, "GModToolName", ScrW() / 2 + 10, 10, Color(255, 255, 255, 255), 1)
		draw.DrawText(Message, "ChatFont", ScrW() / 2 + 10, 80, Color(200, 30, 30, 255), 1)
	end

	timer.Simple(10, function()
		AdminTell = function() end
	end)
end)

/*---------------------------------------------------------------------------
Drawing the HUD elements such as Health etc.
---------------------------------------------------------------------------*/
local iname = Material("icon16/user.png")
local ijob = Material("icon16/vcard.png")
local imoney = Material("icon16/money.png")
local isalar = Material("icon16/money_add.png")
local iviata = Material("icon16/heart.png")
local iarmura = Material("icon16/shield.png")

surface.CreateFont("Ammo",
				{
				font = "TargetID",
				size = 60,
				weight = 400,
				})
				
surface.CreateFont("Ammo2",
				{
				font = "TargetID",
				size = 30,
				weight = 400,
				})
					
surface.CreateFont("Ammo3",
				{
				font = "TargetID",
				size = 40,
				weight = 400,
				})
				
local function DrawHealth()
	local ply = LocalPlayer()
	local HP,AR = ply:Health(),ply:Armor()
	local slujba = ply.DarkRPVars and ply.DarkRPVars.job or "Unemployed"
	local salar = ply.DarkRPVars and ply.DarkRPVars.salary or "NONE"
	local bani = ply.DarkRPVars and ply.DarkRPVars.money or "NONE"
	
		//HP
	draw.RoundedBox(0,10,10,200,19,Color(0,0,0,240))
	surface.SetMaterial(iviata)
	surface.SetDrawColor(255,255,255,255)
	surface.DrawTexturedRect(15,12,16,16)
	draw.RoundedBox(0,35,12,math.Clamp(HP,0,100)*1.72,15,Color(180,0,0,255))
	draw.SimpleText(HP,"TargetID",100,12)
	if AR <= 0 then
	draw.RoundedBox(0,10,30,200,19,Color(0,0,0,240))
	surface.SetMaterial(iarmura)
	surface.SetDrawColor(255,255,255,255)
	surface.DrawTexturedRect(15,32,16,16)
	draw.SimpleText("NO ARMOR","TargetID",80,32)
	else
		//AR
	draw.RoundedBox(0,10,30,200,19,Color(0,0,0,240))
	surface.SetMaterial(iarmura)
	surface.SetDrawColor(255,255,255,255)
	surface.DrawTexturedRect(15,32,16,16)
	draw.RoundedBox(0,35,32,math.Clamp(AR,0,100)*1.72,15,Color(0,148,250,255))
	draw.SimpleText(AR,"TargetID",100,32)
	end
		//Slujba
	draw.RoundedBox(0,10,50,25,20,Color(0,0,0,240))
	surface.SetMaterial(ijob)
	surface.SetDrawColor(255,255,255,255)
	surface.DrawTexturedRect(15,52,16,16)
	draw.RoundedBox(0,37,50,173,20,Color(0,0,0,240))
	draw.SimpleText(slujba,"TargetID",40,52)
		//Money
	draw.RoundedBox(0,10,72,25,20,Color(0,0,0,240))
	surface.SetMaterial(imoney)
	surface.SetDrawColor(255,255,255,255)
	surface.DrawTexturedRect(15,74,16,16)
	draw.RoundedBox(0,37,72,173,20,Color(0,0,0,240))
	draw.SimpleText("$"..bani,"TargetID",40,74)
		//Salar
	draw.RoundedBox(0,10,94,25,20,Color(0,0,0,240))
	surface.SetMaterial(isalar)
	surface.SetDrawColor(255,255,255,255)
	surface.DrawTexturedRect(15,96,16,16)
	draw.RoundedBox(0,37,94,173,20,Color(0,0,0,240))
	draw.SimpleText("$"..salar,"TargetID",40,96)
		
			//Ammo Bar
	if !IsValid(ply:GetActiveWeapon()) then return end
	if (ply:GetActiveWeapon():Clip1() == NULL or ply:GetActiveWeapon() == "Camera") then return end
		local mag_left = LocalPlayer():GetActiveWeapon():Clip1()
		local mag_extra = LocalPlayer():GetAmmoCount(ply:GetActiveWeapon():GetPrimaryAmmoType())
	
	if mag_left <= 0 then
	elseif mag_left > 100 then
	draw.RoundedBox(0, ScrW() - 160, 10, 150, 60, Color (0,0,0,240))
	draw.SimpleText(mag_left,"Ammo",ScrW() - 160,15)
	draw.SimpleText("/","Ammo",ScrW() - 80,10)
	draw.SimpleText(mag_extra,"Ammo2",ScrW() - 70,40)
	elseif mag_left < 100 then
	draw.RoundedBox(0, ScrW() - 150, 10, 140, 60, Color (0,0,0,240))
	draw.SimpleText(mag_left,"Ammo",ScrW() - 140,15)
	draw.SimpleText("/","Ammo",ScrW() - 80,10)
	draw.SimpleText(mag_extra,"Ammo2",ScrW() - 70,40)
	end
	
	if mag_left > 0 and mag_left <= 5 then
		draw.DrawText("RELOAD","Ammo3",ScrW() - 140,70,Color(200,0,0,math.random(0,255)))
	end
end
local function HealthBarHide(name)
        if name == "CHudAmmo" or name == "CHudSecondaryAmmo" then return false end
end
hook.Add("HUDShouldDraw", "FFHHideHudElements", HealthBarHide)

local function DrawHUD()
	Scrw, Scrh = ScrW(), ScrH()
	RelativeX, RelativeY = 0, Scrh

	DrawHealth()
	DrawInfo()
	GunLicense()
	//Agenda()
	DrawVoiceChat()
	LockDown()
	Arrested()
	AdminTell()
end

/*---------------------------------------------------------------------------
Entity HUDPaint things
---------------------------------------------------------------------------*/
local function DrawPlayerInfo(ply)
	local pos = ply:EyePos()

	pos.z = pos.z + 10 -- The position we want is a bit above the position of the eyes
	pos = pos:ToScreen()
	pos.y = pos.y - 50 -- Move the text up a few pixels to compensate for the height of the text

	if GAMEMODE.Config.showname and not ply.DarkRPVars.wanted then
		draw.DrawText(ply:Nick(), "DarkRPHUD2", pos.x + 1, pos.y + 1, Color(0, 0, 0, 255), 1)
		draw.DrawText(ply:Nick(), "DarkRPHUD2", pos.x, pos.y, team.GetColor(ply:Team()), 1)
		draw.DrawText(LANGUAGE.health ..ply:Health(), "DarkRPHUD2", pos.x + 1, pos.y + 21, Color(0, 0, 0, 255), 1)
		draw.DrawText(LANGUAGE.health..ply:Health(), "DarkRPHUD2", pos.x, pos.y + 20, Color(255,255,255,200), 1)
	end

	if GAMEMODE.Config.showjob then
		local teamname = team.GetName(ply:Team())
		draw.DrawText(ply.DarkRPVars.job or teamname, "DarkRPHUD2", pos.x + 1, pos.y + 41, Color(0, 0, 0, 255), 1)
		draw.DrawText(ply.DarkRPVars.job or teamname, "DarkRPHUD2", pos.x, pos.y + 40, Color(255, 255, 255, 200), 1)
	end

	if ply.DarkRPVars.HasGunlicense then
		surface.SetMaterial(Page)
		surface.SetDrawColor(255,255,255,255)
		surface.DrawTexturedRect(pos.x-16, pos.y + 60, 32, 32)
	end
end

local function DrawWantedInfo(ply)
	if not ply:Alive() then return end

	local pos = ply:EyePos()
	if not pos:RPIsInSight({LocalPlayer(), ply}) then return end

	pos.z = pos.z + 14
	pos = pos:ToScreen()

	if GAMEMODE.Config.showname then
		draw.DrawText(ply:Nick(), "DarkRPHUD2", pos.x + 1, pos.y + 1, Color(0, 0, 0, 255), 1)
		draw.DrawText(ply:Nick(), "DarkRPHUD2", pos.x, pos.y, team.GetColor(ply:Team()), 1)
	end

	draw.DrawText(LANGUAGE.wanted.."\nReason: "..tostring(ply.DarkRPVars["wantedReason"]), "DarkRPHUD2", pos.x, pos.y - 40, Color(255, 255, 255, 200), 1)
	draw.DrawText(LANGUAGE.wanted.."\nReason: "..tostring(ply.DarkRPVars["wantedReason"]), "DarkRPHUD2", pos.x + 1, pos.y - 41, Color(255, 0, 0, 255), 1)
end

/*---------------------------------------------------------------------------
The Entity display: draw HUD information about entities
---------------------------------------------------------------------------*/
local function DrawEntityDisplay()
	local shootPos = LocalPlayer():GetShootPos()
	local aimVec = LocalPlayer():GetAimVector()

	for k, ply in pairs(player.GetAll()) do
		if not ply:Alive() then continue end
		local hisPos = ply:GetShootPos()

		ply.DarkRPVars = ply.DarkRPVars or {}
		if ply.DarkRPVars.wanted then DrawWantedInfo(ply) end

		if GAMEMODE.Config.globalshow and ply ~= LocalPlayer() then
			DrawPlayerInfo(ply)
		-- Draw when you're (almost) looking at him
		elseif not GAMEMODE.Config.globalshow and hisPos:Distance(shootPos) < 400 then
			local pos = hisPos - shootPos
			local unitPos = pos:GetNormalized()
			if unitPos:Dot(aimVec) > 0.95 then
				local trace = util.QuickTrace(shootPos, pos, LocalPlayer())
				if trace.Hit and trace.Entity ~= ply then return end
				DrawPlayerInfo(ply)
			end
		end
	end

	local tr = LocalPlayer():GetEyeTrace()

	if tr.Entity:IsOwnable() and tr.Entity:GetPos():Distance(LocalPlayer():GetPos()) < 200 then
		tr.Entity:DrawOwnableInfo()
	end
end

/*---------------------------------------------------------------------------
Zombie display
---------------------------------------------------------------------------*/
local function DrawZombieInfo()
	if not LocalPlayer().DarkRPVars.zombieToggle then return end
	for x=1, LocalPlayer().DarkRPVars.numPoints, 1 do
		local zPoint = LocalPlayer().DarkRPVars["zPoints".. x]
		if zPoint then
			zPoint = zPoint:ToScreen()
			draw.DrawText("Zombie Spawn (" .. x .. ")", "DarkRPHUD2", zPoint.x, zPoint.y - 20, Color(255, 255, 255, 200), 1)
			draw.DrawText("Zombie Spawn (" .. x .. ")", "DarkRPHUD2", zPoint.x + 1, zPoint.y - 21, Color(255, 0, 0, 255), 1)
		end
	end
end

/*---------------------------------------------------------------------------
Actual HUDPaint hook
---------------------------------------------------------------------------*/
function GM:HUDPaint()
	DrawHUD()
	DrawZombieInfo()
	DrawEntityDisplay()

	self.BaseClass:HUDPaint()
end