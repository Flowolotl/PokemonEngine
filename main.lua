local pokemon = require("pokemon")
local pokemontype = require("pokemontype")

function typeeffective(movetype, pokemontypes)
    local multiplier = 1
    for _, type in ipairs(pokemontypes) do
        multiplier = multiplier * movetype[type]
    end
    return multiplier
end

local calculated = typeeffective(pokemontype.Fire, { pokemontype.Water, pokemontype.Grass})
print(calculated)
print("yay")