### normalizing data
library(MASS)
mins <- apply(CSE_enr20201, 2, min)
maxs <- apply(CSE_enr20201, 2, max)
scaled.data <- scale(data, center=mins, scale=maxs-mins)
scaled <- as.data.frame(scaled.data)
