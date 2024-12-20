require("util")
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
  --elevated rails
if mods["elevated-rails"] then
  --black cargo wagon
  bcwagon.pictures.slope_angle_between_frames = 1.25
  bcwagon.pictures.slope_back_equals_front = true
  bcwagon.pictures.sloped.layers = {
    util.sprite_load("__DoubleWagons__/graphics/elevated-rails/cargo-wagon/cargo-wagon-sloped",
      {
        dice = 4,
        priority = "very-low",
        back_equals_front = true,
        direction_count = 80,
        scale = 0.5,
        usage = "train"
      }
    ),
    util.sprite_load("__elevated-rails__/graphics/entity/cargo-wagon/cargo-wagon-sloped-shadow",
      {
        dice = 4,
        priority = "very-low",
        draw_as_shadow = true,
        direction_count = 80,
        scale = 0.5,
        usage = "train"
      }
    )
  }
  --black fluid wagon
  bfwagon.pictures.slope_angle_between_frames = 1.25
  bfwagon.pictures.slope_back_equals_front = true
  bfwagon.pictures.sloped.layers = {
    util.sprite_load("__DoubleWagons__/graphics/elevated-rails/fluid-wagon/fluid-wagon-sloped",
      {
        dice = 4,
        priority = "very-low",
        direction_count = 80,
        scale = 0.5,
        usage = "train"
      }
    ),
    util.sprite_load("__elevated-rails__/graphics/entity/fluid-wagon/fluid-wagon-sloped-shadow",
      {
        dice = 4,
        priority = "very-low",
        draw_as_shadow = true,
        direction_count = 80,
        scale = 0.5,
        usage = "train"
      }
    )
  }
end
data:extend({
  bcwagon,
  bfwagon
})