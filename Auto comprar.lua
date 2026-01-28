-- Variables
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = playerGui

-- Crear la bola flotante
local ballFrame = Instance.new("Frame")
ballFrame.Size = UDim2.new(0, 100, 0, 100)
ballFrame.Position = UDim2.new(0.5, -50, 0.5, -50)
ballFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ballFrame.BackgroundTransparency = 0.5
ballFrame.Parent = screenGui

local ball = Instance.new("TextLabel")
ball.Size = UDim2.new(1, 0, 1, 0)
ball.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
ball.Text = ""
ball.Parent = ballFrame

-- Botón para cerrar/abrir
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -30, 0, 0)
closeButton.Text = "X"
closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Parent = ballFrame

-- Opciones de Auto shop
local autoShopOnButton = Instance.new("TextButton")
autoShopOnButton.Size = UDim2.new(0, 150, 0, 50)
autoShopOnButton.Position = UDim2.new(0.5, -75, 1, 10)
autoShopOnButton.Text = "Auto Shop On"
autoShopOnButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
autoShopOnButton.TextColor3 = Color3.fromRGB(0, 0, 0)
autoShopOnButton.Visible = false
autoShopOnButton.Parent = screenGui

local autoShopOffButton = Instance.new("TextButton")
autoShopOffButton.Size = UDim2.new(0, 150, 0, 50)
autoShopOffButton.Position = UDim2.new(0.5, -75, 1, 70)
autoShopOffButton.Text = "Auto Shop Off"
autoShopOffButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
autoShopOffButton.TextColor3 = Color3.fromRGB(0, 0, 0)
autoShopOffButton.Visible = false
autoShopOffButton.Parent = screenGui

-- Función para alternar la visibilidad de la bola y las opciones
local menuVisible = false
closeButton.MouseButton1Click:Connect(function()
    menuVisible = not menuVisible
    if menuVisible then
        autoShopOnButton.Visible = true
        autoShopOffButton.Visible = true
    else
        autoShopOnButton.Visible = false
        autoShopOffButton.Visible = false
    end
end)

-- Función para activar/desactivar Auto Shop
local autoShopActive = false
autoShopOnButton.MouseButton1Click:Connect(function()
    autoShopActive = true
    print("Auto Shop activado")
    -- Aquí puedes agregar el código específico para activar Auto Shop
end)

autoShopOffButton.MouseButton1Click:Connect(function()
    autoShopActive = false
    print("Auto Shop desactivado")
    -- Aquí puedes agregar el código específico para desactivar Auto Shop
end)

