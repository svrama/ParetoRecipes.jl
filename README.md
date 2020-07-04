# ParetoRecipes

## Summary
ParetoRecipes contains recipes for generating Pareto plots from a set of points in multiobjective optimization problems.  It is inspired by the macros in [GraphRecipes.jl](https://github.com/JuliaPlots/GraphRecipes.jl).

ParetoRecipes is a lightweight package that focuses only on the simplest use case of generating results: plotting Pareto fronts along with the original set of points.  Such plots are sometimes colloquially called "Paretos" (not to be confused with various Pareto distributions as in [Distributions.jl](https://github.com/JuliaStats/Distributions.jl)).

ParetoRecipes does _not_ focus on the multiobjective optimization itself, or even on breadth of exact and approximate algorithms to trace out Pareto fronts for optimization problems.  You can find such features and more in the [MultiJuMP](https://github.com/anriseth/MultiJuMP.jl) package.

Currently, ParetoRecipes only supports two-dimensional (2D) Paretos with an extremely inefficient brute-force algorithm for finding the Pareto front.

## Example

```julia
using ParetoRecipes
using Plots

pareto([[1, 0], [0, 1], [1, 1], [2, 2]])
```

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://svrama.github.io/ParetoRecipes.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://svrama.github.io/ParetoRecipes.jl/dev)
[![Build Status](https://github.com/svrama/ParetoRecipes.jl/workflows/CI/badge.svg)](https://github.com/svrama/ParetoRecipes.jl/actions)
[![Build Status](https://travis-ci.com/svrama/ParetoRecipes.jl.svg?branch=master)](https://travis-ci.com/svrama/ParetoRecipes.jl)
[![Build Status](https://ci.appveyor.com/api/projects/status/github/svrama/ParetoRecipes.jl?svg=true)](https://ci.appveyor.com/project/svrama/ParetoRecipes-jl)
[![Coverage](https://codecov.io/gh/svrama/ParetoRecipes.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/svrama/ParetoRecipes.jl)
[![Coverage](https://coveralls.io/repos/github/svrama/ParetoRecipes.jl/badge.svg?branch=master)](https://coveralls.io/github/svrama/ParetoRecipes.jl?branch=master)
