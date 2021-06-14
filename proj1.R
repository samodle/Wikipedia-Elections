source("initialization.R") # load cleaned data, separate out dfs for nodes & edges then create graph 
source("simplify_graph.R") # simplify the graph
network <- s2 # use the network variable for other functions
source("printFancyGraph.R") # plot the graph, make it look good
source("runGraphAnalysis.R")
