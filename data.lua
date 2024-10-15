require("entity.entities")
require("entity.item")
require("entity.technology")
require("entity.recipe")

if settings.startup["OG-mask-to-white"].value then
    data.raw["cargo-wagon"]["cargo-wagon"].color = {r = 0, g = 0, b = 0, a = 0.}
end
if settings.startup["double-cargo-capacity"].value then
data.raw["cargo-wagon"]["black-cargo-wagon"].inventory_size = data.raw["cargo-wagon"]["cargo-wagon"].inventory_size * 2
data.raw["fluid-wagon"]["black-fluid-wagon"].capacity = data.raw["fluid-wagon"]["fluid-wagon"].capacity * 2
end