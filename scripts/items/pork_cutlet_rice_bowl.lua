-----------------------------------
-- ID: 6406
-- Item: pork_cutlet_rice_bowl
-- Food Effect: 180Min, All Races
-----------------------------------
-- HP +60
-- MP +60
-- STR +7
-- VIT +3
-- AGI +5
-- INT -7
-- Fire resistance +20
-- Attack +23% (cap 125)
-- Ranged Attack +23% (cap 125)
-- Store TP +4
-----------------------------------
local itemObject = {}

itemObject.onItemCheck = function(target, item, param, caster)
    return xi.itemUtils.foodOnItemCheck(target, xi.foodType.BASIC)
end

itemObject.onItemUse = function(target)
    target:addStatusEffect(xi.effect.FOOD, 0, 0, 10800, 6406)
end

itemObject.onEffectGain = function(target, effect)
    target:addMod(xi.mod.HP, 60)
    target:addMod(xi.mod.MP, 60)
    target:addMod(xi.mod.STR, 7)
    target:addMod(xi.mod.VIT, 3)
    target:addMod(xi.mod.AGI, 5)
    target:addMod(xi.mod.INT, -7)
    target:addMod(xi.mod.FIRE_MEVA, 20)
    target:addMod(xi.mod.FOOD_ATTP, 23)
    target:addMod(xi.mod.FOOD_ATT_CAP, 125)
    target:addMod(xi.mod.FOOD_RATTP, 23)
    target:addMod(xi.mod.FOOD_RATT_CAP, 125)
    target:addMod(xi.mod.STORETP, 4)
end

itemObject.onEffectLose = function(target, effect)
    target:delMod(xi.mod.HP, 60)
    target:delMod(xi.mod.MP, 60)
    target:delMod(xi.mod.STR, 7)
    target:delMod(xi.mod.VIT, 3)
    target:delMod(xi.mod.AGI, 5)
    target:delMod(xi.mod.INT, -7)
    target:delMod(xi.mod.FIRE_MEVA, 20)
    target:delMod(xi.mod.FOOD_ATTP, 23)
    target:delMod(xi.mod.FOOD_ATT_CAP, 125)
    target:delMod(xi.mod.FOOD_RATTP, 23)
    target:delMod(xi.mod.FOOD_RATT_CAP, 125)
    target:delMod(xi.mod.STORETP, 4)
end

return itemObject
