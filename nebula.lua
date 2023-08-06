local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Nebula",
    LoadingTitle = "Loading Nebula",
    LoadingSubtitle = "by lumxn",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil,
       FileName = "Big Hub"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "Nebula",
       Subtitle = "Key System",
       Note = "Check the Discord for a key!",
       FileName = "key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"phillipeontop"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

local Tab = Window:CreateTab("Player", 4483362458)

local Section = Tab:CreateSection("Movement")

local Slider = Tab:CreateSlider({
    Name = "Walkspeed",
    Range = {16, 300},
    Increment = 1,
    Suffix = "",
    CurrentValue = 16,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    -- The variable (Value) is a number which correlates to the value the slider is currently at
    end,
 })

 local Slider = Tab:CreateSlider({
    Name = "JumpHeight",
    Range = {50, 300},
    Increment = 1,
    Suffix = "",
    CurrentValue = 50,
    Flag = "Slider2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end,
 })

 local Input = Tab:CreateInput({
    Name = "Custom WalkSpeed",
    PlaceholderText = "Value",
    RemoveTextAfterFocusLost = false,
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end,
 })

 local Input = Tab:CreateInput({
    Name = "Custom JumpHeight",
    PlaceholderText = "Value",
    RemoveTextAfterFocusLost = false,
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end,
 })

 local Section = Tab:CreateSection("Player Settings")

 local Button = Tab:CreateButton({ ---Infinite Jump
    Name = "Infinite Jump",
    Callback = function()
        _G.infinjump = not _G.infinjump

        if _G.infinJumpStarted == nil then
            _G.infinJumpStarted = true
            local plr = game:GetService('Players').LocalPlayer
            local m = plr:GetMouse()
            m.KeyDown:connect(function(k)
                if _G.infinjump then
                    if k:byte() == 32 then
                    humanoid = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
                    humanoid:ChangeState('Jumping')
                    wait()
                    humanoid:ChangeState('Seated')
                    end
                end
            end)
        end
    end,
 })

 local Button = Tab:CreateButton({ ---Click Teleport
    Name = "Click Teleport",
    Callback = function()
        if _G.WRDClickTeleport == nil then
            _G.WRDClickTeleport = true
            
            local player = game:GetService("Players").LocalPlayer
            local UserInputService = game:GetService("UserInputService")
            local mouse = player:GetMouse()
    
            repeat wait() until mouse
            
            UserInputService.InputBegan:Connect(function(input, gameProcessed)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    --Only click teleport if the toggle is enabled
                    if _G.WRDClickTeleport and UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        player.Character:MoveTo(Vector3.new(mouse.Hit.x, mouse.Hit.y, mouse.Hit.z)) 
                    end
                end
            end)
        else
            _G.WRDClickTeleport = not _G.WRDClickTeleport
            if _G.WRDClickTeleport then
                game.StarterGui:SetCore("SendNotification", {Title="Nebula"; Text="Enabled"; Duration=5;})
            else
                game.StarterGui:SetCore("SendNotification", {Title="Nebula"; Text="Disabled"; Duration=5;})
            end
        end
    end,
 })

 local Tab = Window:CreateTab("Misc", 4483362458)

 local Tab = Window:CreateTab("Script Hub", 4483362458)

 local Section = Tab:CreateSection("Scripts")

 local Button = Tab:CreateButton({
    Name = "Infinite Yield",
    Callback = function()
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Infinite%20Yield.txt"))()
    end,
 })

 local Button = Tab:CreateButton({
    Name = "CMD-X",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source",true))()
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Remote Spy",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"))()
    end,
 })

 local Button = Tab:CreateButton({
    Name = "DEX V4",
    Callback = function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/DinosaurXxX/b757fe011e7e600c0873f967fe427dc2/raw/ee5324771f017073fc30e640323ac2a9b3bfc550/dark%2520dex%2520v4"))()
    end,
 })


 local Button = Tab:CreateButton({
    Name = "Sword Reach",
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/tsbVWZdP"))()
    end,
 })






