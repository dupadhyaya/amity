# Hierarchical Clustering
#http://www.r-tutor.com/gpu-computing/clustering/hierarchical-cluster-analysis

d <- dist(as.matrix(mtcars))   # find distance matrix 
hc <- hclust(d)                 # apply hirarchical clustering 
plot(hc)                       # plot the dendrogram
