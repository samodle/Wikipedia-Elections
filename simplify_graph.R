library(igraph)
simplegraph <- igraph::simplify(wgraph)
targetNodes = which(igraph::degree(simplegraph) < 700)
s2 = igraph::delete.vertices(simplegraph, targetNodes)

#message(paste('original graph density: ',igraph::edge_density(simplegraph)))
#message(paste('density after simplify function: ',igraph::edge_density(simplegraph)))
message(paste('next step of simplification: ',igraph::edge_density(simplegraph)))

#par(bg="white")
#hist(igraph::degree(s2))