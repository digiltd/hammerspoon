-- --------------------------------------
-- Reload config when any lua file in config directory changes, to save having to manually reload.
-- --------------------------------------

function reloadConfig(files)
    doReload = false
    for _,file in pairs(files) do
        if file:sub(-4) == '.lua' then
            doReload = true
        end
    end
    if doReload then
        hs.reload()
    end
end
local myWatcher = hs.pathwatcher.new(os.getenv('HOME') .. '/.hammerspoon/', reloadConfig):start()
hs.alert.show('Config loaded')