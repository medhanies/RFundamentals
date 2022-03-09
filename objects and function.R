deck <- c("Duke", "Assassin", "Captain", "Ambassador", "Contessa")
print(deck)

hand <- sample(deck, size = 3, replace = T)
print(hand)

draw <- function(){
  deck <- c("Duke", "Assassin", "Captain", "Ambassador", "Contessa")
  hand <- sample(deck, size = 3, replace = T)
  print(hand)
}

draw()

flip <- function(){
  coin <- c("heads", "tails")
  toss <- sample(coin, 100, replace = TRUE, prob = c(0.3, 0.7))
  return(toss)
}

flip()

