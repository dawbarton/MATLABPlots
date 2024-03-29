> :warning: This package no longer works as intended with recent versions of MATLAB due to changes in the plotting system. Graphics handles are no longer returned as numerical values but as objects which MATLAB.jl does not understand. As such, it is probably easier just to use the `mat"plot($x, $y)"` syntax from MATLAB.jl directly.

# MATLABPlots

This package implements a thin wrapper over the
[MATLAB.jl](https://github.com/JuliaInterop/MATLAB.jl) to provide a MATLAB
plotting interface from the comfort of Julia. For example,

```julia
x = range(0, stop=2π, length=201)
y = sin.(x)
plot(x, y, ".-")
```

At the moment only a few of the MATLAB plotting functions are wrapped. More may
be added in time as needs arise. The functions wrapped so far are

* `figure`
* `clf`
* `plot`
    * Note: only style specification is possible; additional arguments in the
      `plot(x, y, style, "Keyword", "Value")` MATLAB style are not recognised yet.
	* `plot` is overloaded to plot in 3D if a `z` variable is passed.
* `plot!`
    * This plots with the hold set to true.

This package is tested to work with Julia v1.0.
