--Cargo Wagon
data:extend({
  {
    type = "recipe",
    name = "black-cargo-wagon",
    enabled = false,
    ingredients ={
      {
        type = "item",
        name = "iron-gear-wheel",
        amount = 10
      },
      {
        type = "item",
        name = "iron-plate",
        amount = 20
      },
      {
        type = "item",
        name = "cargo-wagon",
        amount = 2
      }
    },
    energy_required = 1,
    results = {{
      type = "item",
      name = "black-cargo-wagon",
      amount = 1
    }}
  },
})
--Fluid Wagon
if settings.startup["double-cargo-capacity"].value then
  data:extend({
    {
      type = "recipe",
      name = "black-fluid-wagon",
      enabled = false,
      ingredients ={
        {
          type = "item",
          name = "fluid-wagon",
          amount = 2
        },
        {
          type = "item",
          name = "iron-gear-wheel",
          amount = 10
        },
        {
          type = "item",
          name = "iron-plate",
          amount = 20
        }
      },
      energy_required = 1.5,
      results = {{
        type = "item",
        name = "black-fluid-wagon",
        amount = 1
      }}
    },
  })
  else
    data:extend({
      {
        type = "recipe",
        name = "black-fluid-wagon",
        enabled = false,
        ingredients ={
          {
            type = "item",
            name = "fluid-wagon",
            amount = 3
          },
          {
            type = "item",
            name = "iron-gear-wheel",
            amount = 10
          },
          {
            type = "item",
            name = "iron-plate",
            amount = 20
          }
        },
        energy_required = 1.5,
        results = {{
          type = "item",
          name = "black-fluid-wagon",
          amount = 1
        }}
      }
    })
end