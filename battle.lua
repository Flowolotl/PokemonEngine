local battle = {}

-- drought = sunny day
-- drizzle = rain dance

battle.weather = "RAIN"
function battle.ChangeWeather(weather)
    battle.weather = weather
end

battle.ChangeWeather("RAIN")
battle.ChangeWeather("SUNNY")

battle.Stat = {}

return battle