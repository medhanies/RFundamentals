n.deck<-c(6,7,8,9,10)
deck <- c("Duke", "Assassin", "Captain", "Ambassador", "Contessa")

deck[4]
deck[-4]
deck[c(1,3,5)]

names(n.deck) <- deck
n.deck

n.deck["Contessa"]
n.deck[c("Contessa", "Duke", "Ambassador")]

n.deck[3:5]

lv <- seq(10, 100, by = 10)
lv
lv[-(4:7)]
lv[lv>30]
