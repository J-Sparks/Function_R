# Factorial Design
# Battery Experiment

YieldCP=c(90.4,90.2,90.1,90.3,90.5,90.7,90.7,90.6,90.5,90.6,90.8,90.9,90.2,90.4,89.9,90.1,90.4,90.1)
Tempe= gl(n = 2,k=3,length = 18,labels = c(150,160,170))
Pres= gl(n = 3,k=6,length = 1,labels = c(200,215,230))

d=data.frame(YieldCP,Tempe,Pres)

d
av=aov(Lifebattery~ MaterialType*Temp)
summary(av)

par(mfrow=c(2,2))
plot(av)


interaction.plot(x.factor = Temp,trace.factor = MaterialType,response = Lifebattery,fun = mean)


res=aggregate(Lifebattery~Temp*MaterialType, FUN = mean)

plot(c(15,70,125),res$Lifebattery[1:3], type = "o", col="black",xaxt='n',ylim = c(0,175),xlab = "Temp",ylab = "Average Life Battery")
lines(c(15,70,125),res$Lifebattery[4:6],type = "o",col='red')
lines(c(15,70,125),res$Lifebattery[7:9],type = "o",col='green')
axis(1,at=c(15,70,125))
legend("topright", legend = c("Type 1", "Type 2", "Type 3"),col = c("black","red","green"),lty=1,cex=0.8)





# Example 2: Impurity data (One cell observation)
library(additivityTests)
impurity=c(5,3,1,4,1,1,6,4,3,3,2,1,5,3,2)
Press= gl(n = 5,k=3,length = 15,labels = (1:5))
Temp= gl(n = 3,k=1,length = 15,labels = c(100,125,150))

data=matrix(impurity,nrow = 3)
# additivity Test
tukey.test(data)


av=aov(impurity ~ Press+Temp)
summary(av)










