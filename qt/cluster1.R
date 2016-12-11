# Cluster Analysis
#https://www.r-bloggers.com/k-means-clustering-in-r/
library(datasets)
head(iris)
#found that Petal.Length and Petal.Width were similar among the same species but varied considerably between different species

library(ggplot2)
ggplot(iris, aes(Petal.Length, Petal.Width, color = Species)) + geom_point()

# Clustering ----------------

#try to cluster it. Since the initial cluster assignments are random, let us set the seed to ensure reproducibility.

str(iris)
set.seed(20)
irisCluster <- kmeans(iris[, 3:4], 3, nstart = 20)
irisCluster

table(irisCluster$cluster, iris$Species)

# Plot
irisCluster$cluster <- as.factor(irisCluster$cluster)
ggplot(iris, aes(Petal.Length, Petal.Width, color = iris$cluster)) + geom_point()
