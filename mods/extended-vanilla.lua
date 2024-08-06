

local tiers = {"mk2", "mk3", "mk4", "mk5"}
for i, tier in pairs (tiers) do
  local exo = data.raw["movement-bonus-equipment"]["exoskeleton-"..tier.."-equipment"]

  exo.shape.width = 1
  exo.shape.height = 2

  exo.movement_bonus = .3 + .1*i

  exo.categories = {"armor", "universal-equipment"}

  -- data.raw["movement-bonus-equipment"]["exoskeleton-"..tier.."-equipment"] = exo
end

local tiers = {"mk3", "mk4", "mk5", "mk6"}
for i, tier in pairs (tiers) do
  local roboport = data.raw["roboport-equipment"]["personal-roboport-"..tier.."-equipment"]

  roboport.shape.width = 2
  roboport.shape.height = 2

  roboport.categories = {"armor", "universal-equipment", "robot-interaction-equipment"}

  -- data.raw["roboport-equipment"]["personal-roboport-"..tier.."-equipment"] = roboport
end

local tiers = {"mk2", "mk3", "mk4", "mk5", "mk6"}
for i, tier in pairs (tiers) do
  local generator = data.raw["generator-equipment"]["fusion-reactor-"..tier.."-equipment"]

  generator.shape.width = 2
  generator.shape.height = 2

  generator.power = (50*i).."MW"

  generator.categories = {"armor", "universal-equipment"}
end

local tiers = {"mk3", "mk4", "mk5"}
for i, tier in pairs (tiers) do
  local shield = data.raw["energy-shield-equipment"]["77-energy-shield-"..tier.."-equipment"]

  shield.shape.width = 2
  shield.shape.height = 2

  shield.max_shield_value = 50000 * i
  shield.energy_per_shield = 5 * (4 - i) .. "kJ"
  shield.energy_source.buffer_capacity = 500 * i .. "MJ"
  shield.energy_source.input_flow_limit = 200 * i .. "MW"

  shield.categories = {"armor", "universal-equipment"}
  -- data.raw["energy-shield-equipment"]["77-energy-shield-"..tier.."-equipment"] = shield
end