local log = hs.logger.new('init.lua', 'debug')

-- Use Control+` to reload Hammerspoon config
hs.hotkey.bind({'ctrl'}, '`', nil, function()
  hs.reload()
end)

keyUpDown = function(modifiers, key)
  -- Un-comment & reload config to log each keystroke that we're triggering
  -- log.d('Sending keystroke:', hs.inspect(modifiers), key)
  hs.eventtap.keyStroke(modifiers, key, 0)
end

-- Subscribe to the necessary events on the given window filter such that the
-- given hotkey is enabled for windows that match the window filter and disabled
-- for windows that don't match the window filter.
--
-- windowFilter - An hs.window.filter object describing the windows for which
--                the hotkey should be enabled.
-- hotkey       - The hs.hotkey object to enable/disable.
--
-- Returns nothing.
enableHotkeyForWindowsMatchingFilter = function(windowFilter, hotkey)
  windowFilter:subscribe(hs.window.filter.windowFocused, function()
    hotkey:enable()
  end)

  windowFilter:subscribe(hs.window.filter.windowUnfocused, function()
    hotkey:disable()
  end)
end

require('hyper')

hs.notify.new({title='Hammerspoon', informativeText='Ready to rock 🤘'}):send()
-- A global variable for the sub-key Hyper Mode

-- k = hs.hotkey.modal.new({}, 'F17')

-- -- Hyper-key for all the below are setup somewhere... Usually Keyboard Maestro or similar. Alfred doesn't handle them very well, so will set up separate bindings for individual apps below.

-- hyperBindings = {'§','c','m','a','b','d','e','f','g','h','i','j','k','l','m','n','p','q','r','t','1','2','3','4','5','6','7','8','9','0','d','g','s','f','TAB','v','b','O','-','s'}

-- for i,key in ipairs(hyperBindings) do
--   k:bind({}, key, nil, function() hs.eventtap.keyStroke({'cmd','alt','shift','ctrl'}, key)
--     k.triggered = true
--   end)
-- end

-- -- Code to launch single apps that Alfred used to handle.
-- -- Hat-Tip: https://gist.github.com/ttscoff/cce98a711b5476166792d5e6f1ac5907

-- launch = function(appname)
--   hs.application.launchOrFocus(appname)
--   k.triggered = true
-- end

-- -- Keybinding for specific single apps.

-- singleapps = {
--   {'o', '1Password 6'},
-- }

-- for i, app in ipairs(singleapps) do
--   k:bind({}, app[1], function() launch(app[2]); k:exit(); end)
-- end

-- -- Enter Hyper Mode when F18 is pressed

-- pressedF18 = function()
--   k.triggered = false
--   k:enter()
-- end

-- -- Leave Hyper Mode when F18 is pressed,
-- --   send ESCAPE if no other keys are pressed.

-- releasedF18 = function()
--   k:exit()
--   if not k.triggered then
--     hs.eventtap.keyStroke({}, 'ESCAPE')
--   end
-- end

-- -- Bind the Hyper key

-- f19 = hs.hotkey.bind({}, 'F18', pressedF18, releasedF18)

-- Miro window move/resize arrow keys - https://github.com/miromannino/hammerspoon-config

hyper = {"ctrl", "alt", "cmd"}
-- hypershift = {"ctrl", "alt", "cmd", "shift"}

require('watcher')
require('position')

