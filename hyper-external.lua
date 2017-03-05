-- Keybindings for sending the key out to other apps like Keyboard Maestro

hyperKeyExternalBindings = {'g','h'}

for i,key in ipairs(hyperKeyExternalBindings) do
  hyperMode:bind({}, key, nil, function() hs.eventtap.keyStroke({'cmd','alt','shift','ctrl'}, key)
  end)
end