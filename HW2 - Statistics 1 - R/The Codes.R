rm(list = ls())

# Q1
# Section 1

b <- as.integer(readline(prompt = "integer you choose:"))

tor <- 1
a <- 1

while(a <= b) {
  tor <- tor * a
  a <- a + 1
}

cat(b, "factorial", "is", tor)

# Section 2

b <- as.integer(readline(prompt = " integer you choose: "))

tor <- 1

for(a in 1:b) {
  tor <- tor * a
}

cat(b, "factorial", "is", tor)

# Q2

winsorized_mean <- function(a, b)
{
  
  n <- length(a)
  
  if (b >= 0 && b <= n) {
    
    sorted_a <- sort(a)
    lower_limit <- b + 1
    upper_limit <- n - b
    
    winsorized_a <- c(rep(sorted_a[lower_limit], b), sorted_a[lower_limit:upper_limit], rep(sorted_a[upper_limit], b))
    
    return(mean(winsorized_a))
  }
  
  else {
    return("b must be between 0 and length of a")
  }
}

# Q3

calculate_permutation <- function(a, b) 
{
  if (a >= b) {
    return(factorial(a) / factorial(a - b))
  } 
  
  else {
    return(" b cannot be greater than a ")
  }
}

# Q4

# parameters

c <- 8000 # tests
p <- 0.05 # POS
k <- 399  # largest number of successes

# binomial CDF
probability <- pbinom(k, c, p, lower.tail = TRUE) - dbinom(k, c, p)

cat(" less than 400 products are defective is", probability)

# Q5

deaths <- c(2, 3, 3, 2, 2, 1, 1, 4)

# poisson parameter
lambda <- mean(deaths)

# Poisson CDF
probability_1 <- 1 - ppois(3, lambda)

cat(" 4 or more deaths due the sickness in a year is", probability_1)

# Q6

# poisson parameter
lambda <- 6 * 3 / 5  # expected number of calls in a 3-minute period

# Poisson PMF
probability_2 <- dpois(0, lambda)

cat(" at least 3 minutes without a call is", probability_2)

# Q7
# Section 1

# parameters
expect <- 192.9   
sigma <- 7.1 
X <- 200      

# Standardizing
z <- (X - expect) / sigma

# normal CDF
probability_3 <- pnorm(z)

cat(" income of a person from kenya be less than $200 is", round(probability_3, 3))

# Section 1_ Part 2
answer = 1 - round(probability_3, 3)
print(answer)

# Section 2

# parameters
expect <- 192.9   
sigma <- 7.1  
p <- 0.9      

# normal inverse CDF
z <- qnorm(p, mean = expect, sd = sigma)

income <- expect + (z * sigma)

cat(" considered income at the 90th percentile is $", round(income, 0))

# Section 3

# parameters
expect <- 192.9   
sigma <- 7.1  
n <- 500      

incomes <- rnorm(n, mean = expect, sd = sigma)
par( bg = " coral ")
hist(incomes, breaks = 20, col = " bisque ", main = " result of the simulation ",
     xlab = " Income ", ylab = " Frequency ")


# Q8
# Section 1

# parameters
n <- 5       
p <- 19/30   

probability_0_women <- dbinom(0, n, p)
probability_1_woman <- dbinom(1, n, p)
probability_2_women <- dbinom(2, n, p)
probability_3_women <- dbinom(3, n, p)

probability_max_3_women <- probability_0_women + probability_1_woman + probability_2_women + probability_3_women

cat(" selecting a group with a maximum of 3 women is", round(probability_max_3_women, 2))

# Section 2

answer = 1 - round(probability_max_3_women, 2)
print(answer)

