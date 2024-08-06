require("mods/atomic-overhaul")
require("mods/base")
require("mods/extended-vanilla")
require("mods/modules")


data.raw["belt-immunity-equipment"]["belt-immunity-equipment"].categories = {"armor", "universal-equipment", "robot-interaction-equipment"}

data.raw["roboport-equipment"]["personal-roboport-equipment"].categories = {"armor", "universal-equipment", "robot-interaction-equipment"}

data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].categories = {"armor", "universal-equipment", "robot-interaction-equipment"}

-- Update Angels mod warehouse and silo sizes
local warehouseSize = 2500

data.raw["container"]["angels-warehouse"].inventory_size = warehouseSize
data.raw["logistic-container"]["angels-warehouse-passive-provider"].inventory_size = warehouseSize
data.raw["logistic-container"]["angels-warehouse-active-provider"].inventory_size = warehouseSize
data.raw["logistic-container"]["angels-warehouse-buffer"].inventory_size = warehouseSize
data.raw["logistic-container"]["angels-warehouse-requester"].inventory_size = warehouseSize
data.raw["logistic-container"]["angels-warehouse-storage"].inventory_size = warehouseSize

data.raw["container"]["silo"].inventory_size = warehouseSize - 1000

local items = {
  "se-rocket-landing-pad",
  "se-rocket-launch-pad",
  "se-meteor-defence",
  "se-space-capsule",
  "se-cargo-rocket-section",
  "se-cargo-rocket-section-packed",
  "se-space-manufactory",
  "se-space-probe-rocket-silo",
  "se-space-probe-rocket",
  "se-star-probe",
  "se-belt-probe",
  "se-void-probe",
  "se-kr-remote-probe",
  "se-space-particle-accelerator",
  "se-space-particle-collider",
  "se-space-growth-facility",
  "se-space-material-fabricator",
  "se-arcosphere",
  "se-arcosphere-a",
  "se-arcosphere-b",
  "se-arcosphere-c",
  "se-arcosphere-d",
  "se-arcosphere-e",
  "se-arcosphere-f",
  "se-arcosphere-g",
  "se-arcosphere-h",
  "se-arcosphere-collector",
  "kr-singularity-lab",
  "se-nexus",
  "se-space-supercomputer-4",
  "nuclear-reactor",
  "se-antimatter-reactor",
  "kr-fusion-reactor",
  "se-core-miner",
  "se-energy-transmitter-emitter",
  "se-energy-receiver"

}

for _, item in pairs(items) do
  data.raw["item"][item].stack_size = 10
end

data.raw["item"]["se-naquium-tessaract"].stack_size = 8
data.raw["item"]["se-naquium-processor"].stack_size = 8
data.raw["item"]["plutonium-fuel"].stack_size = 10

data.raw["recipe"]["kovarex-enrichment-process"].energy_required = 30
data.raw["recipe"]["kovarex-enrichment-process"].results = {{"uranium-235", 42}, {"uranium-238", 2}}
data.raw["recipe"]["kovarex-enrichment-process"].ingredients = {{"uranium-235", 13}, {"uranium-238", 13}}

table.insert(data.raw["equipment-grid"]["kr-spidertron-equipment-grid"].equipment_categories, "armor")
table.insert(data.raw["equipment-grid"]["kr-spidertron-equipment-grid"].equipment_categories, "ind_armor")
table.insert(data.raw["equipment-grid"]["kr-spidertron-equipment-grid"].equipment_categories, "universal-equipment")
table.insert(data.raw["equipment-grid"]["kr-spidertron-equipment-grid"].equipment_categories, "robot-interaction-equipment")