total <- colSums(matrix.mat)
rowSums(matrix.mat)
average <- colMeans(matrix.mat)
rowMeans(matrix.mat)

matrix.prelim <- rbind(matrix.mat, average, total)
matrix.prelim
