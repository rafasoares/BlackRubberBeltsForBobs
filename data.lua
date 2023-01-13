local util = require("lib.util")

local belts = {
  ["basic"] = { tint = { r = 202, g = 203, b = 193 }, base = "iron" },
  ["turbo"] = { tint = { r = 202, g = 63, b = 231 }, base = "steel" },
  ["ultimate"] = { tint = { r = 55, g = 233, b = 59 }, base = "steel" },
}

for tier, opt in pairs(belts) do
  util.add_rubber_belt(tier, opt.base, opt.tint)
end
