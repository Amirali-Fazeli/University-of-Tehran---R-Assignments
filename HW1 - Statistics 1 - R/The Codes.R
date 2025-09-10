rm(list = ls())

# Q1
A = seq(-10,10, by = 2)
print(A)

# Q2 
# Section 1
t = rnorm(100)

# Section 2
hist(t)

# Section 3
sample(t,10)

# Q3
Y = matrix(1:5, nrow = 3, ncol = 5, byrow = FALSE)
Y[3,1] = 2
Y[1,2] = 3
Y[2,2] = 3
Y[3,2] = 3
Y[1,3] = 4
Y[2,3] = 4
Y[3,3] = 4
Y[1,4] = 4
Y[2,4] = 5
Y[3,4] = 5
Y[1,5] = 5
Y[2,5] = 5
Y[3,5] = 5
print(Y)

# Q4
L = c(NA,4,3,NA,1)
replace_number = 2
L[is.na(L)] <- replace_number
print(L)

# Q5
H = c(0,9,3,8,1,2,5,3,11)

# Section 1
H[c(2,5)]

# Section 2
H[ H > 5]

# Section 3
H[ H > 2 & H < 5]

# Section 4
H[3:7]

# Section 5
H_1 = H[ H %% 2 != 0]
H_1[4] = NA
H_1[5] = NA
print(H_1)

#Q6
p = c(1,4,6,8,12)
q = c(-2,-3,4,10,14)

p[q > 0]

# Q7
m = seq(0,100, length = 1000)
n = sqrt(var(m))

# Q8
z = matrix(0, nrow = 30, ncol = 30, byrow = FALSE)

# Section 1
for (i in 1:30) {
  for (j in 1:30) {
    z [i, j] <- i * j
  }
}
print(z)

# Section 2
z[ 1:10, 1:10]

# Q9
# Section 1
O = c(50,25,15,10)
names(O) <- LETTERS[20:23]
pie(O, col = 50:54)

# Section 2
E = c(7,12,3.5,4,8)
names(E) <- c("Day_1","Day_2","Day_3","Day_4","Day_5")
barplot(E, col = 10:14)

# Section 3
par(bg = " yellow ")
dotchart(E, pch = 9, col = 72:76)

# Section 4
data("mtcars")
par(bg = " coral2 ")
boxplot( mpg ~ cyl, data = mtcars,
         main = " miles per gallon by number of cylinders",
         xlab = "number of cylinders",
         ylab = "miles per gallon")

