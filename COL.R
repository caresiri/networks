COL <- read.csv("COL.csv", row.names=1)
COL.mat <- as.matrix(COL)
g <- graph_from_adjacency_matrix( COL.mat, weighted=TRUE, mode = "max" )
plot(g)

# Create a vector of weights
w <- E(g)$weight

# Plot the network varying edges by weights
m <- layout_nicely(g)
plot(g, 
     vertex.label.color = "black",
     vertex.label.size = 10,
     vertex.size = 8,
     edge.color = 'gray40',
     edge.width = w,
     layout = m)

#Dicotomize
g2 <- delete_edges(g, E(g)[weight <= 2])
plot(g2, 
     vertex.label.color = "black",
     vertex.label.size = 10,
     vertex.size = 8,
     edge.color = 'gray40',
     edge.width = w,
     layout = m)
