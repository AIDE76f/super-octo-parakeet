-- GUI
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Button = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Frame.Size = UDim2.new(0, 200, 0, 100)
Frame.Position = UDim2.new(0.4, 0, 0.4, 0)
Frame.Active = true
Frame.Draggable = true

Button.Parent = Frame
Button.Size = UDim2.new(1, -20, 1, -20)
Button.Position = UDim2.new(0, 10, 0, 10)
Button.Text = "Collect All"
Button.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
Button.TextScaled = true

-- الفكرة الأساسية
Button.MouseButton1Click:Connect(function()
    for i, v in pairs(game:GetDescendants()) do
        if v:IsA("RemoteEvent") then
            if string.find(v.Name:lower(), "collect") then
                pcall(function()
                    v:FireServer()
                end)
            end
        end
    end
end)
