local log = hs.logger.new('init.lua', 'debug')




require('hyper')

hs.notify.new({title='Hammerspoon', informativeText='Ready to rock 🤘'}):send()


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



-- hypershift = {"ctrl", "alt", "cmd", "shift"}


require('watcher')
require('position')

