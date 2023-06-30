# Task 16

# X = number of 6s from 10 dice throws
# X ~ Bi(n=10, p=1/6)

# P(X = 2)
dbinom(2, 10, 1/6)

# P (X <= 2)
pbinom(2, 10, 1/6)

# P (X >= 2) = 1 - P(X <= 1)
1 - pbinom(1, 10, 1/6)

# P (3 <= X <= 8) = P (X <= 8) - P (X <= 2)
pbinom(8, 10, 1/6) - pbinom(2, 10, 1/6)
# Another solution: sum(pbinom(3:8, 10, 1/6))


# Task 17
# X = number of throws until we get 6 (included)
# X ~ Ge(p=1/6)

# P(X <= 10)
pgeom(10-1, 1/6)

# P(X >= 6) = 1 - P (X <= 5)
1 - pgeom(5-1, 1/6)


# Task 18
# X = numbers of throws until we get 3rd 6 (included)
# X ~ NB(r=3, p=1/6)

# P (X <= 20)
pnbinom(20-3, 3, 1/6)


# Task 19
# X = number of new batteries from the chosen

# P(X = 2)
dhyper(2, 5, 3, 2)

# Another solution: choose(5, 2) / choose(8, 2)


# Task 20
# X = number of mistakes for 5 pages
# X ~ Bi(n=5*300, p=1/500)

# P (X <= 2)
pbinom(2, 5*300, 1/500)

# P (1 <= X <= 3) 
sum(dbinom(1:3, 5*300, 1/500))


# Task 21
# X = number of correct answers
# X ~ Bi(n=10, p=1/4)

# P (X >= 5) = 1 - P (X <= 4)
1 - pbinom(4, 10, 1/4)


# Task 22
# X = number of volunteers needed to find the gene
# X ~ Ge(p=1/10)

# P (X >= 5) = 1 - P (X <= 4)
1 - pgeom(4-1, 1/10)

# Y = number of volunteers needed to find 10 times the gene
# Y ~ NB(r=10, p=1/10)

# P (Y >= 50) = 1 - P (Y <= 49)
1 - pnbinom(49-10, 10, 1/6)


# Task 23
# X = number of technical problems occurred
# X ~ Bi(n=360, p=1/90)

# P (X > 3) = 1 - P (X <= 3)
1 - pbinom(3, 360, 1/90)


# Task 24 !!!!


# Task 25
# X = number of hearts drawn
# X ~ Bi(n=10, p=1/4)

# P (X >= 2) = 1 - P (X <= 1)
1 - pbinom(1, 10, 1/4)


# Task 26
# X = tested people before finding a AB blood group
# X ~ Ge(7/100)
p <- 7/100

# P (X <= 10)
pgeom(10-1, p)

# Y = tested people before finding two people with AB blood group
# Y ~ NB(r=2, p=7/100)

# P (Y <= 50)
pnbinom(50-2, 2, p)

# Lets check the task with simulations
# A)
sim.bloodgiver <- function(){
  for (i in 1:10){
    x <- sample(c(1:100), 1)
    if (x <= 7){
      return (TRUE)
    }
  }
  return (FALSE)
}

res <- replicate(100000, sim.bloodgiver())
sum(res) / length(res)

# B)
sim.bloodgiver2 <- function(){
  found <- 0
  for (i in 1:50){
    x <- sample(c(1:100), 1)
    if (x <= 7){
      found <- found + 1
    }
    if (found >= 2){
      return (TRUE)
    }
  }
  return (FALSE)
}

res <- replicate(100000, sim.bloodgiver2())
sum(res) / length(res)