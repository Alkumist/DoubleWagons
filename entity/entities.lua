require("util")
local meld = require("__core__.lualib.meld")
--New Cargo Wagon
local bcwagon = util.table.deepcopy(data.raw["cargo-wagon"]["cargo-wagon"])
  bcwagon.name = "black-cargo-wagon"
  bcwagon.icon = "__DoubleWagons__/graphics/icons/cargo-wagon.png"
  bcwagon.inventory_size = 80
  bcwagon.minable.mining_time = 1
  bcwagon.minable.result = "black-cargo-wagon"
  bcwagon.max_health = 800
  bcwagon.minimap_representation.filename = "__DoubleWagons__/graphics/cargo-wagon/minimap-representation/cargo-wagon-minimap-representation.png"
  bcwagon.selected_minimap_representation.filename = "__DoubleWagons__/graphics/cargo-wagon/minimap-representation/cargo-wagon-selected-minimap-representation.png"
  bcwagon.corpse = "black-cargo-wagon-remnants"
  bcwagon.pictures.rotated.layers = {
    util.sprite_load("__DoubleWagons__/graphics/cargo-wagon/cargo-wagon",
      {
        dice = 4,
        priority = "very-low",
        allow_low_quality_rotation = true,
        back_equals_front = true,
        direction_count = 128,
        scale = 0.5,
        usage = "train"
      }
    ),
    util.sprite_load("__base__/graphics/entity/cargo-wagon/cargo-wagon-shadow",
      {
        dice = 4,
        priority = "very-low",
        allow_low_quality_rotation = true,
        back_equals_front = true,
        draw_as_shadow = true,
        direction_count = 128,
        scale = 0.5,
        sage = "train"
      }
    )
  }
  bcwagon.horizontal_doors.layers = {
    util.sprite_load("__DoubleWagons__/graphics/cargo-wagon/cargo-wagon-door-horizontal",
      {
        frame_count = 8,
        scale = 0.5,
        usage = "train"
      }
    )
  }
  bcwagon.vertical_doors.layers = {
    util.sprite_load("__DoubleWagons__/graphics/cargo-wagon/cargo-wagon-door-vertical",
      {
        frame_count = 8,
        scale = 0.5,
        usage = "train"
      }
    )
  }
--New Fluid Wagon
local bfwagon = util.table.deepcopy(data.raw["fluid-wagon"]["fluid-wagon"])
  bfwagon.name = "black-fluid-wagon"
  bfwagon.icon = "__DoubleWagons__/graphics/icons/fluid-wagon.png"
  bfwagon.capacity = 75000
  bfwagon.minable.mining_time = 1
  bfwagon.minable.result = "black-fluid-wagon"
  bfwagon.max_health = 800
  bfwagon.minimap_representation.filename = "__DoubleWagons__/graphics/fluid-wagon/minimap-representation/fluid-wagon-minimap-representation.png"
  bfwagon.selected_minimap_representation.filename = "__DoubleWagons__/graphics/fluid-wagon/minimap-representation/fluid-wagon-selected-minimap-representation.png"
  bfwagon.corpse = "black-fluid-wagon-remnants"
  bfwagon.pictures.rotated.layers = {
    util.sprite_load("__DoubleWagons__/graphics/fluid-wagon/fluid-wagon",
      {
        dice = 4,
        priority = "very-low",
        allow_low_quality_rotation = true,
        back_equals_front = true,
        direction_count = 128,
        scale = 0.5,
        usage = "train"
      }
    ),
    util.sprite_load("__base__/graphics/entity/fluid-wagon/fluid-wagon-shadow",
      {
        dice = 4,
        priority = "very-low",
        allow_low_quality_rotation = true,
        back_equals_front = true,
        draw_as_shadow = true,
        direction_count = 128,
        scale = 0.5,
        usage = "train"
      }
    )
  }

data:extend({
  bcwagon,
  bfwagon
})
if mods["elevated-rails"] then
  require("__DoubleWagons__.entity.sloped-trains-updates").apply_all_base()
end