local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer

-- SCREEN
local screen = Instance.new("ScreenGui")
screen.Name = "Flux"
screen.ResetOnSpawn = false
screen.Parent = player:WaitForChild("PlayerGui")

-- =========================
-- KEY FRAME
-- =========================

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

-- KEY TITLE
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

-- KEY BOX
local box = Instance.new("TextBox")
box.PlaceholderText = "Input key"
box.TextSize = 15
box.Size = UDim2.new(1,-30,0,35)
box.AnchorPoint = Vector2.new(0.5,0)
box.Position = UDim2.new(0.5,0,0,50)
box.BackgroundColor3 = Color3.fromHex("#0B1F33")
box.TextColor3 = Color3.fromHex("#E0F2FE")
box.PlaceholderColor3 = Color3.fromHex("#64748B")
box.Text = ""
box.ClearTextOnFocus = false
box.Parent = key

local boxCorner = Instance.new("UICorner")
boxCorner.CornerRadius = UDim.new(0,7)
boxCorner.Parent = box

-- CHECK
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
    if setclipboard then
        setclipboard("https://discord.gg/BgTyXwU3v")
    end

    copy.Text = "Copied!"

    task.wait(2)

    copy.Text = "Copy Discord (Click)"
end)


-- =========================
-- HOME
-- =========================

local home = Instance.new("Frame")
home.Size = UDim2.new(0,300,0,250)
home.AnchorPoint = Vector2.new(0.5,0.5)
home.Position = UDim2.new(0.5,0,0.5,0)
home.BackgroundColor3 = Color3.fromHex("#050B12")
home.BackgroundTransparency = 0.1
home.Visible = false
home.Parent = screen

local stroke = Instance.new("UIStroke")
stroke.Thickness = 2
stroke.Color = Color3.fromHex("#16DB65")
stroke.Parent = home

local homeCorner = Instance.new("UICorner")
homeCorner.CornerRadius = UDim.new(0,10)
homeCorner.Parent = home

local drag = Instance.new("UIDragDetector")
drag.Parent = home

-- TITLE
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

-- SCROLL
local scroll = Instance.new("ScrollingFrame")
scroll.Parent = home
scroll.Position = UDim2.new(0,10,0,35)
scroll.Size = UDim2.new(1,-20,1,-45)
scroll.BackgroundTransparency = 1
scroll.BorderSizePixel = 0
scroll.ScrollBarThickness = 5
scroll.CanvasSize = UDim2.new(0,0,0,480)

-- =========================
-- SPEED
-- =========================

local speedbox = Instance.new("TextBox")
speedbox.Position = UDim2.new(0,10,0,10)
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

local apply = Instance.new("TextButton")
apply.Position = UDim2.new(0,185,0,12)
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

apply.MouseButton1Click:Connect(function()
    local speed = tonumber(speedbox.Text)

    if speed and speed >= 16 and speed <= 500 then
        local character = player.Character
        local humanoid = character and character:FindFirstChildOfClass("Humanoid")

        if humanoid then
            humanoid.WalkSpeed = speed
        end
    end
end)


-- =========================
-- JUMP POWER
-- =========================

local jumpbox = Instance.new("TextBox")
jumpbox.Position = UDim2.new(0,10,0,60)
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

local apply2 = Instance.new("TextButton")
apply2.Position = UDim2.new(0,185,0,62)
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

apply2.MouseButton1Click:Connect(function()
    local jump = tonumber(jumpbox.Text)

    if jump and jump >= 50 and jump <= 500 then
        local character = player.Character
        local humanoid = character and character:FindFirstChildOfClass("Humanoid")

        if humanoid then
            humanoid.JumpPower = jump
        end
    end
end)


-- =========================
-- INFINITY JUMP
-- =========================

local textJump = Instance.new("TextLabel")
textJump.Text = "Infinity Jump"
textJump.TextSize = 16
textJump.Size = UDim2.new(0,165,0,35)
textJump.Position = UDim2.new(0,10,0,110)
textJump.BackgroundColor3 = Color3.fromHex("#0B1F33")
textJump.TextColor3 = Color3.fromHex("#FFFFFF")
textJump.Parent = scroll

local cornerInf = Instance.new("UICorner")
cornerInf.CornerRadius = UDim.new(0,7)
cornerInf.Parent = textJump

local infinityJump = false

local inf = Instance.new("TextButton")
inf.Size = UDim2.new(0,80,0,30)
inf.Position = UDim2.new(0,185,0,112)
inf.Text = "off"
inf.TextSize = 14
inf.BackgroundColor3 = Color3.fromHex("#D00018")
inf.TextColor3 = Color3.fromHex("#FFFFFF")
inf.Parent = scroll

local cornerInfi = Instance.new("UICorner")
cornerInfi.CornerRadius = UDim.new(0,7)
cornerInfi.Parent = inf

