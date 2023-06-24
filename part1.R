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
