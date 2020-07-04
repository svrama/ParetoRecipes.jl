using ParetoRecipes
using Test

fourpoints = [[1, 0], [0, 1], [1, 1], [2, 2]]

@testset "pareto front" begin
    @test pareto_front(fourpoints) == [[0, 1], [1, 0]]
end

@testset "pareto plot" begin
    m = ParetoRecipes.Pareto(fourpoints)
    @test m.args == fourpoints
end
