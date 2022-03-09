gross <- c(381, 1340, 318, 975, 396, 960, 292, 940, 302, 934, 290, 897, 262, 879, 249, 797)
hp.mat <- matrix(gross, nrow = 8, byrow = T)
hp.mat

hp.snip <- hp.mat[c(1, 3, 7), ]
hp.snip
colnames(hp.mat) <- c("USA", "Worldwide")
rownames(hp.mat) <- c("Hallows Part 2", "Sorcerer's Stone", "Hallows Part 1", "Order", "Prince", "Goblet", "Chamber", "Prisoner")
hp.mat
hp.mat["Goblet", ]
hp.mat[ , "USA"]
