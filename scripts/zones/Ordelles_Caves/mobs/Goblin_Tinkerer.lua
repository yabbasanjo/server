-----------------------------------
-- Area: Ordelle's Caves
--  Mob: Goblin Tinkerer
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, optParams)
    xi.regime.checkRegime(player, mob, 657, 1, xi.regime.type.GROUNDS)
end

return entity
