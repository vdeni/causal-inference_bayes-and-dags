using StatsPlots

function compare_yhat(d_comparisons;
                      y_pred_1_name = "Y_dag",
                      y_pred_2_name = "Y_bn")

    p = StatsPlots.scatter(d_comparisons[!, y_pred_1_name],
                           d_comparisons[!, y_pred_2_name];
                           legend = false,
                           markercolor = :black,
                           markeralpha = 0.3,
                           markerstrokecolor = nothing,
                           xlabel = y_pred_1_name,
                           ylabel = y_pred_2_name)

    StatsPlots.plot!(p,
                     x -> x;
                     linecolor = :red,
                     linestyle = :dash)

    return p
end
