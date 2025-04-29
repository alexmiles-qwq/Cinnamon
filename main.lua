--[[

	Made my _alexmiles_
	
	
]]


local ver = 0.01
local link = ""

local Client = game.Players.LocalPlayer
local ClientGUI = Client.PlayerGui

local Cinnamon = ClientGUI:FindFirstChild("Cinnamon")
if Cinnamon then return end


-- [ UI ]

local ScreenGUI = Instance.new("ScreenGui")
ScreenGUI.Parent = ClientGUI
ScreenGUI.Name = "Cinnamon"
ScreenGUI.IgnoreGuiInset = true

local MainFrame = Instance.new("Frame")
MainFrame.Parent = ScreenGUI
MainFrame.Name = "Main"
MainFrame.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)


MainFrame.Size = UDim2.new(0.5, 0, 0.4, 0)

local Drag = Instance.new("UIDragDetector")
Drag.Parent = MainFrame

local UiCorner = Instance.new("UICorner")
UiCorner.Parent = MainFrame

local BindablesEventsFolder = Instance.new("Folder")
BindablesEventsFolder.Parent = ScreenGUI

local CloseButton = Instance.new("TextButton") 
CloseButton.Parent = MainFrame
CloseButton.Name = "Close"
CloseButton.BackgroundTransparency = 1

CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.new(1,1,1)
task.wait(1)
CloseButton.Position = UDim2.new(0.975, 0, 0.03)


local function print2(text)
	local txt = "[Cinnamon]: "..tostring(text)
	print(txt)
end

local function AddTab(tabname)
	
end



print2("Up and Running. Version "..tostring(ver))
print2("If you got this script not on github, please, report it to me.")

