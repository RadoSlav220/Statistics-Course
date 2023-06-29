# Task 27
u <- runif(500, 2, 3)
hist(u, probability=T)
curve( dunif(x, 2, 3), from=2, to=3, add=T, lwd=3, col="green" )

# curve (<function>, from=<startX>, to=<endX>, ?add=<T/F>, lwd=<lineWidth>, <color*>)


# Task 28
ex <- rexp(500, 1/7)
hist(ex, probability=T)
curve(dexp(x, 1/7), from=0, to=max(ex), add=T, lwd=2)


# Task 29
nor <- rnorm(500, 0, 1)
hist(nor, probability=T)
curve(dnorm(x, 0, 1), from=min(nor), to=max(nor), add=T, lwd=3)


# Task 30
# X = quantity dusch gel 
# X ~ U(248, 255)
# uniform

# P (X < 250) = P (X <= 250)
punif(250, 248, 255)

# v=? P(X > v) = 0.95
# v=? P(X <= v) = 0.05
qunif(0.05, 248, 255)


# Task 31
# X = lifespan 
# X ~ Exp(1/10)
curve(dexp(x, 1/10), from = 0, to=100)

# P (X > 10) = 1 - P (X <= 10)
1 - pexp(10, 1/10)

# P (7 <= X <= 11) = P (X <= 11) - P (X <= 7)
pexp(11, 1/10) - pexp(7, 1/10)

# t=? P(X >= t) = 0.97
# t=? P(X <= t) = 0.03
t <- qexp(0.03, 1/10)
t
pexp(t, 1/10)


# Task 33

# X = liquid volume
# X ~ N(252, 3)

# A = P (X > 250)
# B

# Simulations
simNormA <- rnorm(1000000, 252, 3)
length(which(simNormA > 250)) / length(simNormA)

sim.pour <- function(){
  simNormA <- rnorm(5, 252, 3)
  length(which(simNormA > 250)) <= 2  
}

res <- replicate(100000, sim.pour())
sum(res) / length(res)

# Built-in functions
# P (A) = P (X > 250) = 1 - P (X <= 250)
p <- 1 - pnorm(250, 252, 3)
p

# Y = pourings with > 250 ml from total of 5 pourings
# Y ~ Bi(5, p)
# P (B) = P (Y <= 2)
pbinom(2, 5, p)


# Task 34

n <- 10^8
x <- runif(n, -1, 1)
y <- runif(n, -1, 1)
4*sum(x^2 + y^2 < 1)/n


# Task 36
# X = working time 
# X ~ N(260, 50)

# P (X > 240) = 1 - P (X  <= 240)
1 - pnorm(240, 260, 50)

# P (180 <= X <= 300) = P (X <= 300) - P (X <= 180)
pnorm(300, 260, 50) - pnorm(180, 260, 50)

# t=?  P (X >= t) = 0.9
# t=?  P (X <= t) = 0.1
qnorm(0.1, 260, 50)



