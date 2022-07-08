@@ -0,0 +1,40 @@
local WhiteList = true
local WhiteListPlayers = {
    ["00000000000000000"] = true, -- Сюда пишем SteamID64 профиля что бы чел мог подключаться на сервер
}

local ReasonKick = "Сервер закрыт на время разработки.\nМы в DS: \n• 'discord.gg/' \n \nС уважением Администрация сервера"

hook.Add("CheckPassword", "WhiteListEnabled", function( steamid64, ip, svpass, clpass, nick )
    if not WhiteList then return end
    if not WhiteListPlayers[steamid64] then
        print(Format("%s попытался зайти на сервер!(%s)",nick,steamid64))
        return false, ReasonKick
    end
end)
hook.Add( 'PlayerInitialSpawn', 'Example', function( ply )

  ply:ScreenFade( SCREENFADE.IN, Color( 0, 0, 0 ), 10, 0 )

end)
