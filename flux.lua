local screen = Instance.new("ScreenGui")
screen.Parent = game.Players.LocalPlayer.PlayerGui
screen.ResetOnSpawn = false

-- HOME
local home = Instance.new("Frame")
home.Size = UDim2.new(0,300,0,200)
home.AnchorPoint = Vector2.new(0.5,0.5)
home.Position = UDim2.new(0.5,0,0.5,0)
home.BackgroundColor3 = Color3.fromHex("#050B12")
home.BackgroundTransparency = 0.1
home.Parent = screen
home.Visible = false
--scroll
local scroll = Instance.new("ScrollingFrame")
scroll.Parent = home
scroll.Position = UDim2.new(0,10,0,35)
scroll.Size = UDim2.new(1,-20,1,-45)
scroll.BackgroundTransparency = 1
scroll.BorderSizePixel = 0

scroll.CanvasSize = UDim2.new(0,0,0,600)
scroll.ScrollBarThickness = 5

local stroke = Instance.new("UIStroke")
stroke.Thickness = 2
stroke.Color = Color3.fromHex("#16DB65")
stroke.Parent = home

local homeCorner = Instance.new("UICorner")
homeCorner.CornerRadius = UDim.new(0,10)
homeCorner.Parent = home

local drag = Instance.new("UIDragDetector")
drag.Parent = home

-- KEY FRAME
local key = Instance.new("Frame")
key.Size = UDim2.new(0,220,0,200)
key.AnchorPoint = Vector2.new(0.5,0.5)
key.Position = UDim2.new(0.5,0,0.5,0)
key.BackgroundColor3 = Color3.fromHex("#050B12")
key.BackgroundTransparency = 0.1
key.Parent = screen

local keyStroke = Instance.new("UIStroke")
keyStroke.Thickness = 2
keyStroke.Color = Color3.fromHex("#16DB65")
keyStroke.Parent = key

local keyCorner = Instance.new("UICorner")
keyCorner.CornerRadius = UDim.new(0,10)
keyCorner.Parent = key

-- TEXT LABEL
local label = Instance.new("TextLabel")
label.Text = "Write key here →"
label.TextSize = 18
label.Font = Enum.Font.GothamBold
label.Size = UDim2.new(1,-20,0,35)
label.AnchorPoint = Vector2.new(0.5,0)
label.Position = UDim2.new(0.5,0,0,10)
label.BackgroundTransparency = 1
label.TextColor3 = Color3.fromHex("#7DD3FC")
label.Parent = key

-- TEXTBOX
local box = Instance.new("TextBox")
box.PlaceholderText = "Input key"
box.TextSize = 15
box.Size = UDim2.new(1,-30,0,35)
box.AnchorPoint = Vector2.new(0.5,0)
box.Position = UDim2.new(0.5,0,0,50)
box.BackgroundColor3 = Color3.fromHex("#0B1F33")
box.TextColor3 = Color3.fromHex("#E0F2FE")
box.PlaceholderColor3 = Color3.fromHex("#64748B")
box.Text = "input"
box.Parent = key

local boxCorner = Instance.new("UICorner")
boxCorner.CornerRadius = UDim.new(0,7)
boxCorner.Parent = box

-- CHECK BUTTON
local check = Instance.new("TextButton")
check.Size = UDim2.new(0,100,0,35)
check.AnchorPoint = Vector2.new(0.5,0)
check.Position = UDim2.new(0.5,0,0,100)
check.Text = "Check"
check.TextSize = 15
check.Font = Enum.Font.GothamBold
check.BackgroundColor3 = Color3.fromHex("#16DB65")
check.TextColor3 = Color3.fromHex("#043B1C")
check.Parent = key

local checkCorner = Instance.new("UICorner")
checkCorner.CornerRadius = UDim.new(0,7)
checkCorner.Parent = check

-- COPY DISCORD
local copy = Instance.new("TextButton")
copy.Size = UDim2.new(0,160,0,30)
copy.AnchorPoint = Vector2.new(0.5,0)
copy.Position = UDim2.new(0.5,0,0,150)
copy.Text = "Copy Discord (Click)"
copy.TextSize = 13
copy.Font = Enum.Font.GothamBold
copy.BackgroundColor3 = Color3.fromHex("#0B1F33")
copy.TextColor3 = Color3.fromHex("#7DD3FC")
copy.Parent = key

local copyCorner = Instance.new("UICorner")
copyCorner.CornerRadius = UDim.new(0,7)
copyCorner.Parent = copy

copy.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/BgTyXwU3v")
    copy.Text = "Copied!"

    task.wait(2)

    copy.Text = "Copy Discord (Click)"
