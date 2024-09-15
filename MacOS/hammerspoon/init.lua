local hyper = { "cmd", "alt", "ctrl", "shift" }

function appSwitcher(bundleID)
	hs.application.launchOrFocusByBundleID(bundleID)
end

-- Hide app intead of switching off
function switchToAndFromApp(bundleID)
	local focusedWindow = hs.window.focusedWindow()
	local focusedApp = nil
	if focusedWindow then
		focusedApp = focusedWindow:application()
	end

	if not focusedWindow then
		hs.application.launchOrFocusByBundleID(bundleID)
	elseif focusedApp:bundleID() == bundleID then
		focusedApp:hide() -- Hide the currently focused application
	else
		previousApp = focusedApp
		hs.application.launchOrFocusByBundleID(bundleID)
	end
end

-- Bind the function to the hotkey in a lambda to use the enhanced switch function
hs.hotkey.bind(hyper, "A", function()
	switchToAndFromApp("company.thebrowser.Browser")
end) -- arc
hs.hotkey.bind(hyper, "B", function()
	switchToAndFromApp("com.bitwarden.desktop")
end) -- bitwarden
hs.hotkey.bind(hyper, "C", function()
	switchToAndFromApp("com.apple.Safari.WebApp.45DA8B15-A990-4B5A-A00C-C9DDD9CDA921")
end) -- google calendar
hs.hotkey.bind(hyper, "D", function()
	switchToAndFromApp("com.hnc.Discord")
end) -- discord
hs.hotkey.bind(hyper, "E", function()
	switchToAndFromApp("com.apple.mail")
end) -- apple mail
hs.hotkey.bind(hyper, "F", function()
	switchToAndFromApp("com.apple.finder")
end) -- finder
hs.hotkey.bind(hyper, "L", function()
	switchToAndFromApp("com.tinyspeck.slackmacgap")
end) -- slack
hs.hotkey.bind(hyper, "M", function()
	switchToAndFromApp("com.apple.MobileSMS")
end) -- messages
hs.hotkey.bind(hyper, "N", function()
	switchToAndFromApp("notion.id")
end) -- notino
hs.hotkey.bind(hyper, "O", function()
	switchToAndFromApp("md.obsidian")
end) -- obsidian
hs.hotkey.bind(hyper, "P", function()
	switchToAndFromApp("com.apple.iBooksX")
end) -- books
hs.hotkey.bind(hyper, "Q", function()
	switchToAndFromApp("com.apple.Notes")
end) -- notes
hs.hotkey.bind(hyper, "R", function()
	switchToAndFromApp("com.apple.reminders")
end) -- reminders
hs.hotkey.bind(hyper, "U", function()
	switchToAndFromApp("com.apple.Music")
end) -- apple music
hs.hotkey.bind(hyper, "V", function()
	switchToAndFromApp("com.microsoft.VSCode")
end) -- vscode
hs.hotkey.bind(hyper, "W", function()
	switchToAndFromApp("dev.warp.Warp-Stable")
end) -- warp
hs.hotkey.bind(hyper, "X", function()
	switchToAndFromApp("com.apple.findmy")
end) -- chat gpt
hs.hotkey.bind(hyper, "Y", function()
	switchToAndFromApp("com.openai.chat")
end) -- chat gpt
hs.hotkey.bind(hyper, "Z", function()
	switchToAndFromApp("com.github.wez.wezterm")
end) -- wezterm

-- NOTE: Still have G, H, I, J, K, S, T, available

-- show the bundleid of the currently open window
hs.hotkey.bind(hyper, "`", function()
	local bundleID = hs.window.focusedWindow():application():bundleID()
	hs.alert.show(bundleID)
	hs.pasteboard.setContents(bundleID)
end)