inf.MouseButton1Click:Connect(function()
    infinityJump = not infinityJump

    if infinityJump then
        inf.Text = "on"
        inf.BackgroundColor3 = Color3.fromHex("#16DB65")
        inf.TextColor3 = Color3.fromHex("#04471C")
    else
        inf.Text = "off"
        inf.BackgroundColor3 = Color3.fromHex("#D00018")
        inf.TextColor3 = Color3.fromHex("#FFFFFF")
    end
end)

UserInputService.JumpRequest:Connect(function()
    if infinityJump then
        local character = player.Character
        local humanoid = character and character:FindFirstChildOfClass("Humanoid")

        if humanoid then
            humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end)


-- =========================
-- FOV
-- =========================

local fovBox = Instance.new("TextBox")
fovBox.Position = UDim2.new(0,10,0,160)
fovBox.Size = UDim2.new(0,165,0,35)
fovBox.BackgroundColor3 = Color3.fromHex("#0B1F33")
fovBox.PlaceholderColor3 = Color3.fromHex("#64748B")
fovBox.PlaceholderText = "70-140"
fovBox.Text = ""
fovBox.TextSize = 16
fovBox.TextColor3 = Color3.fromHex("#E0F2FE")
fovBox.Parent = scroll

local fovBoxCorner = Instance.new("UICorner")
fovBoxCorner.CornerRadius = UDim.new(0,7)
fovBoxCorner.Parent = fovBox

local applyFov = Instance.new("TextButton")
applyFov.Position = UDim2.new(0,185,0,162)
applyFov.Size = UDim2.new(0,80,0,30)
applyFov.BackgroundColor3 = Color3.fromHex("#16DB65")
applyFov.TextColor3 = Color3.fromHex("#04471C")
applyFov.Text = "Apply"
applyFov.Font = Enum.Font.GothamBold
applyFov.TextSize = 14
applyFov.Parent = scroll

local applyFovCorner = Instance.new("UICorner")
applyFovCorner.CornerRadius = UDim.new(0,7)
applyFovCorner.Parent = applyFov

applyFov.MouseButton1Click:Connect(function()
    local fov = tonumber(fovBox.Text)

    if fov and fov >= 70 and fov <= 140 then
        workspace.CurrentCamera.FieldOfView = fov
    end
end)


-- =========================
-- ESP
-- =========================

local textEsp = Instance.new("TextLabel")
textEsp.Position = UDim2.new(0,10,0,210)
textEsp.Size = UDim2.new(0,165,0,35)
textEsp.BackgroundColor3 = Color3.fromHex("#0B1F33")
textEsp.TextColor3 = Color3.fromHex("#FFFFFF")
textEsp.Text = "ESP"
textEsp.TextSize = 16
textEsp.Parent = scroll

local espCorner = Instance.new("UICorner")
espCorner.CornerRadius = UDim.new(0,7)
espCorner.Parent = textEsp

local espButton = Instance.new("TextButton")
espButton.Position = UDim2.new(0,185,0,212)
espButton.Size = UDim2.new(0,80,0,30)
espButton.BackgroundColor3 = Color3.fromHex("#D00018")
espButton.TextColor3 = Color3.fromHex("#FFFFFF")
espButton.TextSize = 16
espButton.Text = "off"
espButton.Parent = scroll

local espButtonCorner = Instance.new("UICorner")
espButtonCorner.CornerRadius = UDim.new(0,7)
espButtonCorner.Parent = espButton

local espEnabled = false

local function updateESP()
    for _, target in pairs(Players:GetPlayers()) do
        if target ~= player and target.Character then

            local old = target.Character:FindFirstChild("ESP")

            if old then
                old:Destroy()
            end

            if espEnabled then
                local highlight = Instance.new("Highlight")
                highlight.Name = "ESP"
                highlight.FillColor = Color3.fromRGB(255,0,0)
                highlight.OutlineColor = Color3.fromRGB(255,255,255)
                highlight.Parent = target.Character
            end
        end
    end
end

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

    updateESP()
end)


-- =========================
-- NOCLIP
-- =========================

local textNoclip = Instance.new("TextLabel")
textNoclip.Position = UDim2.new(0,10,0,260)
textNoclip.Size = UDim2.new(0,165,0,35)
textNoclip.BackgroundColor3 = Color3.fromHex("#0B1F33")
textNoclip.TextColor3 = Color3.fromHex("#FFFFFF")
textNoclip.Text = "Noclip"
textNoclip.TextSize = 16
textNoclip.Parent = scroll

local textNoclipCorner = Instance.new("UICorner")
textNoclipCorner.CornerRadius = UDim.new(0,7)
textNoclipCorner.Parent = textNoclip

local buttonNoclip = Instance.new("TextButton")
buttonNoclip.Position = UDim2.new(0,185,0,262)
buttonNoclip.Size = UDim2.new(0,80,0,30)
buttonNoclip.BackgroundColor3 = Color3.fromHex("#D00018")
buttonNoclip.TextColor3 = Color3.fromHex("#FFFFFF")
buttonNoclip.Text = "off"
buttonNoclip.TextSize = 14
buttonNoclip.Parent = scroll