end)

-- ПРОВЕРКА КЛЮЧА
check.MouseButton1Click:Connect(function()
    if box.Text == "key-8719-1821-flux" then
        home.Visible = true
        key.Visible = false
        copy.Visible = false
    end
end)

-- SPEED BOX
local speedbox = Instance.new("TextBox")
speedbox.AnchorPoint = Vector2.new(0,0)
speedbox.Position = UDim2.new(0,20,0,55)
speedbox.Size = UDim2.new(0,165,0,35)
speedbox.PlaceholderText = "16-500"
speedbox.BackgroundColor3 = Color3.fromHex("#0B1F33")
speedbox.PlaceholderColor3 = Color3.fromHex("#64748B")
speedbox.Text = ""
speedbox.TextSize = 16
speedbox.TextColor3 = Color3.fromHex("#E0F2FE")
speedbox.Parent = scroll

local speedCorner = Instance.new("UICorner")
speedCorner.CornerRadius = UDim.new(0,7)
speedCorner.Parent = speedbox

-- SPEED APPLY
local apply = Instance.new("TextButton")
apply.AnchorPoint = Vector2.new(0,0)
apply.Position = UDim2.new(0,195,0,57)
apply.Size = UDim2.new(0,80,0,30)
apply.BackgroundColor3 = Color3.fromHex("#16DB65")
apply.TextColor3 = Color3.fromHex("#04471C")
apply.Text = "Apply"
apply.Font = Enum.Font.GothamBold
apply.TextSize = 14
apply.Parent = scroll

local applyCorner = Instance.new("UICorner")
applyCorner.CornerRadius = UDim.new(0,7)
applyCorner.Parent = apply

-- SPEED
apply.MouseButton1Click:Connect(function()
    local speed = tonumber(speedbox.Text)

    if speed and speed >= 16 and speed <= 500 then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
    end
end)

-- CLOSE
local close = Instance.new("TextButton")
close.Text = "X"
close.TextSize = 16
close.Font = Enum.Font.GothamBold
close.AnchorPoint = Vector2.new(1,0)
close.Position = UDim2.new(1,-5,0,5)
close.Size = UDim2.new(0,25,0,25)
close.TextColor3 = Color3.fromHex("#FF4D5A")
close.BackgroundColor3 = Color3.fromHex("#2A0D12")
close.Parent = home

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0,6)
closeCorner.Parent = close

-- OPEN BUTTON
local open = Instance.new("TextButton")
open.Text = "open flux"
open.TextSize = 18
open.Font = Enum.Font.GothamBold
open.AnchorPoint = Vector2.new(0.5,0.1)
open.Position = UDim2.new(0.5,0,0.1,0)
open.Size = UDim2.new(0,100,0,30)
open.BackgroundColor3 = Color3.fromHex("#16DB65")
open.TextColor3 = Color3.fromHex("#04471C")
open.Parent = screen
open.Visible = false

local openCorner = Instance.new("UICorner")
openCorner.CornerRadius = UDim.new(0,8)
openCorner.Parent = open

-- CLOSE HOME
close.MouseButton1Click:Connect(function()
    home.Visible = false
    open.Visible = true
end)

-- OPEN HOME
open.MouseButton1Click:Connect(function()
    home.Visible = true
    open.Visible = false
end)

-- JUMP BOX
local jumpbox = Instance.new("TextBox")
jumpbox.AnchorPoint = Vector2.new(0,0)
jumpbox.Position = UDim2.new(0,20,0,115)
jumpbox.Size = UDim2.new(0,165,0,35)
jumpbox.PlaceholderText = "50-500"
jumpbox.BackgroundColor3 = Color3.fromHex("#0B1F33")
jumpbox.PlaceholderColor3 = Color3.fromHex("#64748B")
jumpbox.Text = ""
jumpbox.TextSize = 16
jumpbox.TextColor3 = Color3.fromHex("#E0F2FE")
jumpbox.Parent = scroll

local jumpCorner = Instance.new("UICorner")
jumpCorner.CornerRadius = UDim.new(0,7)
jumpCorner.Parent = jumpbox

-- JUMP APPLY
local apply2 = Instance.new("TextButton")
apply2.AnchorPoint = Vector2.new(0,0)
apply2.Position = UDim2.new(0,195,0,117)
apply2.Size = UDim2.new(0,80,0,30)
apply2.BackgroundColor3 = Color3.fromHex("#16DB65")
apply2.TextColor3 = Color3.fromHex("#04471C")
apply2.Text = "Apply"
apply2.Font = Enum.Font.GothamBold
apply2.TextSize = 14
apply2.Parent = scroll

