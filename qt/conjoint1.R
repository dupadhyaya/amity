# Conjoint Analysis
#http://keii.ue.wroc.pl/pracownicy/tb/Bak_A_and_Bartlomowicz_T_Conjoint_analysis_method_and_its_implementation_in_conjoint_R_package.pdf
library(conjoint)
data(tea)
tprof #  Matrix of profiles (4 attributes and 13 profiles)
str(tprof)
?tea
caModel(y=tprefm[1,], x=tprof)


# caUtilities ---------------
caUtilities(y=tprefm[1,], x=tprof, z=tlevn)

caPartUtilities(y=tpref, x=tprof, z=tlevn)
tlevn
tsimp
head(tprefm)
head(tpref)

Conjoint(y=tpref, x=tprof, z=tlevn)

caImportance(y=tpref, x=tprof)

caTotalUtilities(y=tpref, x=tprof)

colnames(tprefm)<-cbind(paste("prof",1:13,sep=""))
tprefm[1:5,]

caSegmentation(y=tpref, x=tprof, c=3)

ShowAllSimulations(sym=tsimp, y=tpref, x=tprof)



#https://rpubs.com/haj3/conjoint

# Segmentation
library(cluster)
segments <- caSegmentation(y=tpref, x=tprof, c=3)
print(segments)
