-- UI Bola Flotante - Base
local player = game.Players.LocalPlayer
local UIS = game:GetService("UserInputService")

-- ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "FloatingBallGUI"
gui.Parent = player:WaitForChild("PlayerGui")
gui.ResetOnSpawn = false

-- Bola
local ball = Instance.new("ImageButton")
ball.Parent = gui
ball.Size = UDim2.fromOffset(60,60)
ball.Position = UDim2.fromScale(0.1,0.5)
ball.BackgroundTransparency = 1
ball.Image = "rbxassetid://7072718368" -- círculo simple
ball.Draggable = true
ball.Active = true

-- Frame menú
local menu = Instance.new("Frame")
menu.Parent = gui
menu.Size = UDim2.fromOffset(220,330)
menu.Position = UDim2.fromScale(0.2,0.4)
menu.BackgroundColor3 = Color3.fromRGB(25,25,25)
menu.Visible = false
menu.BorderSizePixel = 0
menu.Active = true
menu.Draggable = true

-- UI corner
Instance.new("UICorner", menu).CornerRadius = UDim.new(0,12)

-- Layout
local layout = Instance.new("UIListLayout", menu)
layout.Padding = UDim.new(0,6)

-- Función botón
local function createButton(text)
	local btn = Instance.new("TextButton")
	btn.Size = UDim2.new(1,-12,0,32)
	btn.Text = text
	btn.BackgroundColor3 = Color3.fromRGB(40,40,40)
	btn.TextColor3 = Color3.new(1,1,1)
	btn.Font = Enum.Font.Gotham
	btn.TextSize = 13
	btn.Parent = menu
	Instance.new("UICorner", btn).CornerRadius = UDim.new(0,8)
	return btn
end

-- Botones
local buttons = {
	"Auto Block",
	"Teleport Base",
	"Teleport Block",
	"ESP Enemy",
	"ESP Base",
	"ESP Time",
	"ESP Best Brainrot",
	"ESP Money Brainrot",
	"Speed",
	"Auto Steal"
}

for _,name in ipairs(buttons) do
	createButton(name)
end

-- Toggle menú
ball.MouseButton1Click:Connect(function()
	menu.Visible = not menu.Visible
end)

