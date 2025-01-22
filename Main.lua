local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Pinks Planks",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Pinks Planks loading...",
   LoadingSubtitle = "by Pinkhat",
   Theme = "Ocean", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = "PinksPlanks", -- Create a custom folder for your hub/game
      FileName = "Planks"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Planks Key Sys",
      Subtitle = "Key System",
      Note = "This is a private script. keys are only given out by me", -- Use this to tell the user how to get a key
      FileName = "PLNKSKEYSYS", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://raw.githubusercontent.com/CHKNPinkhat/Planks/refs/heads/main/Keys.lua"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("ESP")
    local Toggle = Tab:CreateToggle({
   Name = "ESP",
   CurrentValue = false,
   Flag = "ESPToggle", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   loadstring(game:HttpGet('https://raw.githubusercontent.com/CHKNPinkhat/Planks/refs/heads/main/esp.lua'))()
   _G.ESPToggle = CurrentValue
   end,
})
