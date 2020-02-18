<<<<<<< HEAD
install.packages("igraph")
install.packages("sna")

library(igraph)
library(sna)

# Import data
g <- read.graph("C:/Users/Eric/Desktop/Spring_2020/BigData/project1/email-EU.edges", format="ncol", directed=F)

# Function exploration for question 4
#g.adj <- rgraph("graph", FALSE)

delete_edges(g, g)

avg_dist = mean_distance(g, directed = FALSE, unconnected = TRUE)
print(avg_dist)

g<-igraph::graph_from_adjacency_matrix(g.adj, mode="undirected")

simplify(g, remove.multiple = TRUE, remove.loops = TRUE, edge.attr.comb = igraph_opt("edge.attr.comb"))

is_weighted(g)

component_distribution(g, cumulative = FALSE, mul.size = FALSE)


cliques(g, min = NULL, max = NULL)

max_cliques(g, min = NULL, max = NULL, subset = NULL,
          file = NULL)


vertex_connectivity(g, source = 1, target = 5,
                    checks = TRUE)
vertex_connectivity(g, source = 5, target = 1,
                    checks = TRUE)
vertex_connectivity(g, source = 1, target = 4,
                    checks = TRUE)
vertex_connectivity(g, source = 5, target = 7,
                    checks = TRUE)

vertex_connectivity(g, source = 3, target = 7,
                    checks = TRUE)
diameter(g, directed = TRUE, unconnected = TRUE, weights = NULL)

isomorphic(g, g, method = c("auto", "direct", "vf2", "bliss"))

as_adj_list(g, mode = c("all", "out", "in", "total"))

which_multiple(g, eids = E(g))

knn(g, vids = V(g), weights = NULL)

as_edgelist(g, names = TRUE)

plot(g)

igraph::largest_cliques(data)


# number 3 stuff
gcb <- igraph::centr_betw(data)
gcb

ged <- igraph::edge_density(data)
ged

gsp <- igraph::shortest_paths(data)

hist(igraph::degree(data))

eigen <- igraph:: eigen_centrality(data)
eigen
