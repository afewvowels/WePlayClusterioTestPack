require("mods/se-space-trains")
require("mods/smr")
require("mods/space-trains")

-- Technology for quicker start. Bot speed upgrade, hand crafting speed, base inverntory slot bonus, etc., etc.
data:extend({
  {
    type = "technology",
    name = "weplay-starting-tech-enhancements",
    icon_size = 256,
    icon = "__base__/graphics/technology/worker-robots-speed.png",
    effects = {
			{
				type = "worker-robot-speed",
				modifier = "2"
			},
      {
        type = "worker-robot-storage",
        modifier = "2"
      },
      {
        type= "worker-robot-battery",
        modifier = "1.0"
      },
      {
        type= "character-crafting-speed",
        modifier = "200.0"
      },
			{
				type = "character-mining-speed",
				modifier = "2.0"
			},
      {
        type = "character-inventory-slots-bonus",
        modifier = 40
      },
			{
				type = "character-build-distance",
				modifier = 40
			},
			{
				type = "character-reach-distance",
				modifier = 40
			},
      {
        type = "inserter-stack-size-bonus",
        modifier = 1
      },
      {
        type = "stack-inserter-capacity-bonus",
        modifier = 3
      },
			{
        type = "character-logistic-requests",
        modifier = true
			},
      {
        type = "character-logistic-trash-slots",
        modifier = 30
      }
    },
    unit = {
      count = 25,
      ingredients = {
        {"automation-science-pack", 1}
      },
      time = 60,
    },
    order = "a"
  }
})

local moduleUpdates = {
  {"furnace", "stone-furnace", 1},
  {"furnace", "steel-furnace", 2},
  {"assembling-machine", "assembling-machine-1", 2},
  {"mining-drill", "se-core-miner-drill", 6},
  {"assembling-machine", "se-casting-machine", 6},
  {"assembling-machine", "se-space-hypercooler", 5},
  {"assembling-machine", "se-space-radiator", 3},
  {"assembling-machine", "se-space-radiator-2", 4},
  {"assembling-machine", "kr-matter-plant", 4},
  {"assembling-machine", "kr-matter-assembler", 4},
  {"assembling-machine", "se-space-material-fabricator", 6}
}

for _, update in ipairs(moduleUpdates) do
  local item = data.raw[update[1]][update[2]]
  item.module_specification = {}
  item.allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  item.module_specification.module_slots = update[3]
end