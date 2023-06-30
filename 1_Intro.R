# First Part

# Task 1
sim.5balls <- function(){
  x <- sample(c(1:5), 2, replace=T)
  x[1] == x[2]
}

res <- replicate(100000, sim.5balls())
sum(res)/length(res)

# Task 2
sim.socks <- function(){
  x <- sample(c(1,1,2,2,3,3), 2, replace=F)
  x[1] == x[2]
}

res <- replicate(100000, sim.socks())
sum(res)/length(res)

# Task 3
sim.keys <- function(){
  x <- sample(c(1:5), 5, replace=F)
  x[5] == 5
}

res <- replicate(100000, sim.keys())
sum(res)/length(res)

# Task 4
# The student knows questions 1-17, but does not know questions 18-20
sim.exam <- function(){
  x <- sample(c(1:20), 2, replace=F)
  y <- which(x>17)
  length(y) == 1
}

res <- replicate(100000, sim.exam())
sum(res)/length(res)

# Task 5
sim.birthdays <- function(k){
  x <- sample(c(1:365), k, replace=T)
  y <- unique(x)
  length(y) < length(x)
}

res <- replicate(100000, sim.birthdays(25))
sum(res)/length(res)

# Task 6
sim.presents <- function(k){
  x <- sample(c(1:k), k, replace=F)
  for (i in 1:length(x)){
    if (x[i] == i){
      return (TRUE)   
    }
  }
  return (FALSE)
  
  # Another solution:
  # x <- x - c(1:k)
  # any(x == 0)
}

res <- replicate(100000, sim.presents(20))
sum(res)/length(res)

# Task 7
sim.ants <- function(){
  ant1 <- sample(c(2, 3), 1)
  ant2 <- sample(c(1, 3), 1)
  ant3 <- sample(c(1, 2), 1)
  all( c(1,2,3) %in% c(ant1,ant2,ant3) )
}

res <- replicate(100000, sim.ants())
sum(res)/length(res)

# Task 8
# Green ball -> 0
# Red ball -> 1
sim.boxballs <- function(){
  dice <- sample(c(1:6), 1)
  if (dice[1] == 6){
    x <- sample(c(rep(0,2), rep(1, 2)), 1)
  }
  else {
    x <- sample(c(0, rep(1, 4)), 1)
  }
  x[1] == 0
}

# a)
res <- replicate(100000, sim.boxballs())
sum(res)/length(res)

# b) first try (not good)
sim.test.boxballs <- function(){
  success <- 0
  total <- 0
  for (i in 1:100000){
    dice <- sample(c(1:6), 1)
    if (dice[1] == 6){
      x <- sample(c(rep(0,2), rep(1, 2)), 1)
    }
    else {
      x <- sample(c(0, rep(1, 4)), 1)
    }
    if (x[1] == 0){
      total <- total + 1
      if (dice[1] != 6){
        success <- success + 1
      }
    }
  }
  success / total
}

sim.test.boxballs()

# b) second try
sim.test.boxballs2 <- function(){
  dice <- sample(c(1:6), 1)
  if (dice[1] == 6){
    x <- sample(c(rep(0,2), rep(1, 2)), 1)
  }
  else {
    x <- sample(c(0, rep(1, 4)), 1)
  }
  c(dice, x)
}

res <- replicate( 100000, sim.test.boxballs2() )
sum(res[1,]!=6 & res[2,]==0) / sum(res[2,]==0)

# Task 9
# a)
sim.coins <- function(){
  coin <- sample(c(11, 11, 22, 12, 12), 1)
  if (coin == 12){
    return (sample(c(1, 2), 1) == 1)
  }
  else if(coin == 11){
    return (TRUE)
  }
  else {
    return (FALSE)
  }
}

res <- replicate(100000, sim.coins())
sum(res) / length(res)

# b)
sim.coins.b <- function(){
  coin <- sample(c(11, 11, 22, 12, 12), 1)
  if (coin == 12){
    return (c(12, sample(c(1, 2), 1))) 
  }
  else if(coin == 11){
    return (c(11, 1))
  }
  else {
    return (c(22, 2))
  }
}

res <- replicate(100000, sim.coins.b())
sum(res[1,]==12 & res[2,]==1)/sum(res[2,]==1)

# Task 11
sim.99balls <- function(){
  balls <- sample(c(1:99), 4, replace=F)
  balls[1] == max(balls)
}

res <- replicate(100000, sim.99balls())
sum(res)/length(res)

