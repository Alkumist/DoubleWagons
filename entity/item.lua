data:extend{
--Cargo Wagon
  {
    type = "item-with-entity-data",
    name = "black-cargo-wagon",
    icon = "__DoubleWagons__/graphics/icons/cargo-wagon.png",
    icon_size = 64,
   -- flags = {"goes-to-quickbar"},
    subgroup = "train-transport",
    order = "c[rolling-stock]-bb[cargo-wagon]",
    place_result = "black-cargo-wagon",
    stack_size = 5
  },
--Fluid Wagon
  {
    type = "item-with-entity-data",
    name = "black-fluid-wagon",
    icon = "__DoubleWagons__/graphics/icons/fluid-wagon.png",
    icon_size = 64,
   -- flags = {"goes-to-quickbar"},
    subgroup = "train-transport",
    order = "c[rolling-stock]-cc[fluid-wagon]",
    place_result = "black-fluid-wagon",
    stack_size = 5
  },
}
if mods["space-exploration"] then
  local types = {"item", "item-with-entity-data"}
  local function change_subgroup (name, subgroup, order)
    for _, type in pairs(types) do
      if data.raw[type][name] then
        data.raw[type][name].subgroup = subgroup
        if order then
          data.raw[type][name].order = order
        end
      end
    end
    if data.raw.recipe[name] then
      if data.raw.recipe[name].subgroup then
        data.raw.recipe[name].subgroup = subgroup
        if order then
          data.raw.recipe[name].order = order
        end
      end
    end
  end
  change_subgroup("black-cargo-wagon", "rail", "b")
  change_subgroup("black-fluid-wagon", "rail", "b")
end