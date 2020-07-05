# ParetoRecipes

| **Documentation**                                                               | **Build Status**                                                                                |
|:-------------------------------------------------------------------------------:|:-----------------------------------------------------------------------------------------------:|
| [![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://svrama.github.io/ParetoRecipes.jl/stable) [![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://svrama.github.io/ParetoRecipes.jl/dev) | [![Build Status](https://github.com/svrama/ParetoRecipes.jl/workflows/CI/badge.svg)](https://github.com/svrama/ParetoRecipes.jl/actions) [![Build Status](https://travis-ci.com/svrama/ParetoRecipes.jl.svg?branch=master)](https://travis-ci.com/svrama/ParetoRecipes.jl) [![Build Status](https://ci.appveyor.com/api/projects/status/github/svrama/ParetoRecipes.jl?svg=true)](https://ci.appveyor.com/project/svrama/ParetoRecipes-jl) [![Coverage](https://codecov.io/gh/svrama/ParetoRecipes.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/svrama/ParetoRecipes.jl) [![Coverage](https://coveralls.io/repos/github/svrama/ParetoRecipes.jl/badge.svg?branch=master)](https://coveralls.io/github/svrama/ParetoRecipes.jl?branch=master) |

## Summary
ParetoRecipes generates Pareto plots from a set of points in a multiobjective optimization problem using [Plots.jl](https://github.com/JuliaPlots/Plots.jl).  A Pareto plot consists of the set of points together with a [Pareto front](https://en.wikipedia.org/wiki/Pareto_efficiency) (alternatively, Pareto frontier or Pareto set).  Colloquially, we will refer to such plots as _Paretos_.

ParetoRecipes does _not_ focus on the multiobjective optimization itself, or even on breadth of exact and approximate algorithms to trace out Pareto fronts for optimization problems.  You can find such features and more in the [MultiJuMP](https://github.com/anriseth/MultiJuMP.jl) package.

Currently, ParetoRecipes only supports two-dimensional (2D) Paretos with an extremely inefficient brute-force algorithm for finding the Pareto front.


## Example

```julia
using ParetoRecipes
using Plots

pareto([[1, 0], [0, 1], [1, 1], [2, 2]])
```


## Implementation: Recipes

Thomas Breloff (@tbreloff) created the lightweight [RecipesBase](https://github.com/JuliaPlots/RecipesBase.jl) package that inspired the design of ParetoRecipes.

ParetoRecipes offers a set of _recipes_.  Recipes abstract away the dependencies on plotting libraries like [Plots.jl](https://github.com/JuliaPlots/Plots.jl).  Each recipe is a `@recipe` macro from [RecipesBase](https://github.com/JuliaPlots/RecipesBase.jl).  There are different kinds of recipes. The `@recipe` for a Pareto plot in ParetoRecipes is a _series recipe_ (`@series`) that composes two plots: a scatter plot (`:scatter`) and a line plot (`:path`).

The [GraphRecipes.jl](https://github.com/JuliaPlots/GraphRecipes.jl) repo has many more examples of the power of series recipes.


## Disambiguation
ParetoRecipes does not currently support other concepts named after the economist [Vilfredo Pareto](https://en.wikipedia.org/wiki/Vilfredo_Pareto):
- [Pareto Charts](https://en.wikipedia.org/wiki/Pareto_chart): a different kind of visualization whose series recipe would consist of a sorted histogram composed with a cumulative line plot
- [Pareto Distributions](https://en.wikipedia.org/wiki/Pareto_distribution): offered in [Distributions.jl](https://github.com/JuliaStats/Distributions.jl)


## Acknowledgments

This work was supported in part by the United States government under the [DARPA DSSoC program](https://www.darpa.mil/program/domain-specific-system-on-chip).
