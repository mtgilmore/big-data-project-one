install.packages("igraph")
install.packages("sna")
library(igraph)
library(sna)

# Replace with your file path
data_path = "C:/Users/mtgil/Desktop/big-data/big-data-project-one/email-EU/email-EU.edges"

data = igraph::read.graph(data_path, directed=FALSE)
adj_matrix = rgraph()