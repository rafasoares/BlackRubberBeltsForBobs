local fns = require("__DeadlockBlackRubberBelts__.code.functions")

local util = {}

function util.add_rubber_belt(tier, base, tint)
  local belt = tier .. "-transport-belt"
  local prototype = data.raw["transport-belt"][belt]

  if prototype then
    local animation_set = fns.get_belt_animation_set(tint, base)

    prototype.belt_animation_set.animation_set = animation_set
    prototype.corpse = "small-remnants"
    fns.replace_item_icon(belt, "rubber-belt-" .. base)
    if settings.startup["ir2rb-arrows"].value then
      fns.add_mask_to_item_icon(belt, "rubber-belt-mask", tint)
    end
    if settings.startup["ir2rb-rails"].value then
      fns.add_mask_to_item_icon(belt, "rubber-rail-mask", tint)
    end
    fns.copy_item_icons_to_entity("transport-belt", belt)
  end
end

return util
