---
title: Geom.subplot_grid
author: Daniel Jones
order: 9
...

Draw multiple subplots in a grid orginized by one or two categorial vectors.


# Aesthetics

  * `xgroup` (optional): Arrange subplots on the X-axis by categorial data.
  * `ygroup` (optional): Arrange subplots on the Y-axis by categorial data.

One or both of `xgroup` or `ygroup` must be bound. If only one, a single column
or row of subplots is drawn, if both, a grid.


# Arguments

```{.julia execute="false"}
Geom.subplot_grid(elements::Gadfly.ElementOrFunction...)
```

Unlike most geometries, `Geom.subplot_grid` is typically passed one or more
parameters. The constructor works for the most part like the `layer` function.
Arbitrary plot elements may be passed, while aesthetic bindings are inherited
from the parent plot.


# Examples

```{.julia hide="true" results="none"}
using RDatasets
using Gadfly

Gadfly.prepare_display()
Gadfly.set_default_plot_size(14cm, 8cm)
```



```julia
set_default_plot_size(20cm, 7.5cm)
plot(data("datasets", "OrchardSprays"),
     xgroup="treatment", x="colpos", y="rowpos", color="decrease",
     Geom.subplot_grid(Geom.point))
```


```julia
set_default_plot_size(14cm, 25cm)
plot(data("vcd", "Suicide"), xgroup="sex", ygroup="method", x="age", y="Freq",
     Geom.subplot_grid(Geom.bar))
```




