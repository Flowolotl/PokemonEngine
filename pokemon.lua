local pokemonbase = require("pokemonbase")
local nature = require("nature")
local pokemon = {}
pokemon.__index = pokemon

function pokemon:CalculateStats()
    local hp = (((self.basestats.HP*2 + self.iv.HP + (self.ev.HP/4))*self.level)/100) + self.level + 10
    self.stats.HP = math.floor(hp)
    for k, v in pairs(self.stats) do
        if k ~= "HP" then
            local stat = ((((self.basestats[k]*2 + self.iv[k] + (self.ev[k]/4))*self.level)/100)+5) * self.nature[k]
            self.stats[k] = math.floor(stat)
        end
    end
    for k, v in pairs(self.stats) do
        print(k, v)
    end
end -- ROUND DOWN

function pokemon.new(basepokemon) -- DEFAULT
    local self = setmetatable({}, pokemon)
    self.level = 100
    self.stats = { -- PLACEHOLDER NUMBER
        HP = 0, -- PLACEHOLDER NUMBER
        Attack = 0, -- PLACEHOLDER NUMBER
        Defense = 0, -- PLACEHOLDER NUMBER
        SpAttack = 0, -- PLACEHOLDER NUMBER
        SpDefense = 0, -- PLACEHOLDER NUMBER
        Speed = 0 -- PLACEHOLDER NUMBER
    } -- PLACEHOLDER NUMBER
    self.basestats = pokemonbase.Azumarill.stats
    self.nature = nature.Adamant
    self.ev = { -- 4 evs = +1; 252 per is max; 508 max total; up to 25 in each randomly. max of 3 stats
        HP = 0,
        Attack = 252,
        Defense = 0,
        SpAttack = 0,
        SpDefense = 0,
        Speed = 0
    }
    self.iv = { -- all ivs random between 0-31
        HP = 31,
        Attack = 31,
        Defense = 31,
        SpAttack = 31,
        SpDefense = 31,
        Speed = 31
    }
    self.isshiny = false -- 1/4096
    -- targets - double battle + earthquake = 0.75x
    -- ignore parental bond aka PB
    -- weather - sun = -0.5 water, +0.5 fire; rain = -0.5 fire, +0.5 water
    -- glaive rush - opponent uses glaive rush + your move = 2x
    -- crit is 1/24 of happening. 1.5x multiplier
    -- random is between 85% and 100% multiplier
    -- STAB - tera fighting + fire move + original fire type = 1x
    -- STAB - same type move as pokemon = 1.5x
    -- STAB - tera fire + fire move + original fire type = 2x
    -- STAB - tera fire + fire move + original fire type + adaptability = 2.25x
    -- type effective - 0.125, 0.25, 0.5, 1, 2, 4, 8
    -- type effective - remember that iron ball or thousand arrows makes flying types affected by ground moves.
    -- type effective - grounded flying (except iron ball/thousand arrows) makes ground vs flying = 1x.
    -- type effective - ring target removes type immunities
    -- type effective - scrappy ability allows normal and fighting moves to hit ghost 1x
    -- type effective - foresight is like scrappy but as a move and any type
    -- type effective - freeze dry = 2x against water
    -- type effective - flying press = calculate flying effectiveness and fighting effectiveness then multiply
    -- type effective - strong winds = electric move vs pure flying = 1x
    -- type effective - tar shot affected = 2x with fire move. ex = flamethrower + tar shot vs meowscarada = 4x
    -- burn - attacker is burned and physical move = 0.5x power
    return self
end

return pokemon