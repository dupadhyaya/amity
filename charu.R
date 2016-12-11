# Charu DM Assignment
charu <- read.csv("~/charu.csv")
View(charu)
str(charu)
library(party)
head(charu)
dim(charu)
input.data = charu
png(file='decision_tree1.png')
output.tree = ctree(Decision ~ Attribute1 + Structure, data = input.data)
output.tree
plot(output.tree)
dev.off()
