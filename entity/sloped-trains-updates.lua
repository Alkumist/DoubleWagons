local meld = require("meld")
local update = {}
update.wheels =
{
  sloped = util.sprite_load("__elevated-rails__/graphics/entity/train-wheel/train-wheel-sloped",
    {
      priority = "very-low",
      direction_count = 160,
      scale = 0.5,
      shift = util.by_pixel(0, 8),
      usage = "train"
      }
  ),
  slope_angle_between_frames = 1.25
}

update.cargo_wagon =
{
  wheels = update.wheels,
  pictures =
  {
    slope_angle_between_frames = 1.25,
    slope_back_equals_front = true,
    sloped =
    {
      layers =
      {
        util.sprite_load("__DoubleWagons__/graphics/elevated-rails/cargo-wagon/cargo-wagon-sloped.lua",
          {
            dice = 4,
            priority = "very-low",
            back_equals_front = true,
            direction_count = 80,
            scale = 0.5,
            usage = "train"
          }
        ),
        util.sprite_load("__elevated-rails__/graphics/entity/cargo-wagon/cargo-wagon-sloped-mask",
          {
            dice = 4,
            priority = "very-low",
            flags = { "mask" },
            apply_runtime_tint = true,
            tint_as_overlay = true,
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
    }
  },
}

update.fluid_wagon =
{
  wheels = update.wheels,
  pictures =
  {
    slope_angle_between_frames = 1.25,
    slope_back_equals_front = true,
    sloped =
    {
      layers =
      {
        util.sprite_load("__DoubleWagons__/graphics/elevated-rails/fluid-wagon/fluid-wagon-sloped.lua",
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
    }
  },
}

  update.apply_all_base = function()
    meld(data.raw["cargo-wagon"]["black-cargo-wagon"], update.cargo_wagon)
    meld(data.raw["fluid-wagon"]["black-fluid-wagon"], update.fluid_wagon)
  end