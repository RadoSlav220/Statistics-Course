# Test 1

dt <- read.table("Data\\data.txt")
brows <- dt$V1
brows
sort (table(brows)/length(brows))
sort (table(brows)/length(brows), decreasing=T)

barplot(table(brows))
pie (table(brows))

# Test 2
wait <- c(2,3,3,5,5,2,7,10,4,3,1,7,11,10,5,6,3,8,5,12,5,3,8,5,7)
table(wait)

wait.grouped <- cut(wait, breaks = seq(0, 12, 2))
table(wait.grouped)
barplot(table(wait.grouped))

hist(wait)
hist(wait, breaks = seq(0, max(wait), 3), probability = T)

stem(wait)


# Task 41
# a)
dt <- table(Smoke)
100 * dt["Never"]/length(Smoke)

# b)
dt2 <- table(Smoke, Exer, useNA="ifany")
dt2["Never", "Freq"]
dt2

# c)
100 * dt2["Never", "Freq"] / length(Smoke)
100 * prop.table(dt2)["Never", "Freq"]

# d)
non.smokers <- table(Smoke)["Never"]
100 * dt2["Never", "Freq"]/non.smokers

# Таблица, в която сумата на всеки ред е 100%:
100*prop.table( dt2, margin=1 )
# Margin - Choose dimension to sum up to 100%
100*prop.table( dt2, margin=1 )["Never", "Freq"]

# e)
100 * prop.table(dt2, margin=2)
100 * prop.table(dt2, margin=2)["Never", "Freq"]