local buttonNoclipCorner = Instance.new("UICorner")
buttonNoclipCorner.CornerRadius = UDim.new(0,7)
buttonNoclipCorner.Parent = buttonNoclip

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

RunService.Stepped:Connect(function()
    local character = player.Character

    if character then
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = not noclipEnabled
            end
        end
    end
end)


-- =========================
-- FLY SPEED
-- =========================

local flySpeedBox = Instance.new("TextBox")
flySpeedBox.Position = UDim2.new(0,10,0,310)
flySpeedBox.Size = UDim2.new(0,165,0,35)
flySpeedBox.BackgroundColor3 = Color3.fromHex("#0B1F33")
flySpeedBox.PlaceholderColor3 = Color3.fromHex("#64748B")
flySpeedBox.PlaceholderText = "fly 50-500"
flySpeedBox.Text = ""
flySpeedBox.TextSize = 14
flySpeedBox.TextColor3 = Color3.fromHex("#E0F2FE")
flySpeedBox.Parent = scroll

local flySpeedCorner = Instance.new("UICorner")
flySpeedCorner.CornerRadius = UDim.new(0,7)
flySpeedCorner.Parent = flySpeedBox

-- FLY BUTTON

local buttonFly = Instance.new("TextButton")
buttonFly.Position = UDim2.new(0,185,0,312)
buttonFly.Size = UDim2.new(0,80,0,30)
buttonFly.BackgroundColor3 = Color3.fromHex("#D00018")
buttonFly.TextColor3 = Color3.fromHex("#FFFFFF")
buttonFly.Text = "off"
buttonFly.TextSize = 14
buttonFly.Parent = scroll

local buttonFlyCorner = Instance.new("UICorner")
buttonFlyCorner.CornerRadius = UDim.new(0,7)
buttonFlyCorner.Parent = buttonFly

local flyEnabled = false
local flySpeed = 50

flySpeedBox.FocusLost:Connect(function()
    local value = tonumber(flySpeedBox.Text)

    if value and value >= 50 and value <= 800 then
        flySpeed = value
    end
end)

buttonFly.MouseButton1Click:Connect(function()
    flyEnabled = not flyEnabled

    if flyEnabled then
        buttonFly.Text = "on"
        buttonFly.BackgroundColor3 = Color3.fromHex("#16DB65")
        buttonFly.TextColor3 = Color3.fromHex("#04471C")
    else
        buttonFly.Text = "off"
        buttonFly.BackgroundColor3 = Color3.fromHex("#D00018")
        buttonFly.TextColor3 = Color3.fromHex("#FFFFFF")
    end
end)


-- =========================
-- FLY HEARTBEAT
-- =========================

RunService.Heartbeat:Connect(function()

    if not flyEnabled then
        return
    end

    local character = player.Character

    if not character then
        return
    end

    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local rootPart = character:FindFirstChild("HumanoidRootPart")

    if not humanoid or not rootPart then
        return
    end

    local direction = humanoid.MoveDirection
    local camera = workspace.CurrentCamera

    if direction.Magnitude > 0 then

        local lookVector = camera.CFrame.LookVector
        local rightVector = camera.CFrame.RightVector

        local forward = direction:Dot(lookVector)
        local right = direction:Dot(rightVector)

        local flyDirection =
            lookVector * forward
            + rightVector * right

        rootPart.AssemblyLinearVelocity =
            flyDirection * flySpeed

    else
        rootPart.AssemblyLinearVelocity =
            Vector3.new(0,0,0)
    end
end)


-- =========================
-- CLOSE BUTTON
-- =========================

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


-- =========================
-- OPEN BUTTON
-- =========================

local open = Instance.new("TextButton")
open.Text = "open flux"
open.TextSize = 18
open.Font = Enum.Font.GothamBold
open.AnchorPoint = Vector2.new(0.5,0)
open.Position = UDim2.new(0.5,0,0.1,0)
open.Size = UDim2.new(0,100,0,30)
open.BackgroundColor3 = Color3.fromHex("#16DB65")
open.TextColor3 = Color3.fromHex("#04471C")
open.Visible = false
open.Parent = screen

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


-- =========================
-- KEY CHECK
-- =========================

check.MouseButton1Click:Connect(function()

    if box.Text == "key-8719-1821-flux" then

        home.Visible = true
        key.Visible = false

    else

        box.Text = ""
        box.PlaceholderText = "Wrong key!"

        task.wait(1)

        box.PlaceholderText = "Input key"

    end
end)


-- =========================
-- CREDIT
-- =========================

local by = Instance.new("TextLabel")
by.Text = "by Vava22115"
by.Position = UDim2.new(0,10,1,-25)
by.Size = UDim2.new(0,100,0,20)
by.BackgroundTransparency = 1
by.TextSize = 11
by.Font = Enum.Font.GothamBold
by.TextColor3 = Color3.fromHex("#7DD3FC")
by.Parent = home