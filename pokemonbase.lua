local pokemontype = require("pokemontype")
local pokemonbase = {}

pokemonbase.Fennekin = {
    stats = {
        HP = 40,
        Attack = 45,
        Defense = 40,
        SpAttack = 62,
        SpDefense = 60,
        Speed = 60
    },
    evolution = {
        base = pokemonbase.Braixen,
        level = 16
    }
}
pokemonbase.Braixen = {
    HP = 59,
    Attack = 59,
    Defense = 58,
    SpAttack = 90,
    SpDefense = 70,
    Speed = 73
}
pokemonbase.Delphox = {
    stats = {
        HP = 75,
        Attack = 69,
        Defense = 72,
        SpAttack = 114,
        SpDefense = 100,
        Speed = 104
    },
    types = {
        pokemontype.Fire,
        pokemontype.Psychic,
    }
}
pokemonbase.Bulbasaur = {
    index = 1,
    stats = {
        HP = 45,
        Attack = 49,
        Defense = 49,
        SpAttack = 65,
        SpDefense = 65,
        Speed = 45
    },
    types = {
        pokemontype.Grass,
    }
}
pokemonbase.Palafin = {
    index = 964,
    stats = {
        HP = 45,
        Attack = 49,
        Defense = 49,
        SpAttack = 65,
        SpDefense = 65,
        Speed = 45
    },
    types = {
        pokemontype.Grass,
    }
}

return pokemonbase