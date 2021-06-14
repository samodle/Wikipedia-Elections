message(paste('---Intro To Graph Analytics Functions---'))

message(paste('Vertices:'))
print(V(network2))


message(paste('-'))
message(paste('Edges:'))
print(E(network2))


message(paste('-'))
message(paste('Adjacency Matrix:'))
print(network2.adj <- igraph::get.adjacency(network2))


message(paste('-'))
message(paste('Edge Density:'))
print(igraph::edge_density(network2))
print(igraph::edge_density(network2, loops=T))


message(paste('-'))
message(paste('Degree:'))
print(igraph::degree(network2))


message(paste('-'))
message(paste('Betweenness Centrality:'))
print(igraph::centr_betw(network2))


message(paste('-'))
message(paste('Closeness Centrality:'))
print(igraph::centr_clo(network2))


message(paste('-'))
message(paste('Shortest Paths:'))
network2.sp <- igraph::shortest.paths(network2)
print(network2.sp)

