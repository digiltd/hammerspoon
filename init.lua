require('hyper-applauncher')
require('hyper-external')
require('window-management')
require('config-watcher')

-- macOS notification when loaded
hs.notify.new({title='Hammerspoon', informativeText='Everything is 🍑'}):send()
