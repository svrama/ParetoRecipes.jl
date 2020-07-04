using ParetoRecipes
using Test

@testset "ParetoRecipes.jl" begin
    @test pareto_front([[1, 0], [0, 1], [1, 1], [2, 2]]) == [[0, 1], [1, 0]]
end
