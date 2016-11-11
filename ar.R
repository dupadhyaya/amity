# Association Rules
# https://www.r-bloggers.com/association-rule-learning-and-the-apriori-algorithm/

library("arules");
library("arulesViz");
patterns = random.patterns(nItems = 1000);
summary(patterns);
trans = random.transactions(nItems = 1000, nTrans = 1000, method = "agrawal",  patterns = patterns);
trans
image(trans);
#-------
data("AdultUCI");

Adult = as(AdultUCI, "transactions");

rules = apriori(Adult, parameter=list(support=0.01, confidence=0.5));

rules;

inspect(head(sort(rules, by="lift"),3));

plot(rules);

head(quality(rules));

plot(rules, measure=c("support","lift"), shading="confidence");

plot(rules, shading="order", control=list(main ="Two-key plot"));

sel = plot(rules, measure=c("support","lift"), shading="confidence", interactive=TRUE);

subrules = rules[quality(rules)$confidence > 0.8];

subrules ;

plot(subrules, method="matrix", measure="lift");

plot(subrules, method="matrix", measure="lift", control=list(reorder=TRUE));

plot(subrules, method="matrix3D", measure="lift");

plot(subrules, method="matrix3D", measure="lift", control = list(reorder=TRUE));

plot(subrules, method="matrix", measure=c("lift", "confidence"));

plot(subrules, method="matrix", measure=c("lift","confidence"), control = list(reorder=TRUE));

plot(rules, method="grouped");

plot(rules, method="grouped", control=list(k=50));

sel = plot(rules, method="grouped", interactive=TRUE);

subrules2 = head(sort(rules, by="lift"), 30);

plot(subrules2, method="graph");

plot(subrules2, method="graph", control=list(type="items"));

plot(subrules2, method="paracoord");

plot(subrules2, method="paracoord", control=list(reorder=TRUE));

oneRule = sample(rules, 1);

inspect(oneRule);

itemFrequencyPlot(Adult, support = 0.1, cex.names=0.8);

fsets = eclat(trans, parameter = list(support = 0.05), control = list(verbose=FALSE));

singleItems = fsets[size(items(fsets)) == 1];

singleSupport = quality(singleItems)$support;

names(singleSupport) = unlist(LIST(items(singleItems), decode = FALSE));

head(singleSupport, n = 5);

itemsetList = LIST(items(fsets), decode = FALSE);

allConfidence = quality(fsets)$support / sapply(itemsetList, function(x) max(singleSupport[as.character(x)]));

quality(fsets) = cbind(quality(fsets), allConfidence);

summary(fsets);


# ------
library(arules)
data("Adult")
## Mine association rules.
rules <- apriori(Adult, 
                 parameter = list(supp = 0.5, conf = 0.9, target = "rules"))
summary(rules)
maximal <- is.maximal(rules)
inspect(rules[maximal])


# ---
txn <- read.transactions(file.choose(), rm.duplicates= TRUE, format="basket",sep=",", cols =1);
txn
inspect(txn)
r <- apriori(txn, parameter=list(sup=.05,conf=0.5))
