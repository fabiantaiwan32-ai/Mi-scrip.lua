-- SERVICIOS
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer

-- ======================
-- CREAR LA BOLA FLOTANTE
-- ======================
local ball = Instance.new("Part")
ball.Shape = Enum.PartType.Ball
ball.Size = Vector3.new(4,4,4)
ball.Color = Color3.fromRGB(0, 170, 255)
ball.Material = Enum.Material.Neon
ball.Anchored = true
ball.CanCollide = false
ball.Name = "FloatingBall"
ball.Parent = workspace

-- Posición inicial
local floatHeight = 6
local angle = 0

RunService.RenderStepped:Connect(function()
	if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
		angle += 0.05
		local root = player.Character.HumanoidRootPart
		ball.Position = root.Position + Vector3.new(0, floatHeight + math.sin(angle), 5)
	end
end)

-- ======================
-- CREAR LA GUI
-- ======================
local gui = Instance.new("ScreenGui")
gui.Name = "BallMenu"
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 180)
frame.Position = UDim2.new(0.5, -150, 0.5, -90)
frame.BackgroundColor3 = Color3.fromRGB(30,30,30)
frame.BorderSizePixel = 0
frame.Parent = gui

-- TÍTULO (PRIMERA DIAPOSITIVA)
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -40, 0, 50)
title.Position = UDim2.new(0, 20, 0, 40)
title.Text = "AUTO JOINER"
title.TextColor3 = Color3.new(1,1,1)
title.TextScaled = true
title.BackgroundTransparency = 1
title.Font = Enum.Font.GothamBold
title.Parent = frame

-- BOTÓN X (CERRAR / ABRIR)
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -35, 0, 5)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.new(1,1,1)
closeButton.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
closeButton.Font = Enum.Font.GothamBold
closeButton.TextScaled = true
closeButton.Parent = frame

-- BOTÓN PARA VOLVER A ABRIR
local openButton = Instance.new("TextButton")
openButton.Size = UDim2.new(0, 120, 0, 40)
openButton.Position = UDim2.new(0, 20, 0.8, 0)
openButton.Text = "Open Menu"
openButton.TextScaled = true
openButton.Visible = false
openButton.Parent = gui

-- FUNCIONALIDAD ABRIR / CERRAR
closeButton.MouseButton1Click:Connect(function()
	frame.Visible = false
	openButton.Visible = true
end)

openButton.MouseButton1Click:Connect(function()
	frame.Visible = true
	openButton.Visible = false
end)
