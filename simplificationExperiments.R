source("initialization.R") # load cleaned data, separate out dfs for nodes & edges then create graph 

library(igraph)
network <- igraph::simplify(wgraph)
targetNodes = which(igraph::degree(network) < 50)
network = igraph::delete.vertices(network, targetNodes)
message("plotted: 50")

source("printFancyGraph.R") # plot the graph, make it look good

targetNodes = which(igraph::degree(network) < 150)
network = igraph::delete.vertices(network, targetNodes)
message("plotted: 150")

source("printFancyGraph.R") # plot the graph, make it look good

targetNodes = which(igraph::degree(network) < 300)
network = igraph::delete.vertices(network, targetNodes)
message("plotted: 300")

source("printFancyGraph.R") # plot the graph, make it look good

targetNodes = which(igraph::degree(network) < 450)
network = igraph::delete.vertices(network, targetNodes)
message("plotted: 450")

source("printFancyGraph.R") # plot the graph, make it look good

targetNodes = which(igraph::degree(network) < 600)
network = igraph::delete.vertices(network, targetNodes)
message("plotted: 600")

source("printFancyGraph.R") # plot the graph, make it look good

targetNodes = which(igraph::degree(network) < 750)
network = igraph::delete.vertices(network, targetNodes)
message("plotted: 750")

source("printFancyGraph.R") # plot the graph, make it look good


rm(targetNodes)