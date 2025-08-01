function love.conf(t)
    t.identity = "data/saves"
    t.version = "11.5" -- Use to label version
    t.console = true -- Enable console for debug.
    -- t.externalstorage = true -- Enable external storage for saving files. Useful for Android.
    t.gammacorrect = false -- Disable gamma correction for performance.

    t.window.width = 800 -- Set the window width.
    t.window.height = 900 -- Set the window height.
    t.window.title = "Lua Game"
    -- t.window.icon = "icon.png"
    t.console = true
    t.modules.joystick = false
    t.modules.physics = false
    t.modules.sound = false
    t.modules.video = false
    t.audio.mic = true -- Enable microphone support.
    t.window.resizable = true -- Allow the window to be resized.
end