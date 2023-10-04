local pokemon = require("pokemon")
local pokemontype = require("pokemontype")
local pokemonbase = require("pokemonbase")

function typeeffective(movetypes, pokemontypes)
    local multiplier = 1
    for _, movetype in ipairs(movetypes) do
        for _, poketype in ipairs(pokemontypes) do
            multiplier = multiplier * movetype[poketype]
        end 
    end
    return multiplier
end

local newPokemon = pokemon.new(pokemonbase.Sligma)
newPokemon:CalculateStats()

local calculated = typeeffective({ pokemontype.Fire }, newPokemon.basetypes)
print(calculated)