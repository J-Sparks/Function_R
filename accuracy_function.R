#############################
### ACCURACY ################
#############################

# Using Navie Bayes classification
library(caret)    # implementing with caret
#Confusion Matrix (act\pred)
confTier1 <- confusionMatrix(predict(aveGPANB_modelt1), aveGPAIndtTrainingSet$aveGPAInd) 
### export the results
p1 <-  predict(aveGPANB_modelt1, aveGPAIndtTrainingSet, type="prob")
results1 <- cbind(aveGPAIndtTrainingSet,p1)

# second way to determine accuracy
confMatRank <- table(predict(allmodelNB), allDropoutTrainingSet$Drop1stYear)
confMatRank 
#Accurecy
sum(diag(confMatRank)/sum(confMatRank)) # 0.8438356

# misclassfication
1-sum(diag(confMatRank)/sum(confMatRank)) 

# Predition with type = probability
p <- predict(allmodelNB, allDropoutTrainingSet)
pred <- predict(allmodelNB, allDropoutTrainingSet[c(1:10),], type="prob")
pred

#prior fre and prob
n <- table(allDropoutTrainingSet$Drop1stYear)
n
n/sum(n)
