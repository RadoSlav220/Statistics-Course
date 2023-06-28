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


