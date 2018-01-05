require('hyper-applauncher')
require('hyper-external')
require('window-management')
require('window-switcher')


require('config-watcher')


hs.hotkey.bind('alt','tab','Next window',function()switcher:next()end)
hs.hotkey.bind('alt-shift','tab','Prev window',function()switcher:previous()end)

-- macOS notification when loaded
hs.notify.new({title='Hammerspoon', informativeText='Everything is 🍑'}):send()
