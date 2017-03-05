require('hyper')
require('watcher')
require('position')

-- macOS notification when loaded
hs.notify.new({title='Hammerspoon', informativeText='Everything is 🍑'}):send()
