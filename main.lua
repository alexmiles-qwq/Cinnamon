--[[

	Made my _alexmiles_
	
	
]]


local ver = 0.01
local link = "github.com/alexmiles-qwq/Cinnamon"

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

local TextLogo = Instance.new("TextLabel")
TextLogo.Name = "TextLogo"
TextLogo.Parent = MainFrame

TextLogo.Text = "Cinnamon"
TextLogo.Font = Enum.Font.Jura
TextLogo.TextColor3 = Color3.new(1,1,1)
TextLogo.TextSize = 24

TextLogo.Position = UDim2.new(0.115, 0, 0.05, 0)

local Tabs = Instance.new("ScrollingFrame")
Tabs.Parent = MainFrame
Tabs.Size = UDim2.new(1, 0, 0.1, 0)
Tabs.Position = UDim2.new(0.0, 0, 0.115, 0)
Tabs.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
Tabs.BorderSizePixel = 0
Tabs.Name = "Tabs Switchers"

local layout = Instance.new("UIListLayout")
layout.Parent = Tabs
layout.Wraps = true
layout.FillDirection = Enum.FillDirection.Horizontal

MainFrame.Size = UDim2.new(0.45, 0, 0.45, 0)

local TabsContainer = Instance.new("Frame")
TabsContainer.Parent = MainFrame
TabsContainer.Name = "Tabs Container"
TabsContainer.Size = UDim2.new(1, 0, 0.755, 0)
TabsContainer.Position = UDim2.new(0, 0, 0.255, 0)

TabsContainer.BorderSizePixel = 0
TabsContainer.BackgroundTransparency = 1


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


local TabsList = {}


--[[
	Just adds Cinnamon prefix for each print.
]]
local function print2(text)
	local txt = "[Cinnamon]: "..tostring(text)
	print(txt)
end

--[[
	Same thing to print2 but warn.
]]
local function warn2(text)
	local txt = "[Cinnamon]: "..tostring(text)
	warn(txt)
end

--[[
	Same thing to print2 but error.
]]
local function error2(text)
	local txt = "[Cinnamon]: "..tostring(text)
	error(txt)
end

--[[
	Change active tab
]]
local function ChangeToTab(tabname)
	-- Disable all tabs
	for i, tab in pairs(TabsList) do
		tab.Frame.Visible = false

		if tab.Name == tabname then
			tab.Frame.Visible = true
		end
	end
end

--[[
	Add tabs into the ui.
]]
local function AddTab(tabname)
	local tab = Instance.new("TextButton")
	tab.Parent = Tabs
	tab.Name = tabname
	tab.Size = UDim2.new(0.35, 0, 0.05, 0)
	tab.Text = tabname
	
							-- {0.5, 0},{0.05, 0}
	
	
	local Frm = Instance.new("Frame")
	Frm.Size = UDim2.new(1, 0, 1, 0)
	Frm.Parent = TabsContainer
	Frm.BackgroundTransparency = 1
	Frm.BorderSizePixel = 0
	Frm.Visible = false
	
	Frm.Name = tabname
	
	tab.Activated:Connect(function()
		ChangeToTab(tabname)
	end)
	
	
	local Returnable = {}
	Returnable.Name = tabname
	Returnable.Button = tab
	Returnable.Frame = Frm
	
	table.insert(TabsList, Returnable)
	
	
	
	return Returnable
end

--[[
	Adds a button into your tab.
]]
local function AddButton(tab, onActivate)
	local Btn = Instance.new("TextButton")
	Btn.Parent = tab.Frame
	Btn.Name = "Test"
	Btn.Size = UDim2.new(0.95, 0, 0.05, 0)
	Btn.BackgroundTransparency = 0.5
	Btn.BackgroundColor3 = Color3.new(1,1,1)
	Btn.Text = "Test"
	Btn.TextColor3 = Color3.new(0,0,0)
	Btn.TextSize = 20
	local connection = Btn.Activated:Connect(function()
		onActivate()
	end)
	
	return Btn, connection
end

-- [ MAIN CODE ]



local MainTab = AddTab("Main")


-- Test2
local TestTab2 = AddTab("Test")
local TestButton, TBC = AddButton(TestTab2, function()
	print2("Test")
end)



print2("Up and Running. Version "..tostring(ver))
print2("Source code on "..link)





