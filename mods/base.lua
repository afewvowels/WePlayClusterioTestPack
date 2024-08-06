
--Updates to electric pole stats
data.raw["electric-pole"]["substation"].maximum_wire_distance = 24
data.raw["electric-pole"]["substation"].supply_area_distance = 24

data.raw["electric-pole"]["big-electric-pole"].supply_area_distance = 3

data.raw["electric-pole"]["medium-electric-pole"].maximum_wire_distance = 15

data.raw["equipment-grid"]["se-thruster-suit-grid"].width = 16
data.raw["equipment-grid"]["se-thruster-suit-grid"].height = 20
data.raw.armor["se-thruster-suit"].inventory_size_bonus = 250
table.insert(data.raw["equipment-grid"]["se-thruster-suit-grid"].equipment_categories, "ind_armor")
table.insert(data.raw["equipment-grid"]["se-thruster-suit-grid"].equipment_categories, "universal-equipment")
table.insert(data.raw["equipment-grid"]["se-thruster-suit-grid"].equipment_categories, "robot-interaction-equipment")

data.raw["equipment-grid"]["se-thruster-suit-2-grid"].width = 20
data.raw["equipment-grid"]["se-thruster-suit-2-grid"].height = 24
data.raw.armor["se-thruster-suit-2"].inventory_size_bonus = 300
table.insert(data.raw["equipment-grid"]["se-thruster-suit-2-grid"].equipment_categories, "ind_armor")
table.insert(data.raw["equipment-grid"]["se-thruster-suit-2-grid"].equipment_categories, "universal-equipment")
table.insert(data.raw["equipment-grid"]["se-thruster-suit-2-grid"].equipment_categories, "robot-interaction-equipment")

data.raw["equipment-grid"]["se-thruster-suit-3-grid"].width = 20
data.raw["equipment-grid"]["se-thruster-suit-3-grid"].height = 24
data.raw.armor["se-thruster-suit-3"].inventory_size_bonus = 350
table.insert(data.raw["equipment-grid"]["se-thruster-suit-3-grid"].equipment_categories, "ind_armor")
table.insert(data.raw["equipment-grid"]["se-thruster-suit-3-grid"].equipment_categories, "universal-equipment")
table.insert(data.raw["equipment-grid"]["se-thruster-suit-3-grid"].equipment_categories, "robot-interaction-equipment")

data.raw["equipment-grid"]["se-thruster-suit-4-grid"].width = 24
data.raw["equipment-grid"]["se-thruster-suit-4-grid"].height = 32
data.raw.armor["se-thruster-suit-4"].inventory_size_bonus = 400
table.insert(data.raw["equipment-grid"]["se-thruster-suit-4-grid"].equipment_categories, "ind_armor")
table.insert(data.raw["equipment-grid"]["se-thruster-suit-4-grid"].equipment_categories, "universal-equipment")
table.insert(data.raw["equipment-grid"]["se-thruster-suit-4-grid"].equipment_categories, "robot-interaction-equipment")