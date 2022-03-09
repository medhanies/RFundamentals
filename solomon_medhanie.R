library(pdfetch)
library(moments)
library(graphics)
library(psych)
library(tidyquant)
library(ggplot2)
library(forecast)
library(quantmod)

tq_index("SP500")

tickers = c("NFLX", "DIS", "TSLA", "GOOG", "AMZN")

#fetching the stock data from yahoo
index = pdfetch_YAHOO(tickers, fields = "adjclose", from = "2016-09-01", to = "2021-09-01", interval = "1wk")

#make a function to calculate the sumstats for the stock data
#argument of x is the input for the stock tickers
seestats <- function(x){
  l = dim(x)[2]
  sumstats = matrix(0, nrow = 7, ncol = l)
  rownames(sumstats) = c("mean", "median", "Q1", "Q3", "std", "skewness", "kurtosis")
  colnames(sumstats) = colnames(x)
  for (i in 1:l)
  {
    sumstats[1,i]=mean(x[,i])
    sumstats[2,i]=median(x[,i])
    quan=rep(0,2)
    quan=quantile(x[,i],p=c(0.25,0.75))
    sumstats[3:4,i]=t(quan)
    sumstats[5,i]=sd(x[,i])
    sumstats[6,i]=skewness(x[,i])
    sumstats[7,i]=kurtosis(x[,i])
  }
  return(sumstats)
}
#show the sumstats for the different stocks
seestats(index)

#get the continuous compounding returns
returns = na.omit(diff(log(index)))

#print the mean and standard deviation values
seestats(returns)

#Plot the log returns
plot(returns$NFLX, type="l", col="blue", lwd=1, ylab="CC Returns", main="Netflix")
plot(returns$DIS, type="l", col="orange", lwd=1, ylab="CC Returns", main="Disney")
plot(returns$GOOG, type="l", col="red", lwd=1, ylab="CC Returns", main="Google")
plot(returns$AMZN, type="l", col="pink", lwd=1, ylab="CC Returns", main="Amazon")
plot(returns$TSLA, type="l", col="yellow", lwd=1, ylab="CC Returns", main="Tesla")

#Histogram and Normal curve
hist(returns$NFLX, freq = FALSE, col="green", xlab="CC Returns",
     main = "Netflix") + curve(dnorm(x, mean=mean(returns$NFLX), sd=sd(returns$NFLX)), add = TRUE,
                               col="red")
hist(returns$DIS, freq = FALSE, col="green", xlab="CC Returns",
     main = "Disney") + curve(dnorm(x, mean=mean(returns$DIS), sd=sd(returns$DIS)), add = TRUE,
                               col="red")
hist(returns$GOOG, freq = FALSE, col="green", xlab="CC Returns",
     main = "Google") + curve(dnorm(x, mean=mean(returns$GOOG), sd=sd(returns$GOOG)), add = TRUE,
                               col="red")
hist(returns$AMZN, freq = FALSE, col="green", xlab="CC Returns",
     main = "Amazon") + curve(dnorm(x, mean=mean(returns$AMZN), sd=sd(returns$AMZN)), add = TRUE,
                               col="red")

#extract data from index
getSymbols("NFLX", from = "2016-09-01", to = "2021-09-01")
head(NFLX)

#Estimate mean and standard deviation of returns for the next 100 days
NFLX.norm = rnorm(100, mean = mean(returns$NFLX), sd = sd(returns$NFLX))
NFLX_matrix <- matrix(NFLX.norm, nrow= 100, ncol = 20, byrow = TRUE)
price_matrix <- matrix(NFLX,nrow=100, ncol=20)
price_100 <- NFLX_matrix * price_matrix
price_100

getSymbols("DIS", from = "2016-09-01", to = "2021-09-01")
head(DIS)

DIS.norm = rnorm(100, mean = mean(returns$DIS), sd = sd(returns$DIS))
DIS_matrix <- matrix(DIS.norm, nrow= 100, ncol = 20, byrow = TRUE)
price_matrix <- matrix(DIS,nrow=100, ncol=20)
price_100 <- DIS_matrix * price_matrix
price_100

getSymbols("GOOG", from = "2016-09-01", to = "2021-09-01")
head(GOOG)

GOOG.norm = rnorm(100, mean = mean(returns$GOOG), sd = sd(returns$GOOG))
GOOG_matrix <- matrix(GOOG.norm, nrow= 100, ncol = 20, byrow = TRUE)
price_matrix <- matrix(GOOG,nrow=100, ncol=20)
price_100 <- GOOG_matrix * price_matrix
price_100

getSymbols("AMZN", from = "2016-09-01", to = "2021-09-01")
head(AMZN)

AMZN.norm = rnorm(100, mean = mean(returns$AMZN), sd = sd(returns$AMZN))
AMZN_matrix <- matrix(AMZN.norm, nrow= 100, ncol = 20, byrow = TRUE)
price_matrix <- matrix(AMZN,nrow=100, ncol=20)
price_100 <- AMZN_matrix * price_matrix
price_100

getSymbols("TSLA", from = "2016-09-01", to = "2021-09-01")
head(TSLA)

TSLA.norm = rnorm(100, mean = mean(returns$TSLA), sd = sd(returns$TSLA))
TSLA_matrix <- matrix(TSLA.norm, nrow= 100, ncol = 20, byrow = TRUE)
price_matrix <- matrix(TSLA,nrow=100, ncol=20)
price_100 <- TSLA_matrix * price_matrix
price_100


#Repeat the simulatiion 20 times
set.seed(20)
NFLX.norm=rnorm(100)
NFLX.rand=NFLX.norm^2

set.seed(20)
DIS.norm=rnorm(100)
DIS.rand=DIS.norm^2

set.seed(20)
GOOG.norm=rnorm(100)
GOOG.rand=GOOG.norm^2

set.seed(20)
AMZN.norm=rnorm(100)
AMZN.rand=AMZN.norm^2

set.seed(20)
TSLA.norm=rnorm(100)
TSLA.rand=TSLA.norm^2
