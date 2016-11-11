#ar4
# Two Methods
library("arules");
library("arulesViz");
x = read.csv(file.choose())
rules1 = apriori(x)
summary(rules1)
inspect(head(sort(rules, by="lift"),5));
head(quality(sort(rules1)))

# Adding Parameters : changing Confidence, support Levels
rules2 = apriori(x, parameter=list(support=0.2, confidence=0.5));
summary(rules2)
inspect(head(sort(rules2, by="lift"),5));
head(quality(sort(rules2)))
plot(rules2);

plot(rules2, measure=c("support","lift"), shading="confidence");
plot(rules2, shading="order", control=list(main ="Two-key plot"));
sel = plot(rules, measure=c("support","lift"), shading="confidence", interactive=TRUE);

subrules = rules[quality(rules)$confidence > 0.8];
subrules
inspect(head(sort(subrules,by="lift"),5))


