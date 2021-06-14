message(paste('---Additional igraph Functionality---'))

message(paste('List all simple paths from one source (only showing head):'))
print(head(all_simple_paths(network3, 1)))


message(paste('-'))
message(paste('Articulation Points:'))
print(articulation_points(network3))


message(paste('-'))
message(paste('The assortativity coefficient is positive if similar vertices (based on some external property) tend to
connect to each, and negative otherwise:'))
print(assortativity_degree(network3))


message(paste('-'))
message(paste('The authority scores of the vertices are defined as the principal eigenvector of ATA, where A is the
adjacency matrix of the graph:'))
print(authority_score(network3, scale = TRUE, weights = NULL, options = arpack_defaults))


message(paste('-'))
message(paste('Calculate the number of automorphisms of a graph, i.e. the number of isomorphisms to itself:'))
print(automorphisms(network3, sh="fm"))


message(paste('-'))
message(paste('Breadth-first search is an algorithm to traverse a graph. We start from a root vertex and spread along
every edge “simultaneously”:'))
bfs(network3, 1)


message(paste('-'))
message(paste('Depth-first search is an algorithm to traverse a graph. It starts from a root vertex and tries to go
quickly as far from as possible:'))
dfs(network3, 1)


message(paste('-'))
message(paste('mean_distance calculates the average path length in a graph, by calculating the shortest paths
between all pairs of vertices:'))
print(mean_distance(network3, directed = TRUE, unconnected = TRUE))


message(paste('-'))
message(paste('Incident edges of a vertex in a graph:'))
print(incident(network3, 1))


message(paste('-'))
message(paste('A graph is chordal (or triangulated) if each of its cycles of four or more nodes has a chord, which
is an edge joining two nodes that are not adjacent in the cycle. An equivalent definition is that any
chordless cycles have at most three nodes:'))
print(is_chordal(network3))


