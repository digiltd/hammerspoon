local log = hs.logger.new('init.lua', 'debug')




require('hyper')

hs.notify.new({title='Hammerspoon', informativeText='Ready to rock 🤘'}):send()



require('watcher')
require('position')

