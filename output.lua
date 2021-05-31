--Vep library
local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()

local s = VLib:Window("Noob Speed", "v1.2", "NS")

local player = game.Players.LocalPlayer
--//Variables
local speed = false
local jump = false
local sell = false

local t1 = s:Tab("Main")

t1:Label("Script Hubs")

t1:Button("Xenon [YBA]",function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Chad-Thundercock/YBA/main/Autofarm"))();
end)

t1:Button("Owl Hub [FPS]",function()
	loadstring(game:HttpGet("https://pastebin.com/raw/GtudyLtE"))();
end)

t1:Button("Funky Friday [FNF]",function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Kyron14-max/Lunatic/main/init.lua"))()
end)

t1:Button("Blox Fruits [BF]",function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/NukeVsCity/crack/main/hub2"))()
end)

t1:Button("Shindo Life [AUTOFARM]",function()
	loadstring(game:HttpGet("https://bruh.keshsenpai.com/.lua"))()
end)

local t2 = s:Tab("Player")

t2:Toggle("Speed",function(t)
	if speed == false then
		speed = true
	elseif speed == true then
		speed = false
		player.Character.Humanoid.WalkSpeed = 16
	end
end)

t2:Slider("Speed Power",0,250,16,function(t)
	if speed == true then
		while speed == true do
			player.Character.Humanoid.WalkSpeed = t
			game:GetService("RunService").RenderStepped:wait()
		end
	end
end)

t2:Toggle("Jump",function(t)
	if jump == false then
		jump = true
	elseif jump == true then
		jump = false
		player.Character.Humanoid.JumpPower = 50
	end
end)

t2:Slider("Jump Power",0,250,50,function(t)
	if jump == true then
		while jump == true do
			player.Character.Humanoid.JumpPower = t
			game:GetService("RunService").RenderStepped:wait()
		end
	end
end)

t2:Button("FE God",function()
	if player.Character then
		if player.Character:FindFirstChild("Humanoid") then
			player.Character.Humanoid.Name = "1"
		end
		local l = player.Character["1"]:Clone()
		l.Parent = player.Character
		l.Name = "Humanoid"; wait(0.1)
		player.Character["1"]:Destroy()
		workspace.CurrentCamera.CameraSubject = player.Character.Humanoid
		player.Character.Animate.Disabled = true; wait(0.1)
		player.Character.Animate.Disabled = false
	end
end)

t2:Textbox("Make Invisible [Client]", true,function(t)
	local players = game.Players:GetPlayers()
	if players[t] then
		players[t]:Destroy()
	end
end)

local t3 = s:Tab("Your Bizarre Adventure")

t3:Button("Item ESP",function()
	if not pcall(function() return syn.protect_gui end) then
		syn = {}
		syn.protect_gui = function(egg)
			egg.Parent = game.CoreGui
		end
	end
	loadstring(game:HttpGet("https://gist.githubusercontent.com/Chrrxs/d2dfdcde75c2d11b173aa664c0a6b755/raw", true))()
end)

t3:Button("Level Autofarm",function()
	loadstring(game:HttpGet('https://gist.githubusercontent.com/stellar-4242/090eac215b54e6520097aea444b9f530/raw/48e54416196937bae43e16036e1b59882d6f736c/autofarm.lua'))()
end)

t3:Dropdown("Sell All",{"Rokakaka","Gold Coin","Diamond","Mysterious Arrow","Pure Rokakaka","Quinton's Glove","Ancient Scroll","Steel Ball","Stone Mask","Zepellin's Headband","Rib Cage of The Saint's Corpse", "DEO's Diary"},function(t)
	if game.Players.LocalPlayer.Backpack[t] then
		game.Players.LocalPlayer.Backpack[t].Parent = game.Players.LocalPlayer.Character
		local args = {
			[1] = "EndDialogue",
			[2] = {
				["NPC"] = "Merchant",
				["Option"] = "Option2",
				["Dialogue"] = "Dialogue5"
			}
		}
		game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer(unpack(args))
	end
end)

t3:Dropdown("Sell One",{"Rokakaka","Gold Coin","Diamond","Mysterious Arrow","Pure Rokakaka","Quinton's Glove","Ancient Scroll","Steel Ball","Stone Mask","Zepellin's Headband","Rib Cage of The Saint's Corpse", "DEO's Diary"},function(t)
	if game.Players.LocalPlayer.Backpack[t] then
		game.Players.LocalPlayer.Backpack[t].Parent = game.Players.LocalPlayer.Character
		local args = {
			[1] = "EndDialogue",
			[2] = {
				["NPC"] = "Merchant",
				["Option"] = "Option1",
				["Dialogue"] = "Dialogue5"
			}
		}
		game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer(unpack(args))
	end
end)

t3:Button("Arcade",function()
	local args = {
		[1] = "EndDialogue",
		[2] = {
			["NPC"] = "Item Machine",
			["Option"] = "Option1",
			["Dialogue"] = "Dialogue1"
		}
	}

	game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer(unpack(args))
end)

t3:Button("Stand Pilot funy",function()
	local root = game.Players.LocalPlayer.Character.LowerTorso.Root
	local ac = game.Players.LocalPlayer.Character:FindFirstChild("StandMorph").AnimationController
	root.Part0 = nil
	root.Part1 = nil
	ac:Destroy()
end)

local t4 = s:Tab("Customize [WIP]")

t4:Label("Custom Theme")

t4:Colorpicker("Main Color",Color3.fromRGB(255, 1, 1),function(c1)

end)

t4:Colorpicker("Secondary Color",Color3.fromRGB(1, 255, 1),function(c1)

end)

t4:Colorpicker("Tertiary Color",Color3.fromRGB(1, 1, 255),function(c1)

end)

t4:Label("Themes")

t4:Dropdown("Default",{"Dark", "DarkRGB", "Blood", "Ocean", "Light"},function(t)
	print(t)
end)
