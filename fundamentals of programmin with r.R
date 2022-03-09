3 == 3
"cat" == "cat"
"cat" == "car"
"sugar" != "salt"
3 != 3
TRUE != FALSE
17 > 21
17 > 5
TRUE < FALSE
7 >= 7
7 <= 4


w <- 9

(w < 12) & (w > 6)

w < 12
w > 6
TRUE & TRUE
TRUE & FALSE
FALSE & TRUE
(w>1) | (w<12)
(w>3) | (w<5)
(w<8) | (w<13)

!TRUE
!(4<3)

v <- c(1, 3, 5, 7)
w <- c(1, 2, 3, 4)

3 == v
3 == w

12 > c(11, 11, 13, 14)
"catch" == c("catch", 22, "is", "fantastic")
c(11, 12, 13) >= c(10, 12, 14)
(v>=3) & (v<7)
v>=3
v<7
(v>=3) | (v<7)
!(v>3)

!("mode">"mope")

s <- c(3, 1, 2, 5)
(s<4) && (s>2)

if(A){
  Z
}

num <- 3
if(num < 0){
  print("Your number is negative")
}

v <- -5
if(v < 0){
  v <- v*-1
  print (v)
}

if(A){
  Scenario 1
} else {
  Scenario 2
}

v <- 8
if(v<0){
  v <- v*-1
  print("I have made your object positive look:")
  print(v)
} else {
  print("Your object was already positive or zero, so I did nothing")
}

v <- -7
if(v<0){
  print("The object was less than 0, but I am working on it!")
  print("Wait for it...")
  v <- v*-1
  print("Your object is now positive. Check it out!")
  print(v)
} else if(v == 0){
  print("Your object is exactly zero")
} else if((v>0) & (v<12)){
  print("The object is positive and less than 12")
} else {
  print("Your object is positive, and larger than 12")
  print(v)
}

z <- c(1, 0, -3, 5)
w <-6
if(z < 1){
  print("My parrot sings 'God save the queen'")
}

z<3

if(w<7){
  print("w is less than 7")
} else if(w == 6){
  print("w is precisely 6")
} else{
  print("w is more than 7")
}

w <- 8

for(value in x){
  y
}

title <- c("Catch", "Me", "If", "You", "Can")

for(word in title){
  print("Tom Hanks is a sweetheart")
}

for(word in title){
  print(word)
}

new.title <- vector(length = 5)
new.title

for(i in 1:5){
  new.title[i] <- title[i]
}

new.title


n <- -12
while(n<0){
  print("Your value n stands for Negative")
}

while(n<0){
  print(paste("Your value equals", n))
  n <- n + 1
}

for(i in 22:43){
  print(paste("I is", i))
}


n <- -12

repeat{
  print(paste("Your value equals", n))
  n <- n + 1
  if(n >= 0){
    print("N is now either 0 or a positive number")
    print("The loop will be broken")
    break
  }
}

coup <- matrix(rep(c("Duke", "Assassin", "Captain", "Ambassador", "Contessa"
), 3), ncol = 1)

deal<- function(deck){
  cards <- deck[1:3,]
  print(cards)
}

deal(deck = coup)

shuffle <- function(deck){
  random <- sample(1:5, size = 5)
  deck.s <- deck[random, , drop = FALSE]
  print(deck.s)
}

shuffle(coup)

mult12 <- function(x){
  y <- (x*12)
  return(y)
}

mult12(3)
print(y)

new.var <- mult12(3)
new.var
