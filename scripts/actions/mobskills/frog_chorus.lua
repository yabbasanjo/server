-----------------------------------
-- Frog Chorus
-- Description: Charms all targets in an area of effect and transforms them into frogs.
-- Type: Enfeebling
-- Utsusemi/Blink absorb: Ignores shadows
-----------------------------------
local mobskillObject = {}

mobskillObject.onMobSkillCheck = function(target, mob, skill)
    return 0
end

mobskillObject.onMobWeaponSkill = function(target, mob, skill)
    if not target:isPC() then
        skill:setMsg(xi.msg.basic.SKILL_MISS)
        return xi.effect.CHARM_I
    end

    local msg = xi.mobskills.mobStatusEffectMove(mob, target, xi.effect.CHARM_I, 0, 3, 60)
    if msg == xi.msg.basic.SKILL_ENFEEB_IS then
        mob:charm(target)
        target:addStatusEffect(xi.effect.COSTUME, 1812, 0, 60)
    end

    skill:setMsg(msg)

    return xi.effect.CHARM_I
end

return mobskillObject
