-----------------------------------
-- ID: 5465
-- Item: Caedarva Frog
-- Food Effect: 5Min, Mithra only
-----------------------------------
-- Dexterity 2
-- Agility 2
-- Mind -4
-- Evasion 5
-----------------------------------
local itemObject = {}

itemObject.onItemCheck = function(target, item, param, caster)
    return xi.itemUtils.foodOnItemCheck(target, xi.foodType.RAW_FISH)
end

itemObject.onItemUse = function(target)
    target:addStatusEffect(xi.effect.FOOD, 0, 0, 300, 5465)
end

itemObject.onEffectGain = function(target, effect)
    target:addMod(xi.mod.DEX, 2)
    target:addMod(xi.mod.MND, -4)
    target:addMod(xi.mod.AGI, 2)
    target:addMod(xi.mod.EVA, 5)
end

itemObject.onEffectLose = function(target, effect)
    target:delMod(xi.mod.DEX, 2)
    target:delMod(xi.mod.MND, -4)
    target:delMod(xi.mod.AGI, 2)
    target:delMod(xi.mod.EVA, 5)
end

return itemObject
