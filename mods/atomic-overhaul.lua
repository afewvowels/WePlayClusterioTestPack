local item = table.deepcopy(data.raw.item["plutonium-fuel"])
local recipe = table.deepcopy(data.raw.recipe["plutonium-fuel-recipe"])

item.name = "shielded-plutonium-jetpack-fuel"
item.fuel_value = "1.5GJ"
item.stack_size = 10

recipe.name = "shielded-plutonium-jetpack-fuel-recipe"
recipe.results = {{"shielded-plutonium-jetpack-fuel", 1}}

data:extend({item, recipe})

table.insert(data.raw.technology["plutonium-fuel"].effects, {type = "unlock-recipe", recipe = "shielded-plutonium-jetpack-fuel-recipe"})