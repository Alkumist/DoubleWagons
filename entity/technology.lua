data:extend{
--Cargo Wagon
  {
    type = "technology",
    name = "black-cargo-wagon",
    icon_size = 256, --no longer super zoomed in 
    icon = "__base__/graphics/technology/railway.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "black-cargo-wagon"
      },
    },
    prerequisites = {"railway"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 30
    },
    order = "c-g-a",
  },
--Fluid Wagon
  {
    type = "technology",
    name = "black-fluid-wagon",
    icon_size = 256, --no longer super zoomed in 
    icon = "__base__/graphics/technology/fluid-wagon.png",
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "black-fluid-wagon"
      }
    },
    prerequisites = {"fluid-wagon"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 30
    },
    order = "c-g-a-b",
  }
}