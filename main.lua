local pokemon = require("pokemon")
local pokemontype = require("pokemontype")

function typeeffective(movetypes, pokemontypes)
    local multiplier = 1
    for _, movetype in ipairs(movetypes) do
        for _, poketype in ipairs(pokemontypes) do
            multiplier = multiplier * movetype[poketype]
        end 
    end
    return multiplier
end

local newDelphox = pokemon.new()
newDelphox:CalculateStats()

-- local calculated = typeeffective({ pokemontype.Fire, pokemontype.Dark }, { pokemontype.Steel, pokemontype.Psychic })
-- print(calculated)