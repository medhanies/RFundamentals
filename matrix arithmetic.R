b.office <- c(171.5, 292, 281.6, 460.6, 139.1, 288)
matrix.mat <- matrix(b.office, nrow = 3, byrow = T, dimnames = list(c("The Matrix", "Reloaded", "Revolutions"), c("US", "Worldwide")))
matrix.mat              


matrix.scaled <- matrix.mat/1000
matrix.scaled

avg.margin <- matrix.mat - 121
avg.margin

budget <- matrix(c(63, 150, 150), nrow = 3, ncol = 2)
budget
margin <- matrix.mat - budget
margin
matrix.mat - c(63, 150, 150)

v <- matrix(1:6, nrow = 3)
v

matrix.multiplied <- matrix.mat*v
matrix.multiplied
