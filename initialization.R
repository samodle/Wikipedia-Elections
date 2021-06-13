## If a package is installed, it will be loaded. If any 
## are not, the missing package(s) will be installed 
## from CRAN and then loaded.

rm(list = ls())

## First specify the packages of interest
packages = c("readr", "igraph")

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
source("graphFunctions.R")

nodes <- getNodeList(wiki_clean[1:2])
edges <- getEdgeList(wiki_clean[,c(1,2,5)])
wgraph <- graph_from_data_frame(d = edges, vertices = nodes, directed = TRUE)

rm(package.check)
rm(packages)
rm(wiki_clean)

source("simplify_graph.R")


