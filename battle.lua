local battle = {}

-- WEATHER STATES:
--  CLEAR
--  RAIN (Water)
--  SUNNY (Fire)
--  SNOW (Ice)
--  SANDSTORM (Rock)

-- drought = sunny day
-- drizzle = rain dance

-- TERRAIN STATES:
-- Electric (Electric Terrain)
-- Fairy (Misty Terrain)
-- Psychic (Psychic Terrain)
-- Grass (Grassy Terrain)

battle.weather = "RAIN"
battle.gravity = 5

battle.Pokemon = {
    {
        {},
        {},
        {},
        {},
        {},
        {}
    },
    {
        {},
        {},
        {},
        {},
        {},
        {}
    }
}



function battle.isgravity()
    return battle.gravity > 0
end

function battle.ChangeWeather(weather)
    battle.weather = weather
end
-- at end of battle, copy health, pp, status, is fainted, xp gain (maybe move xp to opponent faint)
return battle