local apply2Corner = Instance.new("UICorner")
apply2Corner.CornerRadius = UDim.new(0,7)
apply2Corner.Parent = apply2

-- JUMP
apply2.MouseButton1Click:Connect(function()
    local jump = tonumber(jumpbox.Text)

    if jump and jump >= 50 and jump <= 500 then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = jump
    end
end)
--text inf jump
local textJump = Instance.new("TextLabel") 
textJump.Text = "infinity jump"
textJump.TextSize = 18
textJump.Size = UDim2.new(0,165,0,35)
textJump.Position = UDim2.new(0,20,0,175) 
textJump.BackgroundColor3 = Color3.fromHex("#0B1F33") 
textJump.TextColor3 = Color3.fromHex("#FFFFFF") 
textJump.Parent = scroll
--corner textJump
local cornerInf = Instance.new("UICorner")
cornerInf.Parent = textJump
cornerInf.CornerRadius = UDim.new(0,7)
--infinity jump
local infinityJump = false
local inf = Instance.new("TextButton")
inf.Size = UDim2.new(0,80,0,30)
inf.Position = UDim2.new(0,195,0,175)
inf.Text = "off"
inf.TextSize = 14
inf.BackgroundColor3 = Color3.fromHex("#D00018")
inf.TextColor3 = Color3.fromHex("#64748B")
inf.Parent = scroll
--cornerifi
local cornerInfi = Instance.new("UICorner")
cornerInfi.Parent = inf
cornerInfi.CornerRadius = UDim.new(0,7)
--переключкние текста у кнопки
inf.MouseButton1Click:Connect(function()
infinityJump = not infinityJump
    if infinityJump then
        inf.Text = "on"
            inf.BackgroundColor3 = Color3.fromHex("#16DB65")
    else
        inf.Text = "off"
            inf.BackgroundColor3 = Color3.fromHex("#D00018")
    end
end)
--inf jump function
game:GetService("UserInputService").JumpRequest:Connect(function()
    if infinityJump then
        local player = game.Players.LocalPlayer
        local character = player.Character
        local humanoid = character and character:FindFirstChildOfClass("Humanoid")
        
        if humanoid then
            humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end)
--fovBox
local fovBox = Instance.new("TextBox")
fovBox.Position = UDim2.new(0,20,0,235)
fovBox.Size = UDim2.new(0,165,0,35)
fovBox.BackgroundColor3 = Color3.fromHex("#0B1F33")
fovBox.PlaceholderColor3 = Color3.fromHex("#16DB65")
fovBox.PlaceholderText = "70-140"
fovBox.Text = "FOV"
fovBox.TextSize = 16
fovBox.TextColor3 = Color3.fromHex("#E0F2FE")
fovBox.Parent = scroll
--fov box corner
local fovBoxCorner = Instance.new("UICorner")
fovBoxCorner.Parent = fovBox
fovBoxCorner.CornerRadius = UDim.new(0,7)
--fov apply
local applyFov = Instance.new("TextButton")
applyFov.Position = UDim2.new(0,195,0,237)
applyFov.Size = UDim2.new(0,80,0,30)
applyFov.BackgroundColor3 = Color3.fromHex("#16DB65") 
applyFov.TextColor3 = Color3.fromHex("#04471C")
applyFov.Text = "Apply"
applyFov.Font = Enum.Font.GothamBold
applyFov.TextSize = 14
applyFov.Parent = scroll
--applyFovCorner
local applyFovCorner = Instance.new("UICorner")
applyFovCorner.Parent = applyFov
applyFovCorner.CornerRadius = UDim.new(0,7)
--
--aplyfov function
applyFov.MouseButton1Click:Connect(function()
local fov = tonumber(fovBox.Text)
    if fov and fov >= 70 and fov <= 140 then
        workspace.CurrentCamera.FieldOfView = fov
    end
end)
--textEsp
local textEsp = Instance.new("TextLabel")
textEsp.Position = UDim2.new(0,20,0,295)
textEsp.Size = UDim2.new(0,165,0,35)
textEsp.BackgroundColor3 = Color3.fromHex("#0B1F33")
textEsp.TextColor3 = Color3.fromHex("#FFFFFF")
textEsp.Text = "ESP"
textEsp.TextSize = 14
textEsp.Parent = scroll
--espCorner
local espCorner = Instance.new("UICorner")
espCorner.Parent = textEsp
espCorner.CornerRadius = UDim.new(0,7)
--espButton
local espButton = Instance.new("TextButton")
espButton.Position = UDim2.new(0,195,0,295)
espButton.Size = UDim2.new(0,80,0,30)
espButton.BackgroundColor3 = Color3.fromHex("#D00018")
espButton.TextColor3 = Color3.fromHex("#FFFFFF")
espButton.TextSize = 16
espButton.Text = "off"
espButton.Parent = scroll
--espButtonCorner
local espButtonCorner = Instance.new("UICorner")
espButtonCorner.Parent = espButton
espButtonCorner.CornerRadius = UDim.new(0,7)
-- NAME HUB
local nameHub = Instance.new("TextLabel")
nameHub.Text = "flux hub"
nameHub.AnchorPoint = Vector2.new(0.5,0)
nameHub.Position = UDim2.new(0.5,0,0,5)
nameHub.Size = UDim2.new(0,100,0,25)
nameHub.BackgroundTransparency = 1
nameHub.TextSize = 16
nameHub.Font = Enum.Font.GothamBold
nameHub.TextColor3 = Color3.fromHex("#16DB65")
nameHub.Parent = home
--espButtonFunction
local Players = game:GetService("Players")
local espEnabled = false

