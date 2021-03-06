
using RDatasets
using DataFrames
using Gadfly

barley = data("lattice", "barley")
set_levels!(barley["year"], ["1931", "1932"])

plot(barley,
     xgroup="variety", ygroup="site", x="year", y="yield",
     Geom.subplot_grid(Geom.line, Geom.point))


