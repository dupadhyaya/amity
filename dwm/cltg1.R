# Clustering - Similarity Dissimilarity
#http://www.pmc.ucsc.edu/~mclapham/Rtips/cluster.htm

p=c(1,1,0,0,0,0,1,0,0,0)
q=c(0,1,0,0,0,0,0,0,1,0)

# Simple Similarity
dist(test, method="simple matching")

# emdist package https://cran.r-project.org/web/packages/emdist/emdist.pdf
# Not working
library(emdist)
emd(p,q, dist="euclidean")

# Eculidean Distance
euc.dist <- function(x1, x2) sqrt(sum((x1 - x2) ^ 2))
euc.dist(p,q)
sqrt(sum((p-q)^2))

#rdist function in the fields package 


# Manhattan Distance


# Jaccquard Simmilarity
#m11 / (m01 + m10 + m11)
library('clusteval')
cluster_similarity(p, q, similarity = "jaccard",method = "independence")
intersect(p,q)  # what is this ?

# package vegdist NA
#library(vegdist)
#vegdist(rbind(unlist(DF1, use.names=F),unlist(DF2, use.names=F)), method = "jaccard")


# Cosine Similarity

# lsa package https://cran.r-project.org/web/packages/lsa/lsa.pdf

library(lsa)
cos1 = cosine(p,q)
# cross prod = sum(p * p)
crossprod(p)
cos2 = crossprod(p, q)/sqrt(crossprod(p) * crossprod(q))
cos2

# proxy package https://cran.r-project.org/web/packages/proxy/proxy.pdf

library('proxy') # Library of similarity/dissimilarity measures for 'dist()'
dist(p,q, method="cosine")
dist(p,q, method = "fJaccard")

#  vegan package
