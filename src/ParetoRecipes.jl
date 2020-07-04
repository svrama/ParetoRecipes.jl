module ParetoRecipes

using RecipesBase

"""
Compute the Pareto front of a set of points.

Uses an inefficient brute-force exact method.

The Pareto front is also known as the Pareto frontier or Pareto set.
"""
function pareto_front(points, minimize = true)
    cmp_strict = minimize ? (<) : (>);
    cmp = minimize ? (<=) : (>=);
    dims = size(points,2)
    strictly_dominates(u, v) = all(cmp(u[i], v[i]) for i = 1:dims+1) && any(cmp_strict(u[i], v[i]) for i = 1:dims+1)
    undominated(p) = !any(strictly_dominates(p2, p) for p2 ∈ points if p2 != p)
    front = filter(undominated, points)
    sort(front)
end

@userplot Pareto

@recipe function f(h::Pareto)
    if length(h.args) != 1 # TODO: add a typecheck if feasible
        error("Pareto plots require a single array of vectors.  Got: $(typeof(h.args))")
    end
    points = h.args[1]

    legend := false

    # all points without annotated front
    @series begin
        seriestype := :scatter
        [p[1] for p in points], [p[2] for p in points]
    end

    # add front
    @series begin
        seriestype := :path
        front = pareto_front(points)
        ([p[1] for p in front], [p[2] for p in front])
    end

    ()
end

export pareto_front
export pareto

end