espButton.MouseButton1Click:Connect(function()
    espEnabled = not espEnabled

    if espEnabled then
        espButton.BackgroundColor3 = Color3.fromHex("#16DB65")
        espButton.TextColor3 = Color3.fromHex("#04471C")
        espButton.Text = "on"
    else
        espButton.BackgroundColor3 = Color3.fromHex("#D00018")
        espButton.TextColor3 = Color3.fromHex("#FFFFFF")
        espButton.Text = "off"
    end

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= Players.LocalPlayer and player.Character then

            if espEnabled then
                local light = Instance.new("Highlight")
                light.Name = "ESP"
                light.FillColor = Color3.fromRGB(255,0,0)
                light.OutlineColor = Color3.fromRGB(255,255,255)
                light.Parent = player.Character
            else
                local light = player.Character:FindFirstChild("ESP")

                if light then
                    light:Destroy()
                end
            end

        end
    end
end)
--textNoclip
local textNoclip = Instance.new("TextLabel")
textNoclip.Position = UDim2.new(0,20,0,355)
textNoclip.Size = UDim2.new(0,165,0,35)
textNoclip.BackgroundColor3 = Color3.fromHex("#0B1F33")
textNoclip.TextColor3 = Color3.fromHex("#FFFFFF")
textNoclip.Text = "Noclip"
textNoclip.TextSize = 16
textNoclip.Parent = scroll
--textNoclipCorner
local textNoclipCorner = Instance.new("UICorner")
textNoclipCorner.Parent = textNoclip
textNoclipCorner.CornerRadius = UDim.new(0,7)
--buttonNoclip
local buttonNoclip = Instance.new("TextButton")
buttonNoclip.Position = UDim2.new(0,195,0,355)
buttonNoclip.Size = UDim2.new(0,80,0,30)
buttonNoclip.BackgroundColor3 = Color3.fromHex("#D00018")
buttonNoclip.TextColor3 = Color3.fromHex("#FFFFFF")
buttonNoclip.Text = "off"
buttonNoclip.TextSize = 14
buttonNoclip.Parent = scroll
--buttonNoclipCorner
local buttonNoclipCorner = Instance.new("UICorner")
buttonNoclipCorner.Parent = buttonNoclip
buttonNoclipCorner.CornerRadius = UDim.new(0,7)
--buttonNoclip function
local noclipEnabled = false
buttonNoclip.MouseButton1Click:Connect(function()
noclipEnabled = not noclipEnabled
    if noclipEnabled then
    buttonNoclip.BackgroundColor3 = Color3.fromHex("#16DB65")
    buttonNoclip.TextColor3 = Color3.fromHex("#04471C")
    buttonNoclip.Text = "on"
    else
    buttonNoclip.BackgroundColor3 = Color3.fromHex("#D00018")
    buttonNoclip.TextColor3 = Color3.fromHex("#FFFFFF")
    buttonNoclip.Text = "off"
    end
end)
--noclip RunService
game:GetService("RunService").Stepped:Connect(function()
    local character = game.Players.LocalPlayer.Character

    if character then
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") then

                if noclipEnabled then
                    part.CanCollide = false
                else
                    part.CanCollide = true
                end

            end
        end
    end
end)
-- BY VAVA22115
local by = Instance.new("TextLabel")
by.Text = "by Vava22115"
by.AnchorPoint = Vector2.new(0,0)
by.Position = UDim2.new(0,10,0,8)
by.Size = UDim2.new(0,100,0,20)
by.BackgroundTransparency = 1
by.TextSize = 11
by.Font = Enum.Font.GothamBold
by.TextColor3 = Color3.fromHex("#7DD3FC")
by.Parent = home