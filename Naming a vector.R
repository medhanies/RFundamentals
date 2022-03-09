

age <- c(23, 26, 24, 26)

attributes(age)
names(age) <- c("George", "John", "Paul", "Ringo")
age

attributes(age)
names(age)

names(age) <- c("George Harrison", "John Lennon", "Paul McCartney", "Ringo Star")
age

names(age) <- NULL
age
attributes(age)