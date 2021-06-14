message(paste('--- #5 a through e ---'))

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

#for the longest path we are taking the longest geodisic of the graph
# The diameter of a graph is the length of the longest geodesic. 
message(paste('---Longest Path---'))
b <- diameter(network)
print(b)

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
#plot(g2)
l <- layout.fruchterman.reingold(g2, niter=5000)
plot(g2, layout=l,
     edge.arrow.size=0.5,
     #vertex.label = NA,
     vertex.label.cex=0.75,
     vertex.label.family="Helvetica",
     vertex.label.font=2,
     vertex.label.dist= 1,
     vertex.shape="circle",
     vertex.size=1,
     asp=0.5,
     vertex.label.color="black",
     edge.arrow.size = 0.001,
     edge.width=0.5)

#
# Ego
#

message(paste('---Ego(s)---'))
d<-ego(network)
print(ego(network, 1))
#print(ego(network, 2))
#print(ego(network, 3))

#
# Power Centrality
#
#e <- power_centrality(network, exp=e)
e <- power_centrality(network)

message(paste('---Power Centrality---'))
print(round(e, 3))
# message(paste('------'))
# for (e in seq(-0.5,.5, by=0.1)) {
#  print(round(power_centrality(network, exp=e)[c(1,2,4)], 3))
# }


rm(a)
rm(b)
rm(c)
rm(d)
rm(e)
rm(l)
rm(clique1)