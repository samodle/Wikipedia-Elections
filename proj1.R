source("initialization.R") # load cleaned data, separate out dfs for nodes & edges then create graph 
source("simplify_graph.R") # simplify the graph
rm(wgraph)
network <- s2 # use the network variable for other functions
source("printFancyGraph.R") # plot the graph, make it look good

# part 3
network2 <- network
source("introToGraphAnalyticsFunctions.R")

# part 4
network3 <- network
#source("igraphExperiments.R")

# part 5
source("runGraphAnalysis.R")
