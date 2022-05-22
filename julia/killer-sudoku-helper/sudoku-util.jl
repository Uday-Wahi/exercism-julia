function combinations_in_cage(s, c)
    ps = powerset(collect(1:9))
    filter(xs -> length(xs) == c && sum(xs) == s, ps) |> sort
end
function powerset(xs)
    result = [[]]
    for elem in xs, j in eachindex(result)
        push!(result, [result[j]; elem])
    end
    result
end
function combinations_in_cage(s, c, r)
    combinations = combinations_in_cage(s, c)
    filter(xs -> all(x -> (x ∉ xs), r), combinations)
end
