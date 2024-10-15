data:extend{
--Cargo Wagon
  {
    type = "recipe",
    name = "black-cargo-wagon",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {"iron-gear-wheel", 10},
      {"iron-plate", 20},
      {"cargo-wagon", 2}
    },
    result = "black-cargo-wagon"
  },
--Fluid Wagon
}
if settings.startup["double-cargo-capacity"].value then
  data:extend{
    {
      type = "recipe",
      name = "black-fluid-wagon",
      enabled = false,
      energy_required = 1.5,
      ingredients =
      {
        {"fluid-wagon", 2},
        {"iron-gear-wheel", 10},
        {"iron-plate", 20}
      },
      result = "black-fluid-wagon"
    },
  }
  else
    data:extend{
      {
        type = "recipe",
        name = "black-fluid-wagon",
        enabled = false,
        energy_required = 1.5,
        ingredients =
        {
          {"fluid-wagon", 3},
          {"steel-plate", 16},
          {"pipe", 8},
          {"storage-tank", 1}
        },
        result = "black-fluid-wagon"
      }
    }
end