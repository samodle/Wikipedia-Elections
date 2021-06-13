getNodeList <- function(df){
  node_list <- data.frame(n=unlist(df, use.names = FALSE)) 
  node_list <- unique(node_list)
  node_list <- na.omit(node_list)
  return(node_list)
}

getEdgeList <- function(df){
  edge_list = na.omit(df)
}