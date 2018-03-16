-- Keybindings for sending the key out to other apps like Keyboard Maestro

hyperKeyExternalBindings = {'g', '2', '3'}

for i,key in ipairs(hyperKeyExternalBindings) do
  hyperMode:bind({}, key, nil, function() hs.eventtap.keyStroke({'cmd','alt','shift','ctrl'}, key)
  end)
end