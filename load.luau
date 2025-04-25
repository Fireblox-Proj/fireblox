local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/refs/heads/main/Library.lua"))()

Library:Notify({
    Title = "Please Wait.  📢",
    Description = "Fireblox is loading, please give us a second!",
    Time = 5
})

local succ, err =
    xpcall(
    function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Fireblox-Proj/fireblox/refs/heads/main/key.luau", true))()

        print("Fireblox Output: Loaded with 0 issues.  💫")
    end,

    function(err)
        if (string.find(err, "404")) or (string.find(err, "attempt to call a nil value")) then
            Library:Notify({
                Title = "Fireblox failed to load!  ⚠️",
                Description = "The script is currently down or something broke, please try again later or message @youreironic on discord.",
                Time = 5
            })

            if (setclipboard or toclipboard) then
                setclipboard("discord.gg/fireblox")
                toclipboard("discord.gg/fireblox")
            end

            Library:Notify({
                Title = "Set Clipboard  📋",
                Description = "The discord server has been copied to your clipboard.",
                Time = 5
            })
        end
    end
)
