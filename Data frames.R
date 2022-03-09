title <- c("Star Wars", "The Empire Strikes Back", "Return of the Jedi",
           "The Phantom Menace", "Attack of the Clones", "Revenge of the Sith",
           "The Force Awakens")
year <- c(1977, 1980, 1983, 1999, 2002, 2005, 2015)
length.min <- c(121, 124, 133, 133, 142, 140, 135)
box.office.mil <- c(787, 534, 572, 1027, 657, 849, 2059)

my.data <- data.frame(title, year, length.min, box.office.mil)
my.data

names(my.data) <- c("Movie Title", "Release Year", "Length in Minutes", "Box Office")

my.data <- data.frame(Title = title, Year = year, Length = length.min,
                      Gross = box.office.mil, stringsAsFactors = FALSE)

my.data
str(my.data)

my.pok <- read.table("pokRdex_comma.csv",
                     sep = ',',
                     header = TRUE,
                     stringsAsFactors = FALSE)
my.pok

my.pok <- read.csv("pokRdex_comma.csv", stringsAsFactors = FALSE, nrows = 100)
my.pok


write.csv(my.data, file = "MyFirstDataFrame.csv", row.names = FALSE)

my.pok
nrow(my.pok)
ncol(my.pok)
colnames(my.pok)
rownames(my.pok)

str(my.pok)
summary(my.pok)

library(tidyverse)
starwars
my.wars <- as.data.frame(starwars)
my.wars <- my.wars[ ,-(11:13)]
my.wars

head(my.wars)
tail(my.wars)

my.wars[3, 9]
my.wars[3, "homeworld"]

my.wars[5, ]

head(my.wars[ , 1])
head(my.wars[["name"]])
head(my.wars$name)
head(my.wars["name"])

my.wars[c(1:14), c("name", "homeworld")]

my.data

mark <- c(37.5, 34.75, 34.25, 0, 0, 0.75, 0)
carrie <- c(13.5, 22.75, 21.25, 0, 0, 0.5, 5.75)

my.data$MarkScreenTime <- NULL
my.data$CarrieScreenTime <- NULL
my.data

my.data[["MarkScreenTime"]] <- NULL
my.data[["CarrieScreenTime"]] <- NULL
my.data

my.data <- cbind(my.data, MarkScreenTime = mark, CarrieScreenTime = carrie)
my.data

rogueOne <- data.frame(Title = "Rogue One", Year = 2016, Length = 133, Gross = 1051, 
                       MarkScreenTime = 0, CarrieScreenTime = 0.25)
rbind(my.data, rogueOne)

eg.na <- c(NA, 1:10)
eg.na
mean(eg.na)

mean(eg.na, na.rm = TRUE)

head(my.wars)
is.na(my.wars)
any(is.na(my.wars))

any(is.na(my.wars[ , c("name", "homeworld")]))

my.wars$name[is.na(my.wars$name)] <- "unknown"
subset(my.wars, species == "unknown")


