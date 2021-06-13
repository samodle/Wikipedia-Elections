# Determine the: 
# (a) central nodes(s) in the graph, 
# (b) longest path(s), 
# (c) largest clique(s), 
# (d) ego(s), and 
# (e) power centrality. 

#
# Central Nodes
#
message(paste('---Central Nodes---'))
a <- igraph::eigen_centrality(network)
print(a$vector)

#
# Longest Path
#

# b <- farthest_vertices(network)

#
# Largest Clique
#

c <- largest.cliques(network)

# let's just take the first of the largest cliques
clique1 <- c[[1]]

# subset the original graph by passing the clique vertices
g2 <- induced.subgraph(graph=network,vids=clique1)

# plot the clique
plot(g2)

#
# Ego
#


#
# Power Centrality
#
e <- power_centrality(network, exp=e)

message(paste('---Power Centrality---'))
print(round(e, 3))
# message(paste('------'))
# for (e in seq(-0.5,.5, by=0.1)) {
#  print(round(power_centrality(network, exp=e)[c(1,2,4)], 3))
# }