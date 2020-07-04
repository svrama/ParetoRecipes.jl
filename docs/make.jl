using ParetoRecipes
using Documenter

makedocs(;
    modules=[ParetoRecipes],
    authors="Saketh Rama",
    repo="https://github.com/svrama/ParetoRecipes.jl/blob/{commit}{path}#L{line}",
    sitename="ParetoRecipes.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://svrama.github.io/ParetoRecipes.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/svrama/ParetoRecipes.jl",
)
