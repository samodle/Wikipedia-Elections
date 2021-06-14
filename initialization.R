rm(list = ls()) # clear everything to start

## First specify the packages of interest
packages = c("readr", "igraph", "sna")

## Now load or install&load all
package.check <- lapply(
  packages,
  FUN = function(x) {
    if (!require(x, character.only = TRUE)) {
      install.packages(x, dependencies = TRUE)
      library(x, character.only = TRUE)
    }
  }
)  

# import the dataset
library(readr)
wiki_clean <- read_csv("wiki_clean.csv", col_types = cols(X1 = col_skip()))


library(igraph)
source("getNodeList.R")

nodes <- getNodeList(wiki_clean[1:2])
edges <- getEdgeList(wiki_clean[,c(1,2,5)])

x <- c("V1","V2","name") # using the year as the 'name' field
colnames(edges) <- x

wgraph <- graph_from_data_frame(d = edges, vertices = nodes, directed = TRUE)

rm(x)
rm(package.check)
rm(packages)
rm(wiki_clean)



