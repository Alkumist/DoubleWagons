require("util")
--cargo wagon corpse
local bcwcorpse = util.table.deepcopy(data.raw["corpse"]["cargo_wagon_remnants"])
  bcwcorpse.name = "black-cargo-wagon-remnants"
  bcwcorpse.icon = "__DoubleWagons__/graphics/icons/cargo-wagon.png"
  bcwcorpse.animation.filename = "__DoubleWagons__/graphics/remnants/black-cargo-wagon-remnants.png"
--fluid wagon corpse
local bfwcorpse
  bfwcorpse.name = "black-fluid-wagon-remnants"
  bfwcorpse.icon = "__DoubleWagons__/graphics/icons/fluid-wagon.png"
  bfwcorpse.animation.filename = "__DoubleWagons__/graphics/remnants/black-fluid-wagon-remnants.png"
data.extend({
  bcwcorpse,
  bfwcorpse
})