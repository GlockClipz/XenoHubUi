Xeno = {}
	function Xeno.CreateLib(HubName, GameName)
	--Extra Props
		local XenoHub = Instance.new("ScreenGui")
		local MainFrame = Instance.new("Frame")
		local LeftSide = Instance.new("Frame")
		local LeftSideCorner = Instance.new("UICorner")
		local Hubname = Instance.new("TextLabel")
		local Gamename = Instance.new("TextLabel")
		local LeftShading = Instance.new("ImageLabel")
		local TabHolder = Instance.new("ScrollingFrame")
		local TabHolderList = Instance.new("UIListLayout")
		local MainFrameCorner = Instance.new("UICorner")
		local RightShading = Instance.new("ImageLabel")
		local Pages = Instance.new("Folder")


		XenoHub.Name = "XenoHub"
		XenoHub.Parent = game.CoreGui
			MainFrame.Name = "MainFrame"
		MainFrame.Parent = XenoHub
		MainFrame.BackgroundColor3 = Color3.fromRGB(41, 41, 48)
				MainFrame.Position = UDim2.new(0.446397185, 0, 0.38574937, 0)
				MainFrame.Size = UDim2.new(0, 587, 0, 393)

				LeftSide.Name = "LeftSide"
				LeftSide.Parent = MainFrame
				LeftSide.BackgroundColor3 = Color3.fromRGB(34, 33, 40)
				LeftSide.Size = UDim2.new(0, 160, 0, 393)
				LeftSide.ZIndex = 2

				LeftSideCorner.CornerRadius = UDim.new(0, 3)
				LeftSideCorner.Name = "LeftSideCorner"
				LeftSideCorner.Parent = LeftSide

				Hubname.Name = "Hubname"
				Hubname.Parent = LeftSide
				Hubname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Hubname.BackgroundTransparency = 1.000
				Hubname.Position = UDim2.new(0.0625, 0, 0.0254452918, 0)
				Hubname.Size = UDim2.new(0, 142, 0, 36)
				Hubname.ZIndex = 3
				Hubname.Font = Enum.Font.GothamBold
				Hubname.Text = HubName
				Hubname.TextColor3 = Color3.fromRGB(255, 255, 255)
				Hubname.TextSize = 21.000
				Hubname.TextXAlignment = Enum.TextXAlignment.Left

				Gamename.Name = "Gamename"
				Gamename.Parent = LeftSide
				Gamename.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Gamename.BackgroundTransparency = 1.000
				Gamename.Position = UDim2.new(0.0625, 0, 0.117048353, 0)
				Gamename.Size = UDim2.new(0, 142, 0, 36)
				Gamename.ZIndex = 3
				Gamename.Font = Enum.Font.GothamSemibold
				Gamename.Text = GameName
				Gamename.TextColor3 = Color3.fromRGB(255, 255, 255)
				Gamename.TextSize = 14.000
				Gamename.TextTransparency = 0.450
				Gamename.TextXAlignment = Enum.TextXAlignment.Left
				Gamename.TextYAlignment = Enum.TextYAlignment.Top

				LeftShading.Name = "LeftShading"
				LeftShading.Parent = LeftSide
				LeftShading.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LeftShading.BackgroundTransparency = 1.000
				LeftShading.Position = UDim2.new(-0.0562499985, 0, -0.055979643, 0)
				LeftShading.Size = UDim2.new(0, 177, 0, 435)
				LeftShading.Image = "rbxassetid://4996891970"
				LeftShading.ImageColor3 = Color3.fromRGB(20, 20, 20)

				TabHolder.Name = "TabHolder"
				TabHolder.Parent = LeftSide
				TabHolder.Active = true
				TabHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TabHolder.BackgroundTransparency = 1.000
				TabHolder.BorderSizePixel = 0
				TabHolder.Position = UDim2.new(0.0625, 0, 0.19338423, 0)
				TabHolder.Size = UDim2.new(0, 142, 0, 306)
				TabHolder.ZIndex = 2
				TabHolder.ScrollBarThickness = 4

				TabHolderList.Name = "TabHolderList"
				TabHolderList.Parent = TabHolder
				TabHolderList.SortOrder = Enum.SortOrder.LayoutOrder
				TabHolderList.Padding = UDim.new(0, 2)

				MainFrameCorner.CornerRadius = UDim.new(0, 3)
				MainFrameCorner.Name = "MainFrameCorner"
				MainFrameCorner.Parent = MainFrame

				RightShading.Name = "RightShading"
				RightShading.Parent = MainFrame
				RightShading.Active = true
				RightShading.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				RightShading.BackgroundTransparency = 1.000
				RightShading.Position = UDim2.new(0.228279382, 0, -0.055979643, 0)
				RightShading.Size = UDim2.new(0, 471, 0, 435)
				RightShading.ZIndex = 3
				RightShading.Image = "rbxassetid://4996891970"
				RightShading.ImageColor3 = Color3.fromRGB(20, 20, 20)

				Pages.Name = "Pages"
				Pages.Parent = MainFrame
				local UIS = game:GetService('UserInputService')
				local frame = MainFrame
				local dragToggle = nil
				local dragSpeed = 0.25
				local dragStart = nil
				local startPos = nil

				local function updateInput(input)
					local delta = input.Position - dragStart
					local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
						startPos.Y.Scale, startPos.Y.Offset + delta.Y)
					game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
				end

				frame.InputBegan:Connect(function(input)
					if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
						dragToggle = true
						dragStart = input.Position
						startPos = frame.Position
						input.Changed:Connect(function()
							if input.UserInputState == Enum.UserInputState.End then
								dragToggle = false
							end
						end)
					end
				end)

				UIS.InputChanged:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
						if dragToggle then
							updateInput(input)
						end
					end
				end)

	
	--End of proper tie
	
	
	
	
	

		local EpicLibary = {}
		local first = true
		function EpicLibary:CreateTab(Tabname)
				--Valurables
				local Page = Instance.new("ScrollingFrame")
				local PageList = Instance.new("UIListLayout")

				Page.Name = "Page"
				Page.Parent = Pages
				Page.Active = true
				Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Page.BackgroundTransparency = 1.000
				Page.BorderSizePixel = 0
				Page.Position = UDim2.new(0.294718921, 0, 0.0279898196, 0)
				Page.Size = UDim2.new(0, 400, 0, 370)
				Page.ScrollBarThickness = 4

				PageList.Name = "PageList"
				PageList.Parent = Page
				PageList.SortOrder = Enum.SortOrder.LayoutOrder
				PageList.Padding = UDim.new(0, 2)

				local TabButton = Instance.new("Frame")
				local TabButtonCorner = Instance.new("UICorner")
				local TabButtonName = Instance.new("TextLabel")
				local TabButtonTrigger = Instance.new("TextButton")

				TabButton.Name = "TabButton"
				TabButton.Parent = TabHolder
				TabButton.BackgroundColor3 = Color3.fromRGB(41, 41, 48)
				TabButton.BackgroundTransparency = 0.800
				TabButton.Size = UDim2.new(0, 128, 0, 44)
				TabButton.ZIndex = 2

				TabButtonCorner.CornerRadius = UDim.new(0, 4)
				TabButtonCorner.Name = "TabButtonCorner"
				TabButtonCorner.Parent = TabButton

				TabButtonName.Name = "TabButtonName"
				TabButtonName.Parent = TabButton
				TabButtonName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TabButtonName.BackgroundTransparency = 1.000
				TabButtonName.Position = UDim2.new(0.0967741013, 0, 0.13636364, 0)
				TabButtonName.Size = UDim2.new(0, 110, 0, 31)
				TabButtonName.ZIndex = 2
				TabButtonName.Font = Enum.Font.GothamSemibold
				TabButtonName.Text = Tabname
				TabButtonName.TextColor3 = Color3.fromRGB(255, 255, 255)
				TabButtonName.TextSize = 15.000
				TabButtonName.TextXAlignment = Enum.TextXAlignment.Left

				TabButtonTrigger.Name = "TabButtonTrigger"
				TabButtonTrigger.Parent = TabButton
				TabButtonTrigger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TabButtonTrigger.BackgroundTransparency = 1.000
				TabButtonTrigger.Size = UDim2.new(0, 124, 0, 44)
				TabButtonTrigger.ZIndex = 2
				TabButtonTrigger.Font = Enum.Font.SourceSans
				TabButtonTrigger.Text = ""
				TabButtonTrigger.TextColor3 = Color3.fromRGB(0, 0, 0)
				TabButtonTrigger.TextSize = 14.000
				if first == true then
					first = false
					TabButton.BackgroundColor3 = Color3.fromRGB(73, 73, 86)
					Page.Visible = true
				else
					TabButton.BackgroundColor3 = Color3.fromRGB(41, 41, 48)
					Page.Visible = false
				end
				TabButtonTrigger.MouseButton1Down:Connect(function()
					for i,v in pairs(Pages:GetChildren()) do
						v.Visible = false
					end
					for i,v in pairs(TabHolder:GetChildren()) do
						if v:IsA("Frame") then
							v.BackgroundColor3 = Color3.fromRGB(41, 41, 48)
						end
					end
					TabButton.BackgroundColor3 = Color3.fromRGB(73, 73, 86)
					Page.Visible = true
					print(Page.Name)
				end)
				local Sections = {}
				
				function Sections:NewSection(secName)
						local Label = Instance.new("Frame")
						local LabelName = Instance.new("TextLabel")
						local LabelCorner = Instance.new("UICorner")

						

						Label.Name = "Section"
						Label.Parent = Page
						Label.BackgroundColor3 = Color3.fromRGB(34, 34, 42)
						Label.BorderSizePixel = 0
						Label.Size = UDim2.new(0, 390, 0, 35)
						Label.ZIndex = 4

						LabelName.Name = "Section"
						LabelName.Parent = Label
						LabelName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						LabelName.BackgroundTransparency = 1.000
						LabelName.Position = UDim2.new(0.0794871747, 0, 0.114285715, 0)
						LabelName.Size = UDim2.new(0, 327, 0, 26)
						LabelName.ZIndex = 5
						LabelName.Font = Enum.Font.Gotham
						LabelName.Text = secName
						LabelName.TextColor3 = Color3.fromRGB(204, 204, 204)
						LabelName.TextSize = 14.000

						LabelCorner.CornerRadius = UDim.new(0, 4)
						LabelCorner.Name = "SectionCorner"
						LabelCorner.Parent = Label
			
							local Elements = {}
				
							function Elements:NewButton(bname, callback)
								bname = bname or "Click Me!"
								callback = callback or function() end

								local Button = Instance.new("Frame")
								local ButtonName = Instance.new("TextLabel")
								local ButtonCorner = Instance.new("UICorner")
								local ButtonTrigger = Instance.new("TextButton")


								Button.Name = "Button"
								Button.Parent = Page
								Button.BackgroundColor3 = Color3.fromRGB(34, 34, 42)
								Button.BorderSizePixel = 0
								Button.Position = UDim2.new(0, 0, 0.35945946, 0)
								Button.Size = UDim2.new(0, 390, 0, 42)
								Button.ZIndex = 4

								ButtonName.Name = "ButtonName"
								ButtonName.Parent = Button
								ButtonName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								ButtonName.BackgroundTransparency = 1.000
								ButtonName.Position = UDim2.new(0.025641026, 0, 0.185713992, 0)
								ButtonName.Size = UDim2.new(0, 380, 0, 26)
								ButtonName.ZIndex = 5
								ButtonName.Font = Enum.Font.GothamSemibold
								ButtonName.Text = bname
								ButtonName.TextColor3 = Color3.fromRGB(204, 204, 204)
								ButtonName.TextSize = 14.000

								ButtonCorner.CornerRadius = UDim.new(0, 4)
								ButtonCorner.Name = "ButtonCorner"
								ButtonCorner.Parent = Button

								ButtonTrigger.Name = "ButtonTrigger"
								ButtonTrigger.Parent = Button
								ButtonTrigger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								ButtonTrigger.BackgroundTransparency = 1.000
								ButtonTrigger.Size = UDim2.new(0, 390, 0, 42)
								ButtonTrigger.Font = Enum.Font.SourceSans
								ButtonTrigger.TextColor3 = Color3.fromRGB(0, 0, 0)
								ButtonTrigger.TextSize = 14.000
								
							local btn = ButtonTrigger
						
							btn.MouseButton1Click:Connect(function()
								if not focusing then
									callback()
								end
							end)

								

							end	
					
							function Elements:NewToggle(tname, callback)
								local TogFunction = {}
								tname = tname or "Toggle"
								callback = callback or function() end
								local toggled = false

								local Toggle = Instance.new("Frame")
								local ToggleName = Instance.new("TextLabel")
								local ToggleCorner = Instance.new("UICorner")
								local ToggleOut = Instance.new("ImageLabel")
								local ToggleIn = Instance.new("ImageLabel")
								local ToggleTrigger = Instance.new("TextButton")

								--Properties:

								Toggle.Name = "Toggle"
								Toggle.Parent = Page
								Toggle.BackgroundColor3 = Color3.fromRGB(34, 34, 42)
								Toggle.BorderSizePixel = 0
								Toggle.Position = UDim2.new(0, 0, 0.100000001, 0)
								Toggle.Size = UDim2.new(0, 390, 0, 42)
								Toggle.ZIndex = 4

								ToggleName.Name = "ToggleName"
								ToggleName.Parent = Toggle
								ToggleName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								ToggleName.BackgroundTransparency = 1.000
								ToggleName.Position = UDim2.new(0.0256410278, 0, 0.185713992, 0)
								ToggleName.Size = UDim2.new(0, 316, 0, 26)
								ToggleName.ZIndex = 5
								ToggleName.Font = Enum.Font.GothamSemibold
								ToggleName.Text = "Toggle"
								ToggleName.TextColor3 = Color3.fromRGB(204, 204, 204)
								ToggleName.TextSize = 14.000
								ToggleName.TextXAlignment = Enum.TextXAlignment.Left

								ToggleCorner.CornerRadius = UDim.new(0, 4)
								ToggleCorner.Name = "ToggleCorner"
								ToggleCorner.Parent = Toggle

								ToggleOut.Name = "ToggleOut"
								ToggleOut.Parent = Toggle
								ToggleOut.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								ToggleOut.BackgroundTransparency = 1.000
								ToggleOut.Position = UDim2.new(0.910256386, 0, 0.376190245, 0)
								ToggleOut.Size = UDim2.new(0, 22, 0, 10)
								ToggleOut.ZIndex = 5
								ToggleOut.Image = "rbxassetid://3570695787"
								ToggleOut.ImageColor3 = Color3.fromRGB(190, 190, 190)
								ToggleOut.ScaleType = Enum.ScaleType.Slice
								ToggleOut.SliceCenter = Rect.new(100, 100, 100, 100)
								ToggleOut.SliceScale = 0.200

								ToggleIn.Name = "ToggleIn"
								ToggleIn.Parent = Toggle
								ToggleIn.BackgroundColor3 = Color3.fromRGB(50, 200, 60)
								ToggleIn.BackgroundTransparency = 1.000
								ToggleIn.Position = UDim2.new(0.899999976, 1, 0.328999996, 0)
								ToggleIn.Size = UDim2.new(0, 14, 0, 14)
								ToggleIn.ZIndex = 5
								ToggleIn.Image = "rbxassetid://3570695787"
								ToggleIn.ScaleType = Enum.ScaleType.Slice
								ToggleIn.SliceCenter = Rect.new(100, 100, 100, 100)
								ToggleIn.SliceScale = 0.200

								ToggleTrigger.Name = "ToggleTrigger"
								ToggleTrigger.Parent = Toggle
								ToggleTrigger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								ToggleTrigger.BackgroundTransparency = 1.000
								ToggleTrigger.Size = UDim2.new(0, 390, 0, 42)
								ToggleTrigger.Font = Enum.Font.SourceSans
								ToggleTrigger.TextColor3 = Color3.fromRGB(0, 0, 0)
								ToggleTrigger.TextSize = 14.000
								

							ToggleTrigger.MouseButton1Click:Connect(function()
									if toggled then		
										local TS = game:GetService("TweenService")
										local TWInfo = TweenInfo.new(0.5,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
										local Properties = {
											ImageColor3 = Color3.fromRGB(255, 255, 255)
										}

										local Prop = {
											Position = UDim2.new(0.9, 1, 0.329, 0)
										}




										local Create = TS:Create(ToggleOut, TWInfo, Properties)
										local Creates = TS:Create(ToggleIn, TWInfo, Prop)

										Create:Play()
										Creates:Play()
										toggled = not toggled
										pcall(callback, toggled)
									else
										local TS = game:GetService("TweenService")
										local TWInfo = TweenInfo.new(0.5,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
										local Properties = {
											ImageColor3 = Color3.fromRGB(50, 200, 60)
										}

										local Prop = {
											Position = UDim2.new(0.9, 12,0.329, 0)
										}



										local Create = TS:Create(ToggleOut, TWInfo, Properties)
										local Creates = TS:Create(ToggleIn, TWInfo, Prop)

										Create:Play()
										Creates:Play()
										toggled = true
										pcall(callback, toggled)


									end
							end)
							end
					
							function Elements:NewTextBox(tname, callback)
								-- Gui to Lua
								-- Version: 3.2

								-- Instances:

								local Textbox = Instance.new("Frame")
								local TextboxName = Instance.new("TextLabel")
								local TextboxCorner = Instance.new("UICorner")
								local TextBoxInput = Instance.new("TextBox")
								local TextboxInputCorner = Instance.new("UICorner")

								--Properties:

								Textbox.Name = "Textbox"
								Textbox.Parent = Page
								Textbox.BackgroundColor3 = Color3.fromRGB(34, 34, 42)
								Textbox.BorderSizePixel = 0
								Textbox.Position = UDim2.new(0, 0, 0.100000001, 0)
								Textbox.Size = UDim2.new(0, 390, 0, 42)
								Textbox.ZIndex = 4

								TextboxName.Name = "TextboxName"
								TextboxName.Parent = Textbox
								TextboxName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								TextboxName.BackgroundTransparency = 1.000
								TextboxName.Position = UDim2.new(0.025641026, 0, 0.185713992, 0)
								TextboxName.Size = UDim2.new(0, 183, 0, 26)
								TextboxName.ZIndex = 5
								TextboxName.Font = Enum.Font.GothamSemibold
								TextboxName.Text = tname
								TextboxName.TextColor3 = Color3.fromRGB(204, 204, 204)
								TextboxName.TextSize = 14.000
								TextboxName.TextXAlignment = Enum.TextXAlignment.Left

								TextboxCorner.CornerRadius = UDim.new(0, 4)
								TextboxCorner.Name = "TextboxCorner"
								TextboxCorner.Parent = Textbox

								TextBoxInput.Name = "TextBoxInput"
								TextBoxInput.Parent = Textbox
								TextBoxInput.BackgroundColor3 = Color3.fromRGB(31, 30, 38)
								TextBoxInput.BorderSizePixel = 0
								TextBoxInput.Position = UDim2.new(0.530517876, 0, 0.166666672, 0)
								TextBoxInput.Size = UDim2.new(0, 177, 0, 26)
								TextBoxInput.ZIndex = 5
								TextBoxInput.Font = Enum.Font.Gotham
								TextBoxInput.PlaceholderText = "Enter text .."
								TextBoxInput.Text = ""
								TextBoxInput.TextColor3 = Color3.fromRGB(0, 0, 0)
								TextBoxInput.TextSize = 14.000

								TextboxInputCorner.CornerRadius = UDim.new(0, 4)
								TextboxInputCorner.Name = "TextboxInputCorner"
								TextboxInputCorner.Parent = TextBoxInput
							
							TextBoxInput.FocusLost:Connect(function(EnterPressed)
										if not EnterPressed then 
											return
										else
											callback(TextBoxInput.Text)
											wait(0.18)
											TextBoxInput.Text = ""  
										end
						end)
						pcall(callback)
							end
			
							function Elements:NewSlider(tname, maxvalue, minvalue, callback)

								local Slider = Instance.new("Frame")
								local SliderName = Instance.new("TextLabel")
								local SliderCorner = Instance.new("UICorner")
								local SliderValue = Instance.new("TextLabel")
								local SliderOut = Instance.new("ImageLabel")
								local SliderIn = Instance.new("ImageLabel")
								local SliderCircle = Instance.new("ImageButton")

								--Properties:

								Slider.Name = "Slider"
								Slider.Parent = Page
								Slider.BackgroundColor3 = Color3.fromRGB(34, 34, 42)
								Slider.BorderSizePixel = 0
								Slider.Position = UDim2.new(0, 0, 0.337837845, 0)
								Slider.Size = UDim2.new(0, 390, 0, 50)
								Slider.ZIndex = 4

								SliderName.Name = "SliderName"
								SliderName.Parent = Slider
								SliderName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								SliderName.BackgroundTransparency = 1.000
								SliderName.Position = UDim2.new(0.025641026, 0, 0.185714111, 0)
								SliderName.Size = UDim2.new(0, 300, 0, 20)
								SliderName.ZIndex = 5
								SliderName.Font = Enum.Font.GothamSemibold
								SliderName.Text = tname
								SliderName.TextColor3 = Color3.fromRGB(204, 204, 204)
								SliderName.TextSize = 14.000
								SliderName.TextXAlignment = Enum.TextXAlignment.Left

								SliderCorner.CornerRadius = UDim.new(0, 4)
								SliderCorner.Name = "SliderCorner"
								SliderCorner.Parent = Slider

								SliderValue.Name = "SliderValue"
								SliderValue.Parent = Slider
								SliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								SliderValue.BackgroundTransparency = 1.000
								SliderValue.Position = UDim2.new(0.858974338, 0, 0.185714111, 0)
								SliderValue.Size = UDim2.new(0, 50, 0, 20)
								SliderValue.ZIndex = 5
								SliderValue.Font = Enum.Font.GothamSemibold
								SliderValue.Text = "50"
								SliderValue.TextColor3 = Color3.fromRGB(204, 204, 204)
								SliderValue.TextSize = 14.000
								SliderValue.TextXAlignment = Enum.TextXAlignment.Right

								SliderOut.Name = "SliderOut"
								SliderOut.Parent = Slider
								SliderOut.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								SliderOut.BackgroundTransparency = 1.000
								SliderOut.Position = UDim2.new(0.025641026, 0, 0.699999988, 0)
								SliderOut.Size = UDim2.new(0, 374, 0, 7)
								SliderOut.ZIndex = 5
								SliderOut.Image = "rbxassetid://3570695787"
								SliderOut.ImageColor3 = Color3.fromRGB(181, 181, 181)
								SliderOut.ScaleType = Enum.ScaleType.Slice
								SliderOut.SliceCenter = Rect.new(100, 100, 100, 100)
								SliderOut.SliceScale = 0.200

								SliderIn.Name = "SliderIn"
								SliderIn.Parent = SliderOut
								SliderIn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								SliderIn.BackgroundTransparency = 1.000
								SliderIn.Size = UDim2.new(0, 187, 0, 7)
								SliderIn.ZIndex = 5
								SliderIn.Image = "rbxassetid://3570695787"
								SliderIn.ImageColor3 = Color3.fromRGB(5, 163, 255)
								SliderIn.ScaleType = Enum.ScaleType.Slice
								SliderIn.SliceCenter = Rect.new(100, 100, 100, 100)
								SliderIn.SliceScale = 0.200

								SliderCircle.Name = "SliderCircle"
								SliderCircle.Parent = SliderOut
								SliderCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								SliderCircle.BackgroundTransparency = 1.000
								SliderCircle.Position = UDim2.new(0.491716564, 0, -0.57099998, 0)
								SliderCircle.Size = UDim2.new(0, 13, 0, 13)
								SliderCircle.ZIndex = 5
								SliderCircle.Image = "rbxassetid://3570695787"
								SliderCircle.ImageColor3 = Color3.fromRGB(7, 145, 236)
								SliderCircle.SliceScale = 5.000
			 				end				
				return Elements			
			end
		
		
		
			return Sections
		end
		return EpicLibary

end

