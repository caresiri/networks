library(readxl)
library(igraph)

# Inspect the first few rows of the dataframe 'friends'
setwd("/Volumes/GoogleDrive/My Drive/INCAE Work Drive/Investigador/Teaching Assistant/Redes Sociales/Kite")
Kite <- read_excel("Kite_Example.xlsx", range = "A2:b20")
head(Kite)

# Convert friends dataframe to a matrix
Kite.mat <- as.matrix(Kite)

# Convert friends matrix to an igraph object
g <- graph.edgelist(Kite.mat, directed = FALSE)

# Make a very basic plot of the network
plot(g)

# Subset vertices and edges
V(g)
E(g)

# Count number of edges
gsize(g)

# Count number of vertices
gorder(g)

genders <- c("M", "F", "F", "F", "M", "M", "M", "F", "M", "F")
# Create new vertex attribute called 'gender'
g <- set_vertex_attr(g, "gender", value = genders)
V(g)[[]]
