-- ❄ Ice Hub Functions ❄
-- Safe UI Hub for your own Roblox Game
-- No exploits, no hacks

local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "IceHub"

-- MAIN FRAME
local main = Instance.new("Frame", gui)
main.Size = UDim2.fromScale(0.45, 0.55)
main.Position = UDim2.fromScale(0.275, 0.22)
main.BackgroundColor3 = Color3.fromRGB(20, 40, 80)
main.BorderSizePixel = 0

-- TITLE
local title = Instance.new("TextLabel", main)
title.Size = UDim2.new(1, 0, 0, 40)
title.Text = "❄ Ice Hub Functions ❄"
title.TextScaled = true
title.TextColor3 = Color3.fromRGB(180, 220, 255)
title.BackgroundTransparency = 1
title.Font = Enum.Font.GothamBold

-- TAB HOLDER
local tabs = Instance.new("Frame", main)
tabs.Position = UDim2.new(0, 0, 0, 45)
tabs.Size = UDim2.new(0.3, 0, 1, -45)
tabs.BackgroundColor3 = Color3.fromRGB(15, 30, 60)

-- CONTENT
local content = Instance.new("Frame", main)
content.Position = UDim2.new(0.3, 0, 0, 45)
content.Size = UDim2.new(0.7, 0, 1, -45)
content.BackgroundColor3 = Color3.fromRGB(25, 50, 90)

-- FUNCTIONS
local function createButton(parent, text, y)
	local btn = Instance.new("TextButton", parent)
	btn.Size = UDim2.new(1, -10, 0, 32)
	btn.Position = UDim2.new(0, 5, 0, y)
	btn.Text = "[ OFF ] " .. text
	btn.Font = Enum.Font.Gotham
	btn.TextColor3 = Color3.fromRGB(220, 240, 255)
	btn.BackgroundColor3 = Color3.fromRGB(40, 80, 140)

	local enabled = false
	btn.MouseButton1Click:Connect(function()
		enabled = not enabled
		btn.Text = (enabled and "[ ON ] " or "[ OFF ] ") .. text
		print("Ice Hub:", text, enabled)
	end)
end

-- MAIN TAB CONTENT
createButton(content, "Auto Steal Best", 10)
createButton(content, "Boogie Float", 50)
createButton(content, "Laser Cape & Web Slinger", 90)
createButton(content, "Speed Grapple", 130)
createButton(content, "Floor Ability", 170)
createButton(content, "Instant Cloner", 210)
createButton(content, "TP To Highest Pet", 250)

-- INFO LABEL
local info = Instance.new("TextLabel", content)
info.Position = UDim2.new(0, 0, 0, 300)
info.Size = UDim2.new(1, 0, 0, 60)
info.TextWrapped = true
info.TextScaled = true
info.Text = "Ice Hub UI Demo\nFunctions are for your own game logic."
info.BackgroundTransparency = 1
info.TextColor3 = Color3.fromRGB(150, 200, 255)
info.Font = Enum.Font.Gotham
