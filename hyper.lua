-- A global variable for Hyper Mode
hyperMode = hs.hotkey.modal.new({}, 'F19')

-- Keybindings for launching apps in Hyper Mode
hyperModeAppMappings = {
  { 'i', 'iTunes' },                
  { 'a', 'Safari' },                
  { 'v', 'nvALT' },                
  { 'c', 'Google Chrome' },         
  { 't', 'Tower' },                    
  { 'k', 'Keyboard Maestro' },                    
  { 's', 'Sublime Text' },             
  { 'f', 'Finder' },                
  { 'e', 'Mailplane 3' },           
  { '1', 'iTerm' },                 
}

for i, mapping in ipairs(hyperModeAppMappings) do
  hyperMode:bind({}, mapping[1], function()
    hs.application.launchOrFocus(mapping[2])
  end)
end

-- Keybindings for sending the key out to other apps like Keyboard Maestro
hyperKeyBindings = {'g','h'}

for i,key in ipairs(hyperKeyBindings) do
  hyperMode:bind({}, key, nil, function() hs.eventtap.keyStroke({'cmd','alt','shift','ctrl'}, key)
  end)
end


-- Enter Hyper Mode when F18 (right option key) is pressed
pressedF18 = function()
  hyperMode:enter()
end

-- Leave Hyper Mode when F18 (right option key) is released.
releasedF18 = function()
  hyperMode:exit()
end

-- Bind the Hyper key
f18 = hs.hotkey.bind({}, 'F18', pressedF18, releasedF18)
